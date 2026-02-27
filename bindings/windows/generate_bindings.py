import re

INPUT = "zig-out/ui.zig"
OUTPUT = "raw_bindings.mojo"

def zig_type_to_mojo(t):
    """Convert Zig types to Mojo types"""
    t = t.strip()
    
    # Remove leading/trailing whitespace
    t = t.strip()
    
    # Handle C pointers [*c]T or [*c]const T
    if t.startswith("[*c]"):
        inner = t[4:].strip()
        if inner.startswith("const "):
            inner = inner[6:].strip()
        return f"Pointer[{zig_type_to_mojo(inner)}]"
    
    # Handle Sentinel pointers [*:0]...
    if t.startswith("[*:0]"):
        inner = t[5:].strip()
        if inner.startswith("const "):
            inner = inner[6:].strip()
        return f"Pointer[{zig_type_to_mojo(inner)}]"
    
    # Handle Optionals ?T or ?*T
    if t.startswith("?"):
        t = t[1:].strip()
    
    # Handle standard pointers *T
    if t.startswith("*"):
        inner = t[1:].strip()
        if inner.startswith("const "):
            inner = inner[6:].strip()
        if "fn" in inner or "anyopaque" in inner:
            return "Pointer[Any]"
        return f"Pointer[{zig_type_to_mojo(inner)}]"
    
    # Handle optional pointers ?*T
    if t.startswith("?*"):
        inner = t[2:].strip()
        if inner.startswith("const "):
            inner = inner[6:].strip()
        if "fn" in inner or "anyopaque" in inner:
            return "Pointer[Any]"
        return f"Pointer[{zig_type_to_mojo(inner)}]"
    
    # Basic Type Mapping
    mapping = {
        "c_int": "Int32", "c_uint": "UInt32",
        "c_long": "Int64", "c_ulong": "UInt64",
        "c_longlong": "Int64", "c_ulonglong": "UInt64",
        "c_short": "Int16", "c_ushort": "UInt16",
        "usize": "UInt64", "isize": "Int64",
        "void": "None", "u8": "UInt8", "i8": "Int8",
        "u32": "UInt32", "i32": "Int32",
        "u64": "UInt64", "i64": "Int64",
        "bool": "Bool", "f32": "Float32", "f64": "Float64",
        "anyopaque": "Any",
        # libui specific
        "uiInitOptions": "uiInitOptions",
        "uiControl": "uiControl",
        "uiWindow": "uiWindow",
        "uiButton": "uiButton",
        "uiBox": "uiBox",
        "uiCheckbox": "uiCheckbox",
        "uiEntry": "uiEntry",
        "uiLabel": "uiLabel",
        "uiTab": "uiTab",
        "uiGroup": "uiGroup",
        "uiSpinbox": "uiSpinbox",
        "uiSlider": "uiSlider",
        "uiProgressBar": "uiProgressBar",
        "uiSeparator": "uiSeparator",
        "uiCombobox": "uiCombobox",
        "uiEditableCombobox": "uiEditableCombobox",
        "uiRadioButtons": "uiRadioButtons",
        "uiDateTimePicker": "uiDateTimePicker",
        "uiMultilineEntry": "uiMultilineEntry",
        "uiMenuItem": "uiMenuItem",
        "uiMenu": "uiMenu",
        "uiArea": "uiArea",
        "uiDrawContext": "uiDrawContext",
        "uiDrawPath": "uiDrawPath",
        "uiDrawBrush": "uiDrawBrush",
        "uiDrawMatrix": "uiDrawMatrix",
        "uiAttribute": "uiAttribute",
        "uiOpenTypeFeatures": "uiOpenTypeFeatures",
        "uiAttributedString": "uiAttributedString",
        "uiFontDescriptor": "uiFontDescriptor",
        "uiDrawTextLayout": "uiDrawTextLayout",
        "uiFontButton": "uiFontButton",
        "uiColorButton": "uiColorButton",
        "uiForm": "uiForm",
        "uiGrid": "uiGrid",
        "uiImage": "uiImage",
        "uiTableValue": "uiTableValue",
        "uiTableModel": "uiTableModel",
        "uiTable": "uiTable",
        "uiTableSelection": "uiTableSelection",
        "uiAreaHandler": "uiAreaHandler",
        "uiAreaDrawParams": "uiAreaDrawParams",
        "uiAreaMouseEvent": "uiAreaMouseEvent",
        "uiAreaKeyEvent": "uiAreaKeyEvent",
        "uiDrawBrushGradientStop": "uiDrawBrushGradientStop",
        "uiDrawStrokeParams": "uiDrawStrokeParams",
        "uiDrawTextLayoutParams": "uiDrawTextLayoutParams",
        "uiTableModelHandler": "uiTableModelHandler",
        "uiTableTextColumnOptionalParams": "uiTableTextColumnOptionalParams",
        "uiTableParams": "uiTableParams",
        "struct_tm": "struct_tm",
    }
    
    return mapping.get(t, t)


def parse_structs(lines):
    """Parse struct definitions from Zig file"""
    structs = []
    
    for line in lines:
        line = line.strip()
        
        # Skip comments and empty lines
        if not line or line.startswith("//") or line.startswith("const enum"):
            continue
        
        # Match opaque structs: pub const struct_name = opaque {
        if "opaque" in line and "pub const" in line:
            m = re.search(r'pub const (struct_\w+|\w+)\s*=', line)
            if m:
                name = m.group(1)
                # Prefer the clean name (without struct_ prefix)
                if name.startswith("struct_"):
                    alias = name.replace("struct_", "", 1)
                    if alias not in structs and not alias.startswith("_"):
                        structs.append(alias)
                elif not name.startswith("_") and not name.startswith("__"):
                    structs.append(name)
        
        # Match extern structs: pub const struct_name = extern struct {
        elif "extern struct" in line and "pub const" in line:
            m = re.search(r'pub const (struct_\w+|\w+)\s*=', line)
            if m:
                name = m.group(1)
                if name.startswith("struct_"):
                    alias = name.replace("struct_", "", 1)
                    if alias not in structs and not alias.startswith("_"):
                        structs.append(alias)
                elif not name.startswith("_") and not name.startswith("__"):
                    structs.append(name)
    
    return structs


def parse_functions(lines):
    """Parse extern function definitions from Zig file"""
    funcs = []
    seen = set()
    
    for line in lines:
        line = line.strip()
        
        # Skip comments and empty lines
        if not line or line.startswith("//"):
            continue
        
        # Match pub extern fn
        if line.startswith("pub extern fn"):
            # Remove trailing semicolon
            line = line.rstrip(";").rstrip()
            
            # Extract function name and parameters
            m = re.match(r'pub extern fn (\w+)\((.*)\)\s*(.*)', line)
            if m:
                name = m.group(1)
                
                # Skip internal/builtin functions
                if name.startswith("__") or name.startswith("_UI") or name in seen:
                    continue
                
                seen.add(name)
                
                params_raw = m.group(2)
                ret_raw = m.group(3).strip()
                
                # Parse parameters
                mojo_params = []
                if params_raw.strip():
                    # Split by comma, but be careful about nested types
                    parts = []
                    depth = 0
                    current = ""
                    for char in params_raw:
                        if char in '([{':
                            depth += 1
                            current += char
                        elif char in ')]}':
                            depth -= 1
                            current += char
                        elif char == ',' and depth == 0:
                            parts.append(current.strip())
                            current = ""
                        else:
                            current += char
                    if current.strip():
                        parts.append(current.strip())
                    
                    for p in parts:
                        p = p.strip()
                        if not p:
                            continue
                        # Format: name: type or name: type = default
                        if ":" in p:
                            # Split on last colon to handle fn types with colons
                            idx = p.rfind(":")
                            pname = p[:idx].strip()
                            ptype = p[idx+1:].strip()
                            # Remove default values
                            if "=" in ptype:
                                ptype = ptype.split("=")[0].strip()
                            # Handle Zig keywords
                            if pname == "type":
                                pname = "type_arg"
                            if pname == "fn":
                                pname = "fn_arg"
                            mojo_params.append(f"{pname}: {zig_type_to_mojo(ptype)}")
                
                # Parse return type
                ret_clean = ret_raw.split("callconv")[0].strip()
                ret_clean = ret_clean.split("=")[0].strip()
                mojo_ret = zig_type_to_mojo(ret_clean) if ret_clean else "None"
                
                funcs.append((name, mojo_params, mojo_ret))
    
    return funcs


def main():
    with open(INPUT, "r", encoding="utf-8") as f:
        lines = f.readlines()
    
    # Don't normalize - process lines as-is
    structs = parse_structs(lines)
    funcs = parse_functions(lines)
    
    # Filter to only libui types (not system types)
    libui_structs = [s for s in structs if s.startswith("ui") or s in ["struct_tm"]]
    
    with open(OUTPUT, "w", encoding="utf-8") as out:
        out.write("from sys import ffi\n\n")
        
        # Write structs
        for s in sorted(list(set(libui_structs))):
            out.write("@ffi.extern\n")
            out.write(f"struct {s}:\n    pass\n\n")
        
        # Write functions
        for name, params, ret in funcs:
            out.write("@ffi.extern\n")
            param_str = ", ".join(params)
            out.write(f"fn {name}({param_str}) -> {ret}:\n    pass\n\n")
    
    print(f"Generated {OUTPUT} with {len(funcs)} functions and {len(libui_structs)} structs.")


if __name__ == "__main__":
    main()
