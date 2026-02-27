const __root = @This();
pub const __builtin = @import("std").zig.c_translation.builtins;
pub const __helpers = @import("std").zig.c_translation.helpers;

pub const ptrdiff_t = c_longlong;
pub const wchar_t = c_ushort;
pub const max_align_t = extern struct {
    __aro_max_align_ll: c_longlong = 0,
    __aro_max_align_ld: c_longdouble = 0,
};
pub const __builtin_va_list = [*c]u8;
pub const __gnuc_va_list = __builtin_va_list;
pub const va_list = __gnuc_va_list;
pub extern fn __mingw_get_crt_info() [*c]const u8;
pub const rsize_t = usize;
pub const wint_t = c_ushort;
pub const wctype_t = c_ushort;
pub const errno_t = c_int;
pub const __time32_t = c_long;
pub const __time64_t = c_longlong;
pub const time_t = __time64_t;
pub const struct_threadlocaleinfostruct = extern struct {
    _locale_pctype: [*c]const c_ushort = null,
    _locale_mb_cur_max: c_int = 0,
    _locale_lc_codepage: c_uint = 0,
};
pub const pthreadlocinfo = [*c]struct_threadlocaleinfostruct;
pub const struct_threadmbcinfostruct = opaque {};
pub const pthreadmbcinfo = ?*struct_threadmbcinfostruct;
pub const struct_localeinfo_struct = extern struct {
    locinfo: pthreadlocinfo = null,
    mbcinfo: pthreadmbcinfo = null,
};
pub const _locale_tstruct = struct_localeinfo_struct;
pub const _locale_t = [*c]struct_localeinfo_struct;
pub const struct_tagLC_ID = extern struct {
    wLanguage: c_ushort = 0,
    wCountry: c_ushort = 0,
    wCodePage: c_ushort = 0,
};
pub const LC_ID = struct_tagLC_ID;
pub const LPLC_ID = [*c]struct_tagLC_ID;
pub const threadlocinfo = struct_threadlocaleinfostruct;
pub const int_least8_t = i8;
pub const uint_least8_t = u8;
pub const int_least16_t = c_short;
pub const uint_least16_t = c_ushort;
pub const int_least32_t = c_int;
pub const uint_least32_t = c_uint;
pub const int_least64_t = c_longlong;
pub const uint_least64_t = c_ulonglong;
pub const int_fast8_t = i8;
pub const uint_fast8_t = u8;
pub const int_fast16_t = c_short;
pub const uint_fast16_t = c_ushort;
pub const int_fast32_t = c_int;
pub const uint_fast32_t = c_uint;
pub const int_fast64_t = c_longlong;
pub const uint_fast64_t = c_ulonglong;
pub const intmax_t = c_longlong;
pub const uintmax_t = c_ulonglong;
pub const uiForEach = c_uint;
pub const uiForEachContinue: c_int = 0;
pub const uiForEachStop: c_int = 1;
const enum_unnamed_1 = c_uint;
pub const struct_uiInitOptions = extern struct {
    Size: usize = 0,
    pub const uiInit = __root.uiInit;
};
pub const uiInitOptions = struct_uiInitOptions;
pub extern fn uiInit(options: [*c]uiInitOptions) [*c]const u8;
pub extern fn uiUninit() void;
pub extern fn uiFreeInitError(err: [*c]const u8) void;
pub extern fn uiMain() void;
pub extern fn uiMainSteps() void;
pub extern fn uiMainStep(wait: c_int) c_int;
pub extern fn uiQuit() void;
pub extern fn uiQueueMain(f: ?*const fn (data: ?*anyopaque) callconv(.c) void, data: ?*anyopaque) void;
pub extern fn uiTimer(milliseconds: c_int, f: ?*const fn (data: ?*anyopaque) callconv(.c) c_int, data: ?*anyopaque) void;
pub extern fn uiOnShouldQuit(f: ?*const fn (data: ?*anyopaque) callconv(.c) c_int, data: ?*anyopaque) void;
pub extern fn uiFreeText(text: [*c]u8) void;
pub const struct_uiControl = extern struct {
    Signature: u32 = 0,
    OSSignature: u32 = 0,
    TypeSignature: u32 = 0,
    Destroy: ?*const fn ([*c]uiControl) callconv(.c) void = null,
    Handle: ?*const fn ([*c]uiControl) callconv(.c) usize = null,
    Parent: ?*const fn ([*c]uiControl) callconv(.c) [*c]uiControl = null,
    SetParent: ?*const fn ([*c]uiControl, [*c]uiControl) callconv(.c) void = null,
    Toplevel: ?*const fn ([*c]uiControl) callconv(.c) c_int = null,
    Visible: ?*const fn ([*c]uiControl) callconv(.c) c_int = null,
    Show: ?*const fn ([*c]uiControl) callconv(.c) void = null,
    Hide: ?*const fn ([*c]uiControl) callconv(.c) void = null,
    Enabled: ?*const fn ([*c]uiControl) callconv(.c) c_int = null,
    Enable: ?*const fn ([*c]uiControl) callconv(.c) void = null,
    Disable: ?*const fn ([*c]uiControl) callconv(.c) void = null,
    pub const uiControlDestroy = __root.uiControlDestroy;
    pub const uiControlHandle = __root.uiControlHandle;
    pub const uiControlParent = __root.uiControlParent;
    pub const uiControlSetParent = __root.uiControlSetParent;
    pub const uiControlToplevel = __root.uiControlToplevel;
    pub const uiControlVisible = __root.uiControlVisible;
    pub const uiControlShow = __root.uiControlShow;
    pub const uiControlHide = __root.uiControlHide;
    pub const uiControlEnabled = __root.uiControlEnabled;
    pub const uiControlEnable = __root.uiControlEnable;
    pub const uiControlDisable = __root.uiControlDisable;
    pub const uiFreeControl = __root.uiFreeControl;
    pub const uiControlVerifySetParent = __root.uiControlVerifySetParent;
    pub const uiControlEnabledToUser = __root.uiControlEnabledToUser;
};
pub const uiControl = struct_uiControl;
pub extern fn uiControlDestroy(c: [*c]uiControl) void;
pub extern fn uiControlHandle(c: [*c]uiControl) usize;
pub extern fn uiControlParent(c: [*c]uiControl) [*c]uiControl;
pub extern fn uiControlSetParent(c: [*c]uiControl, parent: [*c]uiControl) void;
pub extern fn uiControlToplevel(c: [*c]uiControl) c_int;
pub extern fn uiControlVisible(c: [*c]uiControl) c_int;
pub extern fn uiControlShow(c: [*c]uiControl) void;
pub extern fn uiControlHide(c: [*c]uiControl) void;
pub extern fn uiControlEnabled(c: [*c]uiControl) c_int;
pub extern fn uiControlEnable(c: [*c]uiControl) void;
pub extern fn uiControlDisable(c: [*c]uiControl) void;
pub extern fn uiAllocControl(n: usize, OSsig: u32, typesig: u32, typenamestr: [*c]const u8) [*c]uiControl;
pub extern fn uiFreeControl(c: [*c]uiControl) void;
pub extern fn uiControlVerifySetParent(c: [*c]uiControl, parent: [*c]uiControl) void;
pub extern fn uiControlEnabledToUser(c: [*c]uiControl) c_int;
pub extern fn uiUserBugCannotSetParentOnToplevel(@"type": [*c]const u8) void;
pub const struct_uiWindow = opaque {
    pub const uiWindowTitle = __root.uiWindowTitle;
    pub const uiWindowSetTitle = __root.uiWindowSetTitle;
    pub const uiWindowPosition = __root.uiWindowPosition;
    pub const uiWindowSetPosition = __root.uiWindowSetPosition;
    pub const uiWindowOnPositionChanged = __root.uiWindowOnPositionChanged;
    pub const uiWindowContentSize = __root.uiWindowContentSize;
    pub const uiWindowSetContentSize = __root.uiWindowSetContentSize;
    pub const uiWindowFullscreen = __root.uiWindowFullscreen;
    pub const uiWindowSetFullscreen = __root.uiWindowSetFullscreen;
    pub const uiWindowOnContentSizeChanged = __root.uiWindowOnContentSizeChanged;
    pub const uiWindowOnClosing = __root.uiWindowOnClosing;
    pub const uiWindowOnFocusChanged = __root.uiWindowOnFocusChanged;
    pub const uiWindowFocused = __root.uiWindowFocused;
    pub const uiWindowBorderless = __root.uiWindowBorderless;
    pub const uiWindowSetBorderless = __root.uiWindowSetBorderless;
    pub const uiWindowSetChild = __root.uiWindowSetChild;
    pub const uiWindowMargined = __root.uiWindowMargined;
    pub const uiWindowSetMargined = __root.uiWindowSetMargined;
    pub const uiWindowResizeable = __root.uiWindowResizeable;
    pub const uiWindowSetResizeable = __root.uiWindowSetResizeable;
    pub const uiOpenFile = __root.uiOpenFile;
    pub const uiOpenFolder = __root.uiOpenFolder;
    pub const uiSaveFile = __root.uiSaveFile;
    pub const uiMsgBox = __root.uiMsgBox;
    pub const uiMsgBoxError = __root.uiMsgBoxError;
};
pub const uiWindow = struct_uiWindow;
pub extern fn uiWindowTitle(w: ?*uiWindow) [*c]u8;
pub extern fn uiWindowSetTitle(w: ?*uiWindow, title: [*c]const u8) void;
pub extern fn uiWindowPosition(w: ?*uiWindow, x: [*c]c_int, y: [*c]c_int) void;
pub extern fn uiWindowSetPosition(w: ?*uiWindow, x: c_int, y: c_int) void;
pub extern fn uiWindowOnPositionChanged(w: ?*uiWindow, f: ?*const fn (sender: ?*uiWindow, senderData: ?*anyopaque) callconv(.c) void, data: ?*anyopaque) void;
pub extern fn uiWindowContentSize(w: ?*uiWindow, width: [*c]c_int, height: [*c]c_int) void;
pub extern fn uiWindowSetContentSize(w: ?*uiWindow, width: c_int, height: c_int) void;
pub extern fn uiWindowFullscreen(w: ?*uiWindow) c_int;
pub extern fn uiWindowSetFullscreen(w: ?*uiWindow, fullscreen: c_int) void;
pub extern fn uiWindowOnContentSizeChanged(w: ?*uiWindow, f: ?*const fn (sender: ?*uiWindow, senderData: ?*anyopaque) callconv(.c) void, data: ?*anyopaque) void;
pub extern fn uiWindowOnClosing(w: ?*uiWindow, f: ?*const fn (sender: ?*uiWindow, senderData: ?*anyopaque) callconv(.c) c_int, data: ?*anyopaque) void;
pub extern fn uiWindowOnFocusChanged(w: ?*uiWindow, f: ?*const fn (sender: ?*uiWindow, senderData: ?*anyopaque) callconv(.c) void, data: ?*anyopaque) void;
pub extern fn uiWindowFocused(w: ?*uiWindow) c_int;
pub extern fn uiWindowBorderless(w: ?*uiWindow) c_int;
pub extern fn uiWindowSetBorderless(w: ?*uiWindow, borderless: c_int) void;
pub extern fn uiWindowSetChild(w: ?*uiWindow, child: [*c]uiControl) void;
pub extern fn uiWindowMargined(w: ?*uiWindow) c_int;
pub extern fn uiWindowSetMargined(w: ?*uiWindow, margined: c_int) void;
pub extern fn uiWindowResizeable(w: ?*uiWindow) c_int;
pub extern fn uiWindowSetResizeable(w: ?*uiWindow, resizeable: c_int) void;
pub extern fn uiNewWindow(title: [*c]const u8, width: c_int, height: c_int, hasMenubar: c_int) ?*uiWindow;
pub const struct_uiButton = opaque {
    pub const uiButtonText = __root.uiButtonText;
    pub const uiButtonSetText = __root.uiButtonSetText;
    pub const uiButtonOnClicked = __root.uiButtonOnClicked;
};
pub const uiButton = struct_uiButton;
pub extern fn uiButtonText(b: ?*uiButton) [*c]u8;
pub extern fn uiButtonSetText(b: ?*uiButton, text: [*c]const u8) void;
pub extern fn uiButtonOnClicked(b: ?*uiButton, f: ?*const fn (sender: ?*uiButton, senderData: ?*anyopaque) callconv(.c) void, data: ?*anyopaque) void;
pub extern fn uiNewButton(text: [*c]const u8) ?*uiButton;
pub const struct_uiBox = opaque {
    pub const uiBoxAppend = __root.uiBoxAppend;
    pub const uiBoxNumChildren = __root.uiBoxNumChildren;
    pub const uiBoxDelete = __root.uiBoxDelete;
    pub const uiBoxPadded = __root.uiBoxPadded;
    pub const uiBoxSetPadded = __root.uiBoxSetPadded;
};
pub const uiBox = struct_uiBox;
pub extern fn uiBoxAppend(b: ?*uiBox, child: [*c]uiControl, stretchy: c_int) void;
pub extern fn uiBoxNumChildren(b: ?*uiBox) c_int;
pub extern fn uiBoxDelete(b: ?*uiBox, index: c_int) void;
pub extern fn uiBoxPadded(b: ?*uiBox) c_int;
pub extern fn uiBoxSetPadded(b: ?*uiBox, padded: c_int) void;
pub extern fn uiNewHorizontalBox() ?*uiBox;
pub extern fn uiNewVerticalBox() ?*uiBox;
pub const struct_uiCheckbox = opaque {
    pub const uiCheckboxText = __root.uiCheckboxText;
    pub const uiCheckboxSetText = __root.uiCheckboxSetText;
    pub const uiCheckboxOnToggled = __root.uiCheckboxOnToggled;
    pub const uiCheckboxChecked = __root.uiCheckboxChecked;
    pub const uiCheckboxSetChecked = __root.uiCheckboxSetChecked;
};
pub const uiCheckbox = struct_uiCheckbox;
pub extern fn uiCheckboxText(c: ?*uiCheckbox) [*c]u8;
pub extern fn uiCheckboxSetText(c: ?*uiCheckbox, text: [*c]const u8) void;
pub extern fn uiCheckboxOnToggled(c: ?*uiCheckbox, f: ?*const fn (sender: ?*uiCheckbox, senderData: ?*anyopaque) callconv(.c) void, data: ?*anyopaque) void;
pub extern fn uiCheckboxChecked(c: ?*uiCheckbox) c_int;
pub extern fn uiCheckboxSetChecked(c: ?*uiCheckbox, checked: c_int) void;
pub extern fn uiNewCheckbox(text: [*c]const u8) ?*uiCheckbox;
pub const struct_uiEntry = opaque {
    pub const uiEntryText = __root.uiEntryText;
    pub const uiEntrySetText = __root.uiEntrySetText;
    pub const uiEntryOnChanged = __root.uiEntryOnChanged;
    pub const uiEntryReadOnly = __root.uiEntryReadOnly;
    pub const uiEntrySetReadOnly = __root.uiEntrySetReadOnly;
};
pub const uiEntry = struct_uiEntry;
pub extern fn uiEntryText(e: ?*uiEntry) [*c]u8;
pub extern fn uiEntrySetText(e: ?*uiEntry, text: [*c]const u8) void;
pub extern fn uiEntryOnChanged(e: ?*uiEntry, f: ?*const fn (sender: ?*uiEntry, senderData: ?*anyopaque) callconv(.c) void, data: ?*anyopaque) void;
pub extern fn uiEntryReadOnly(e: ?*uiEntry) c_int;
pub extern fn uiEntrySetReadOnly(e: ?*uiEntry, readonly: c_int) void;
pub extern fn uiNewEntry() ?*uiEntry;
pub extern fn uiNewPasswordEntry() ?*uiEntry;
pub extern fn uiNewSearchEntry() ?*uiEntry;
pub const struct_uiLabel = opaque {
    pub const uiLabelText = __root.uiLabelText;
    pub const uiLabelSetText = __root.uiLabelSetText;
};
pub const uiLabel = struct_uiLabel;
pub extern fn uiLabelText(l: ?*uiLabel) [*c]u8;
pub extern fn uiLabelSetText(l: ?*uiLabel, text: [*c]const u8) void;
pub extern fn uiNewLabel(text: [*c]const u8) ?*uiLabel;
pub const struct_uiTab = opaque {
    pub const uiTabSelected = __root.uiTabSelected;
    pub const uiTabSetSelected = __root.uiTabSetSelected;
    pub const uiTabOnSelected = __root.uiTabOnSelected;
    pub const uiTabAppend = __root.uiTabAppend;
    pub const uiTabInsertAt = __root.uiTabInsertAt;
    pub const uiTabDelete = __root.uiTabDelete;
    pub const uiTabNumPages = __root.uiTabNumPages;
    pub const uiTabMargined = __root.uiTabMargined;
    pub const uiTabSetMargined = __root.uiTabSetMargined;
};
pub const uiTab = struct_uiTab;
pub extern fn uiTabSelected(t: ?*uiTab) c_int;
pub extern fn uiTabSetSelected(t: ?*uiTab, index: c_int) void;
pub extern fn uiTabOnSelected(t: ?*uiTab, f: ?*const fn (sender: ?*uiTab, senderData: ?*anyopaque) callconv(.c) void, data: ?*anyopaque) void;
pub extern fn uiTabAppend(t: ?*uiTab, name: [*c]const u8, c: [*c]uiControl) void;
pub extern fn uiTabInsertAt(t: ?*uiTab, name: [*c]const u8, index: c_int, c: [*c]uiControl) void;
pub extern fn uiTabDelete(t: ?*uiTab, index: c_int) void;
pub extern fn uiTabNumPages(t: ?*uiTab) c_int;
pub extern fn uiTabMargined(t: ?*uiTab, index: c_int) c_int;
pub extern fn uiTabSetMargined(t: ?*uiTab, index: c_int, margined: c_int) void;
pub extern fn uiNewTab() ?*uiTab;
pub const struct_uiGroup = opaque {
    pub const uiGroupTitle = __root.uiGroupTitle;
    pub const uiGroupSetTitle = __root.uiGroupSetTitle;
    pub const uiGroupSetChild = __root.uiGroupSetChild;
    pub const uiGroupMargined = __root.uiGroupMargined;
    pub const uiGroupSetMargined = __root.uiGroupSetMargined;
};
pub const uiGroup = struct_uiGroup;
pub extern fn uiGroupTitle(g: ?*uiGroup) [*c]u8;
pub extern fn uiGroupSetTitle(g: ?*uiGroup, title: [*c]const u8) void;
pub extern fn uiGroupSetChild(g: ?*uiGroup, c: [*c]uiControl) void;
pub extern fn uiGroupMargined(g: ?*uiGroup) c_int;
pub extern fn uiGroupSetMargined(g: ?*uiGroup, margined: c_int) void;
pub extern fn uiNewGroup(title: [*c]const u8) ?*uiGroup;
pub const struct_uiSpinbox = opaque {
    pub const uiSpinboxValue = __root.uiSpinboxValue;
    pub const uiSpinboxSetValue = __root.uiSpinboxSetValue;
    pub const uiSpinboxOnChanged = __root.uiSpinboxOnChanged;
};
pub const uiSpinbox = struct_uiSpinbox;
pub extern fn uiSpinboxValue(s: ?*uiSpinbox) c_int;
pub extern fn uiSpinboxSetValue(s: ?*uiSpinbox, value: c_int) void;
pub extern fn uiSpinboxOnChanged(s: ?*uiSpinbox, f: ?*const fn (sender: ?*uiSpinbox, senderData: ?*anyopaque) callconv(.c) void, data: ?*anyopaque) void;
pub extern fn uiNewSpinbox(min: c_int, max: c_int) ?*uiSpinbox;
pub const struct_uiSlider = opaque {
    pub const uiSliderValue = __root.uiSliderValue;
    pub const uiSliderSetValue = __root.uiSliderSetValue;
    pub const uiSliderHasToolTip = __root.uiSliderHasToolTip;
    pub const uiSliderSetHasToolTip = __root.uiSliderSetHasToolTip;
    pub const uiSliderOnChanged = __root.uiSliderOnChanged;
    pub const uiSliderOnReleased = __root.uiSliderOnReleased;
    pub const uiSliderSetRange = __root.uiSliderSetRange;
};
pub const uiSlider = struct_uiSlider;
pub extern fn uiSliderValue(s: ?*uiSlider) c_int;
pub extern fn uiSliderSetValue(s: ?*uiSlider, value: c_int) void;
pub extern fn uiSliderHasToolTip(s: ?*uiSlider) c_int;
pub extern fn uiSliderSetHasToolTip(s: ?*uiSlider, hasToolTip: c_int) void;
pub extern fn uiSliderOnChanged(s: ?*uiSlider, f: ?*const fn (sender: ?*uiSlider, senderData: ?*anyopaque) callconv(.c) void, data: ?*anyopaque) void;
pub extern fn uiSliderOnReleased(s: ?*uiSlider, f: ?*const fn (sender: ?*uiSlider, senderData: ?*anyopaque) callconv(.c) void, data: ?*anyopaque) void;
pub extern fn uiSliderSetRange(s: ?*uiSlider, min: c_int, max: c_int) void;
pub extern fn uiNewSlider(min: c_int, max: c_int) ?*uiSlider;
pub const struct_uiProgressBar = opaque {
    pub const uiProgressBarValue = __root.uiProgressBarValue;
    pub const uiProgressBarSetValue = __root.uiProgressBarSetValue;
};
pub const uiProgressBar = struct_uiProgressBar;
pub extern fn uiProgressBarValue(p: ?*uiProgressBar) c_int;
pub extern fn uiProgressBarSetValue(p: ?*uiProgressBar, n: c_int) void;
pub extern fn uiNewProgressBar() ?*uiProgressBar;
pub const struct_uiSeparator = opaque {};
pub const uiSeparator = struct_uiSeparator;
pub extern fn uiNewHorizontalSeparator() ?*uiSeparator;
pub extern fn uiNewVerticalSeparator() ?*uiSeparator;
pub const struct_uiCombobox = opaque {
    pub const uiComboboxAppend = __root.uiComboboxAppend;
    pub const uiComboboxInsertAt = __root.uiComboboxInsertAt;
    pub const uiComboboxDelete = __root.uiComboboxDelete;
    pub const uiComboboxClear = __root.uiComboboxClear;
    pub const uiComboboxNumItems = __root.uiComboboxNumItems;
    pub const uiComboboxSelected = __root.uiComboboxSelected;
    pub const uiComboboxSetSelected = __root.uiComboboxSetSelected;
    pub const uiComboboxOnSelected = __root.uiComboboxOnSelected;
};
pub const uiCombobox = struct_uiCombobox;
pub extern fn uiComboboxAppend(c: ?*uiCombobox, text: [*c]const u8) void;
pub extern fn uiComboboxInsertAt(c: ?*uiCombobox, index: c_int, text: [*c]const u8) void;
pub extern fn uiComboboxDelete(c: ?*uiCombobox, index: c_int) void;
pub extern fn uiComboboxClear(c: ?*uiCombobox) void;
pub extern fn uiComboboxNumItems(c: ?*uiCombobox) c_int;
pub extern fn uiComboboxSelected(c: ?*uiCombobox) c_int;
pub extern fn uiComboboxSetSelected(c: ?*uiCombobox, index: c_int) void;
pub extern fn uiComboboxOnSelected(c: ?*uiCombobox, f: ?*const fn (sender: ?*uiCombobox, senderData: ?*anyopaque) callconv(.c) void, data: ?*anyopaque) void;
pub extern fn uiNewCombobox() ?*uiCombobox;
pub const struct_uiEditableCombobox = opaque {
    pub const uiEditableComboboxAppend = __root.uiEditableComboboxAppend;
    pub const uiEditableComboboxText = __root.uiEditableComboboxText;
    pub const uiEditableComboboxSetText = __root.uiEditableComboboxSetText;
    pub const uiEditableComboboxOnChanged = __root.uiEditableComboboxOnChanged;
};
pub const uiEditableCombobox = struct_uiEditableCombobox;
pub extern fn uiEditableComboboxAppend(c: ?*uiEditableCombobox, text: [*c]const u8) void;
pub extern fn uiEditableComboboxText(c: ?*uiEditableCombobox) [*c]u8;
pub extern fn uiEditableComboboxSetText(c: ?*uiEditableCombobox, text: [*c]const u8) void;
pub extern fn uiEditableComboboxOnChanged(c: ?*uiEditableCombobox, f: ?*const fn (sender: ?*uiEditableCombobox, senderData: ?*anyopaque) callconv(.c) void, data: ?*anyopaque) void;
pub extern fn uiNewEditableCombobox() ?*uiEditableCombobox;
pub const struct_uiRadioButtons = opaque {
    pub const uiRadioButtonsAppend = __root.uiRadioButtonsAppend;
    pub const uiRadioButtonsSelected = __root.uiRadioButtonsSelected;
    pub const uiRadioButtonsSetSelected = __root.uiRadioButtonsSetSelected;
    pub const uiRadioButtonsOnSelected = __root.uiRadioButtonsOnSelected;
};
pub const uiRadioButtons = struct_uiRadioButtons;
pub extern fn uiRadioButtonsAppend(r: ?*uiRadioButtons, text: [*c]const u8) void;
pub extern fn uiRadioButtonsSelected(r: ?*uiRadioButtons) c_int;
pub extern fn uiRadioButtonsSetSelected(r: ?*uiRadioButtons, index: c_int) void;
pub extern fn uiRadioButtonsOnSelected(r: ?*uiRadioButtons, f: ?*const fn (sender: ?*uiRadioButtons, senderData: ?*anyopaque) callconv(.c) void, data: ?*anyopaque) void;
pub extern fn uiNewRadioButtons() ?*uiRadioButtons;
pub const struct_uiDateTimePicker = opaque {
    pub const uiDateTimePickerTime = __root.uiDateTimePickerTime;
    pub const uiDateTimePickerSetTime = __root.uiDateTimePickerSetTime;
    pub const uiDateTimePickerOnChanged = __root.uiDateTimePickerOnChanged;
};
pub const uiDateTimePicker = struct_uiDateTimePicker;
pub const struct_tm = opaque {};
pub extern fn uiDateTimePickerTime(d: ?*uiDateTimePicker, time: ?*struct_tm) void;
pub extern fn uiDateTimePickerSetTime(d: ?*uiDateTimePicker, time: ?*const struct_tm) void;
pub extern fn uiDateTimePickerOnChanged(d: ?*uiDateTimePicker, f: ?*const fn (sender: ?*uiDateTimePicker, senderData: ?*anyopaque) callconv(.c) void, data: ?*anyopaque) void;
pub extern fn uiNewDateTimePicker() ?*uiDateTimePicker;
pub extern fn uiNewDatePicker() ?*uiDateTimePicker;
pub extern fn uiNewTimePicker() ?*uiDateTimePicker;
pub const struct_uiMultilineEntry = opaque {
    pub const uiMultilineEntryText = __root.uiMultilineEntryText;
    pub const uiMultilineEntrySetText = __root.uiMultilineEntrySetText;
    pub const uiMultilineEntryAppend = __root.uiMultilineEntryAppend;
    pub const uiMultilineEntryOnChanged = __root.uiMultilineEntryOnChanged;
    pub const uiMultilineEntryReadOnly = __root.uiMultilineEntryReadOnly;
    pub const uiMultilineEntrySetReadOnly = __root.uiMultilineEntrySetReadOnly;
};
pub const uiMultilineEntry = struct_uiMultilineEntry;
pub extern fn uiMultilineEntryText(e: ?*uiMultilineEntry) [*c]u8;
pub extern fn uiMultilineEntrySetText(e: ?*uiMultilineEntry, text: [*c]const u8) void;
pub extern fn uiMultilineEntryAppend(e: ?*uiMultilineEntry, text: [*c]const u8) void;
pub extern fn uiMultilineEntryOnChanged(e: ?*uiMultilineEntry, f: ?*const fn (sender: ?*uiMultilineEntry, senderData: ?*anyopaque) callconv(.c) void, data: ?*anyopaque) void;
pub extern fn uiMultilineEntryReadOnly(e: ?*uiMultilineEntry) c_int;
pub extern fn uiMultilineEntrySetReadOnly(e: ?*uiMultilineEntry, readonly: c_int) void;
pub extern fn uiNewMultilineEntry() ?*uiMultilineEntry;
pub extern fn uiNewNonWrappingMultilineEntry() ?*uiMultilineEntry;
pub const struct_uiMenuItem = opaque {
    pub const uiMenuItemEnable = __root.uiMenuItemEnable;
    pub const uiMenuItemDisable = __root.uiMenuItemDisable;
    pub const uiMenuItemOnClicked = __root.uiMenuItemOnClicked;
    pub const uiMenuItemChecked = __root.uiMenuItemChecked;
    pub const uiMenuItemSetChecked = __root.uiMenuItemSetChecked;
};
pub const uiMenuItem = struct_uiMenuItem;
pub extern fn uiMenuItemEnable(m: ?*uiMenuItem) void;
pub extern fn uiMenuItemDisable(m: ?*uiMenuItem) void;
pub extern fn uiMenuItemOnClicked(m: ?*uiMenuItem, f: ?*const fn (sender: ?*uiMenuItem, window: ?*uiWindow, senderData: ?*anyopaque) callconv(.c) void, data: ?*anyopaque) void;
pub extern fn uiMenuItemChecked(m: ?*uiMenuItem) c_int;
pub extern fn uiMenuItemSetChecked(m: ?*uiMenuItem, checked: c_int) void;
pub const struct_uiMenu = opaque {
    pub const uiMenuAppendItem = __root.uiMenuAppendItem;
    pub const uiMenuAppendCheckItem = __root.uiMenuAppendCheckItem;
    pub const uiMenuAppendQuitItem = __root.uiMenuAppendQuitItem;
    pub const uiMenuAppendPreferencesItem = __root.uiMenuAppendPreferencesItem;
    pub const uiMenuAppendAboutItem = __root.uiMenuAppendAboutItem;
    pub const uiMenuAppendSeparator = __root.uiMenuAppendSeparator;
};
pub const uiMenu = struct_uiMenu;
pub extern fn uiMenuAppendItem(m: ?*uiMenu, name: [*c]const u8) ?*uiMenuItem;
pub extern fn uiMenuAppendCheckItem(m: ?*uiMenu, name: [*c]const u8) ?*uiMenuItem;
pub extern fn uiMenuAppendQuitItem(m: ?*uiMenu) ?*uiMenuItem;
pub extern fn uiMenuAppendPreferencesItem(m: ?*uiMenu) ?*uiMenuItem;
pub extern fn uiMenuAppendAboutItem(m: ?*uiMenu) ?*uiMenuItem;
pub extern fn uiMenuAppendSeparator(m: ?*uiMenu) void;
pub extern fn uiNewMenu(name: [*c]const u8) ?*uiMenu;
pub extern fn uiOpenFile(parent: ?*uiWindow) [*c]u8;
pub extern fn uiOpenFolder(parent: ?*uiWindow) [*c]u8;
pub extern fn uiSaveFile(parent: ?*uiWindow) [*c]u8;
pub extern fn uiMsgBox(parent: ?*uiWindow, title: [*c]const u8, description: [*c]const u8) void;
pub extern fn uiMsgBoxError(parent: ?*uiWindow, title: [*c]const u8, description: [*c]const u8) void;
pub const struct_uiArea = opaque {
    pub const uiAreaSetSize = __root.uiAreaSetSize;
    pub const uiAreaQueueRedrawAll = __root.uiAreaQueueRedrawAll;
    pub const uiAreaScrollTo = __root.uiAreaScrollTo;
    pub const uiAreaBeginUserWindowMove = __root.uiAreaBeginUserWindowMove;
    pub const uiAreaBeginUserWindowResize = __root.uiAreaBeginUserWindowResize;
};
pub const uiArea = struct_uiArea;
pub const struct_uiDrawContext = opaque {
    pub const uiDrawStroke = __root.uiDrawStroke;
    pub const uiDrawFill = __root.uiDrawFill;
    pub const uiDrawTransform = __root.uiDrawTransform;
    pub const uiDrawClip = __root.uiDrawClip;
    pub const uiDrawSave = __root.uiDrawSave;
    pub const uiDrawRestore = __root.uiDrawRestore;
    pub const uiDrawText = __root.uiDrawText;
};
pub const uiDrawContext = struct_uiDrawContext;
pub const struct_uiAreaDrawParams = extern struct {
    Context: ?*uiDrawContext = null,
    AreaWidth: f64 = 0,
    AreaHeight: f64 = 0,
    ClipX: f64 = 0,
    ClipY: f64 = 0,
    ClipWidth: f64 = 0,
    ClipHeight: f64 = 0,
};
pub const uiAreaDrawParams = struct_uiAreaDrawParams;
pub const uiModifiers = c_uint;
pub const struct_uiAreaMouseEvent = extern struct {
    X: f64 = 0,
    Y: f64 = 0,
    AreaWidth: f64 = 0,
    AreaHeight: f64 = 0,
    Down: c_int = 0,
    Up: c_int = 0,
    Count: c_int = 0,
    Modifiers: uiModifiers = 0,
    Held1To64: u64 = 0,
};
pub const uiAreaMouseEvent = struct_uiAreaMouseEvent;
pub const uiExtKey = c_uint;
pub const struct_uiAreaKeyEvent = extern struct {
    Key: u8 = 0,
    ExtKey: uiExtKey = 0,
    Modifier: uiModifiers = 0,
    Modifiers: uiModifiers = 0,
    Up: c_int = 0,
};
pub const uiAreaKeyEvent = struct_uiAreaKeyEvent;
pub const struct_uiAreaHandler = extern struct {
    Draw: ?*const fn ([*c]uiAreaHandler, ?*uiArea, [*c]uiAreaDrawParams) callconv(.c) void = null,
    MouseEvent: ?*const fn ([*c]uiAreaHandler, ?*uiArea, [*c]uiAreaMouseEvent) callconv(.c) void = null,
    MouseCrossed: ?*const fn ([*c]uiAreaHandler, ?*uiArea, left: c_int) callconv(.c) void = null,
    DragBroken: ?*const fn ([*c]uiAreaHandler, ?*uiArea) callconv(.c) void = null,
    KeyEvent: ?*const fn ([*c]uiAreaHandler, ?*uiArea, [*c]uiAreaKeyEvent) callconv(.c) c_int = null,
    pub const uiNewArea = __root.uiNewArea;
    pub const uiNewScrollingArea = __root.uiNewScrollingArea;
};
pub const uiAreaHandler = struct_uiAreaHandler;
pub const uiWindowResizeEdge = c_uint;
pub const uiWindowResizeEdgeLeft: c_int = 0;
pub const uiWindowResizeEdgeTop: c_int = 1;
pub const uiWindowResizeEdgeRight: c_int = 2;
pub const uiWindowResizeEdgeBottom: c_int = 3;
pub const uiWindowResizeEdgeTopLeft: c_int = 4;
pub const uiWindowResizeEdgeTopRight: c_int = 5;
pub const uiWindowResizeEdgeBottomLeft: c_int = 6;
pub const uiWindowResizeEdgeBottomRight: c_int = 7;
const enum_unnamed_2 = c_uint;
pub extern fn uiAreaSetSize(a: ?*uiArea, width: c_int, height: c_int) void;
pub extern fn uiAreaQueueRedrawAll(a: ?*uiArea) void;
pub extern fn uiAreaScrollTo(a: ?*uiArea, x: f64, y: f64, width: f64, height: f64) void;
pub extern fn uiAreaBeginUserWindowMove(a: ?*uiArea) void;
pub extern fn uiAreaBeginUserWindowResize(a: ?*uiArea, edge: uiWindowResizeEdge) void;
pub extern fn uiNewArea(ah: [*c]uiAreaHandler) ?*uiArea;
pub extern fn uiNewScrollingArea(ah: [*c]uiAreaHandler, width: c_int, height: c_int) ?*uiArea;
pub const struct_uiDrawPath = opaque {
    pub const uiDrawFreePath = __root.uiDrawFreePath;
    pub const uiDrawPathNewFigure = __root.uiDrawPathNewFigure;
    pub const uiDrawPathNewFigureWithArc = __root.uiDrawPathNewFigureWithArc;
    pub const uiDrawPathLineTo = __root.uiDrawPathLineTo;
    pub const uiDrawPathArcTo = __root.uiDrawPathArcTo;
    pub const uiDrawPathBezierTo = __root.uiDrawPathBezierTo;
    pub const uiDrawPathCloseFigure = __root.uiDrawPathCloseFigure;
    pub const uiDrawPathAddRectangle = __root.uiDrawPathAddRectangle;
    pub const uiDrawPathEnded = __root.uiDrawPathEnded;
    pub const uiDrawPathEnd = __root.uiDrawPathEnd;
};
pub const uiDrawPath = struct_uiDrawPath;
pub const uiDrawBrushType = c_uint;
pub const struct_uiDrawBrushGradientStop = extern struct {
    Pos: f64 = 0,
    R: f64 = 0,
    G: f64 = 0,
    B: f64 = 0,
    A: f64 = 0,
};
pub const uiDrawBrushGradientStop = struct_uiDrawBrushGradientStop;
pub const struct_uiDrawBrush = extern struct {
    Type: uiDrawBrushType = 0,
    R: f64 = 0,
    G: f64 = 0,
    B: f64 = 0,
    A: f64 = 0,
    X0: f64 = 0,
    Y0: f64 = 0,
    X1: f64 = 0,
    Y1: f64 = 0,
    OuterRadius: f64 = 0,
    Stops: [*c]uiDrawBrushGradientStop = null,
    NumStops: usize = 0,
};
pub const uiDrawBrush = struct_uiDrawBrush;
pub const uiDrawLineCap = c_uint;
pub const uiDrawLineJoin = c_uint;
pub const struct_uiDrawStrokeParams = extern struct {
    Cap: uiDrawLineCap = 0,
    Join: uiDrawLineJoin = 0,
    Thickness: f64 = 0,
    MiterLimit: f64 = 0,
    Dashes: [*c]f64 = null,
    NumDashes: usize = 0,
    DashPhase: f64 = 0,
};
pub const uiDrawStrokeParams = struct_uiDrawStrokeParams;
pub const struct_uiDrawMatrix = extern struct {
    M11: f64 = 0,
    M12: f64 = 0,
    M21: f64 = 0,
    M22: f64 = 0,
    M31: f64 = 0,
    M32: f64 = 0,
    pub const uiDrawMatrixSetIdentity = __root.uiDrawMatrixSetIdentity;
    pub const uiDrawMatrixTranslate = __root.uiDrawMatrixTranslate;
    pub const uiDrawMatrixScale = __root.uiDrawMatrixScale;
    pub const uiDrawMatrixRotate = __root.uiDrawMatrixRotate;
    pub const uiDrawMatrixSkew = __root.uiDrawMatrixSkew;
    pub const uiDrawMatrixMultiply = __root.uiDrawMatrixMultiply;
    pub const uiDrawMatrixInvertible = __root.uiDrawMatrixInvertible;
    pub const uiDrawMatrixInvert = __root.uiDrawMatrixInvert;
    pub const uiDrawMatrixTransformPoint = __root.uiDrawMatrixTransformPoint;
    pub const uiDrawMatrixTransformSize = __root.uiDrawMatrixTransformSize;
};
pub const uiDrawMatrix = struct_uiDrawMatrix;
pub const uiDrawBrushTypeSolid: c_int = 0;
pub const uiDrawBrushTypeLinearGradient: c_int = 1;
pub const uiDrawBrushTypeRadialGradient: c_int = 2;
pub const uiDrawBrushTypeImage: c_int = 3;
const enum_unnamed_3 = c_uint;
pub const uiDrawLineCapFlat: c_int = 0;
pub const uiDrawLineCapRound: c_int = 1;
pub const uiDrawLineCapSquare: c_int = 2;
const enum_unnamed_4 = c_uint;
pub const uiDrawLineJoinMiter: c_int = 0;
pub const uiDrawLineJoinRound: c_int = 1;
pub const uiDrawLineJoinBevel: c_int = 2;
const enum_unnamed_5 = c_uint;
pub const uiDrawFillMode = c_uint;
pub const uiDrawFillModeWinding: c_int = 0;
pub const uiDrawFillModeAlternate: c_int = 1;
const enum_unnamed_6 = c_uint;
pub extern fn uiDrawNewPath(fillMode: uiDrawFillMode) ?*uiDrawPath;
pub extern fn uiDrawFreePath(p: ?*uiDrawPath) void;
pub extern fn uiDrawPathNewFigure(p: ?*uiDrawPath, x: f64, y: f64) void;
pub extern fn uiDrawPathNewFigureWithArc(p: ?*uiDrawPath, xCenter: f64, yCenter: f64, radius: f64, startAngle: f64, sweep: f64, negative: c_int) void;
pub extern fn uiDrawPathLineTo(p: ?*uiDrawPath, x: f64, y: f64) void;
pub extern fn uiDrawPathArcTo(p: ?*uiDrawPath, xCenter: f64, yCenter: f64, radius: f64, startAngle: f64, sweep: f64, negative: c_int) void;
pub extern fn uiDrawPathBezierTo(p: ?*uiDrawPath, c1x: f64, c1y: f64, c2x: f64, c2y: f64, endX: f64, endY: f64) void;
pub extern fn uiDrawPathCloseFigure(p: ?*uiDrawPath) void;
pub extern fn uiDrawPathAddRectangle(p: ?*uiDrawPath, x: f64, y: f64, width: f64, height: f64) void;
pub extern fn uiDrawPathEnded(p: ?*uiDrawPath) c_int;
pub extern fn uiDrawPathEnd(p: ?*uiDrawPath) void;
pub extern fn uiDrawStroke(c: ?*uiDrawContext, path: ?*uiDrawPath, b: [*c]uiDrawBrush, p: [*c]uiDrawStrokeParams) void;
pub extern fn uiDrawFill(c: ?*uiDrawContext, path: ?*uiDrawPath, b: [*c]uiDrawBrush) void;
pub extern fn uiDrawMatrixSetIdentity(m: [*c]uiDrawMatrix) void;
pub extern fn uiDrawMatrixTranslate(m: [*c]uiDrawMatrix, x: f64, y: f64) void;
pub extern fn uiDrawMatrixScale(m: [*c]uiDrawMatrix, xCenter: f64, yCenter: f64, x: f64, y: f64) void;
pub extern fn uiDrawMatrixRotate(m: [*c]uiDrawMatrix, x: f64, y: f64, amount: f64) void;
pub extern fn uiDrawMatrixSkew(m: [*c]uiDrawMatrix, x: f64, y: f64, xamount: f64, yamount: f64) void;
pub extern fn uiDrawMatrixMultiply(dest: [*c]uiDrawMatrix, src: [*c]uiDrawMatrix) void;
pub extern fn uiDrawMatrixInvertible(m: [*c]uiDrawMatrix) c_int;
pub extern fn uiDrawMatrixInvert(m: [*c]uiDrawMatrix) c_int;
pub extern fn uiDrawMatrixTransformPoint(m: [*c]uiDrawMatrix, x: [*c]f64, y: [*c]f64) void;
pub extern fn uiDrawMatrixTransformSize(m: [*c]uiDrawMatrix, x: [*c]f64, y: [*c]f64) void;
pub extern fn uiDrawTransform(c: ?*uiDrawContext, m: [*c]uiDrawMatrix) void;
pub extern fn uiDrawClip(c: ?*uiDrawContext, path: ?*uiDrawPath) void;
pub extern fn uiDrawSave(c: ?*uiDrawContext) void;
pub extern fn uiDrawRestore(c: ?*uiDrawContext) void;
pub const struct_uiAttribute = opaque {
    pub const uiFreeAttribute = __root.uiFreeAttribute;
    pub const uiAttributeGetType = __root.uiAttributeGetType;
    pub const uiAttributeFamily = __root.uiAttributeFamily;
    pub const uiAttributeSize = __root.uiAttributeSize;
    pub const uiAttributeWeight = __root.uiAttributeWeight;
    pub const uiAttributeItalic = __root.uiAttributeItalic;
    pub const uiAttributeStretch = __root.uiAttributeStretch;
    pub const uiAttributeColor = __root.uiAttributeColor;
    pub const uiAttributeUnderline = __root.uiAttributeUnderline;
    pub const uiAttributeUnderlineColor = __root.uiAttributeUnderlineColor;
    pub const uiAttributeFeatures = __root.uiAttributeFeatures;
};
pub const uiAttribute = struct_uiAttribute;
pub extern fn uiFreeAttribute(a: ?*uiAttribute) void;
pub const uiAttributeType = c_uint;
pub const uiAttributeTypeFamily: c_int = 0;
pub const uiAttributeTypeSize: c_int = 1;
pub const uiAttributeTypeWeight: c_int = 2;
pub const uiAttributeTypeItalic: c_int = 3;
pub const uiAttributeTypeStretch: c_int = 4;
pub const uiAttributeTypeColor: c_int = 5;
pub const uiAttributeTypeBackground: c_int = 6;
pub const uiAttributeTypeUnderline: c_int = 7;
pub const uiAttributeTypeUnderlineColor: c_int = 8;
pub const uiAttributeTypeFeatures: c_int = 9;
const enum_unnamed_7 = c_uint;
pub extern fn uiAttributeGetType(a: ?*const uiAttribute) uiAttributeType;
pub extern fn uiNewFamilyAttribute(family: [*c]const u8) ?*uiAttribute;
pub extern fn uiAttributeFamily(a: ?*const uiAttribute) [*c]const u8;
pub extern fn uiNewSizeAttribute(size: f64) ?*uiAttribute;
pub extern fn uiAttributeSize(a: ?*const uiAttribute) f64;
pub const uiTextWeight = c_uint;
pub const uiTextWeightMinimum: c_int = 0;
pub const uiTextWeightThin: c_int = 100;
pub const uiTextWeightUltraLight: c_int = 200;
pub const uiTextWeightLight: c_int = 300;
pub const uiTextWeightBook: c_int = 350;
pub const uiTextWeightNormal: c_int = 400;
pub const uiTextWeightMedium: c_int = 500;
pub const uiTextWeightSemiBold: c_int = 600;
pub const uiTextWeightBold: c_int = 700;
pub const uiTextWeightUltraBold: c_int = 800;
pub const uiTextWeightHeavy: c_int = 900;
pub const uiTextWeightUltraHeavy: c_int = 950;
pub const uiTextWeightMaximum: c_int = 1000;
const enum_unnamed_8 = c_uint;
pub extern fn uiNewWeightAttribute(weight: uiTextWeight) ?*uiAttribute;
pub extern fn uiAttributeWeight(a: ?*const uiAttribute) uiTextWeight;
pub const uiTextItalic = c_uint;
pub const uiTextItalicNormal: c_int = 0;
pub const uiTextItalicOblique: c_int = 1;
pub const uiTextItalicItalic: c_int = 2;
const enum_unnamed_9 = c_uint;
pub extern fn uiNewItalicAttribute(italic: uiTextItalic) ?*uiAttribute;
pub extern fn uiAttributeItalic(a: ?*const uiAttribute) uiTextItalic;
pub const uiTextStretch = c_uint;
pub const uiTextStretchUltraCondensed: c_int = 0;
pub const uiTextStretchExtraCondensed: c_int = 1;
pub const uiTextStretchCondensed: c_int = 2;
pub const uiTextStretchSemiCondensed: c_int = 3;
pub const uiTextStretchNormal: c_int = 4;
pub const uiTextStretchSemiExpanded: c_int = 5;
pub const uiTextStretchExpanded: c_int = 6;
pub const uiTextStretchExtraExpanded: c_int = 7;
pub const uiTextStretchUltraExpanded: c_int = 8;
const enum_unnamed_10 = c_uint;
pub extern fn uiNewStretchAttribute(stretch: uiTextStretch) ?*uiAttribute;
pub extern fn uiAttributeStretch(a: ?*const uiAttribute) uiTextStretch;
pub extern fn uiNewColorAttribute(r: f64, g: f64, b: f64, a: f64) ?*uiAttribute;
pub extern fn uiAttributeColor(a: ?*const uiAttribute, r: [*c]f64, g: [*c]f64, b: [*c]f64, alpha: [*c]f64) void;
pub extern fn uiNewBackgroundAttribute(r: f64, g: f64, b: f64, a: f64) ?*uiAttribute;
pub const uiUnderline = c_uint;
pub const uiUnderlineNone: c_int = 0;
pub const uiUnderlineSingle: c_int = 1;
pub const uiUnderlineDouble: c_int = 2;
pub const uiUnderlineSuggestion: c_int = 3;
const enum_unnamed_11 = c_uint;
pub extern fn uiNewUnderlineAttribute(u: uiUnderline) ?*uiAttribute;
pub extern fn uiAttributeUnderline(a: ?*const uiAttribute) uiUnderline;
pub const uiUnderlineColor = c_uint;
pub const uiUnderlineColorCustom: c_int = 0;
pub const uiUnderlineColorSpelling: c_int = 1;
pub const uiUnderlineColorGrammar: c_int = 2;
pub const uiUnderlineColorAuxiliary: c_int = 3;
const enum_unnamed_12 = c_uint;
pub extern fn uiNewUnderlineColorAttribute(u: uiUnderlineColor, r: f64, g: f64, b: f64, a: f64) ?*uiAttribute;
pub extern fn uiAttributeUnderlineColor(a: ?*const uiAttribute, u: [*c]uiUnderlineColor, r: [*c]f64, g: [*c]f64, b: [*c]f64, alpha: [*c]f64) void;
pub const struct_uiOpenTypeFeatures = opaque {
    pub const uiFreeOpenTypeFeatures = __root.uiFreeOpenTypeFeatures;
    pub const uiOpenTypeFeaturesClone = __root.uiOpenTypeFeaturesClone;
    pub const uiOpenTypeFeaturesAdd = __root.uiOpenTypeFeaturesAdd;
    pub const uiOpenTypeFeaturesRemove = __root.uiOpenTypeFeaturesRemove;
    pub const uiOpenTypeFeaturesGet = __root.uiOpenTypeFeaturesGet;
    pub const uiOpenTypeFeaturesForEach = __root.uiOpenTypeFeaturesForEach;
    pub const uiNewFeaturesAttribute = __root.uiNewFeaturesAttribute;
};
pub const uiOpenTypeFeatures = struct_uiOpenTypeFeatures;
pub const uiOpenTypeFeaturesForEachFunc = ?*const fn (otf: ?*const uiOpenTypeFeatures, a: u8, b: u8, c: u8, d: u8, value: u32, data: ?*anyopaque) callconv(.c) uiForEach;
pub extern fn uiNewOpenTypeFeatures() ?*uiOpenTypeFeatures;
pub extern fn uiFreeOpenTypeFeatures(otf: ?*uiOpenTypeFeatures) void;
pub extern fn uiOpenTypeFeaturesClone(otf: ?*const uiOpenTypeFeatures) ?*uiOpenTypeFeatures;
pub extern fn uiOpenTypeFeaturesAdd(otf: ?*uiOpenTypeFeatures, a: u8, b: u8, c: u8, d: u8, value: u32) void;
pub extern fn uiOpenTypeFeaturesRemove(otf: ?*uiOpenTypeFeatures, a: u8, b: u8, c: u8, d: u8) void;
pub extern fn uiOpenTypeFeaturesGet(otf: ?*const uiOpenTypeFeatures, a: u8, b: u8, c: u8, d: u8, value: [*c]u32) c_int;
pub extern fn uiOpenTypeFeaturesForEach(otf: ?*const uiOpenTypeFeatures, f: uiOpenTypeFeaturesForEachFunc, data: ?*anyopaque) void;
pub extern fn uiNewFeaturesAttribute(otf: ?*const uiOpenTypeFeatures) ?*uiAttribute;
pub extern fn uiAttributeFeatures(a: ?*const uiAttribute) ?*const uiOpenTypeFeatures;
pub const struct_uiAttributedString = opaque {
    pub const uiFreeAttributedString = __root.uiFreeAttributedString;
    pub const uiAttributedStringString = __root.uiAttributedStringString;
    pub const uiAttributedStringLen = __root.uiAttributedStringLen;
    pub const uiAttributedStringAppendUnattributed = __root.uiAttributedStringAppendUnattributed;
    pub const uiAttributedStringInsertAtUnattributed = __root.uiAttributedStringInsertAtUnattributed;
    pub const uiAttributedStringDelete = __root.uiAttributedStringDelete;
    pub const uiAttributedStringSetAttribute = __root.uiAttributedStringSetAttribute;
    pub const uiAttributedStringForEachAttribute = __root.uiAttributedStringForEachAttribute;
    pub const uiAttributedStringNumGraphemes = __root.uiAttributedStringNumGraphemes;
    pub const uiAttributedStringByteIndexToGrapheme = __root.uiAttributedStringByteIndexToGrapheme;
    pub const uiAttributedStringGraphemeToByteIndex = __root.uiAttributedStringGraphemeToByteIndex;
};
pub const uiAttributedString = struct_uiAttributedString;
pub const uiAttributedStringForEachAttributeFunc = ?*const fn (s: ?*const uiAttributedString, a: ?*const uiAttribute, start: usize, end: usize, data: ?*anyopaque) callconv(.c) uiForEach;
pub extern fn uiNewAttributedString(initialString: [*c]const u8) ?*uiAttributedString;
pub extern fn uiFreeAttributedString(s: ?*uiAttributedString) void;
pub extern fn uiAttributedStringString(s: ?*const uiAttributedString) [*c]const u8;
pub extern fn uiAttributedStringLen(s: ?*const uiAttributedString) usize;
pub extern fn uiAttributedStringAppendUnattributed(s: ?*uiAttributedString, str: [*c]const u8) void;
pub extern fn uiAttributedStringInsertAtUnattributed(s: ?*uiAttributedString, str: [*c]const u8, at: usize) void;
pub extern fn uiAttributedStringDelete(s: ?*uiAttributedString, start: usize, end: usize) void;
pub extern fn uiAttributedStringSetAttribute(s: ?*uiAttributedString, a: ?*uiAttribute, start: usize, end: usize) void;
pub extern fn uiAttributedStringForEachAttribute(s: ?*const uiAttributedString, f: uiAttributedStringForEachAttributeFunc, data: ?*anyopaque) void;
pub extern fn uiAttributedStringNumGraphemes(s: ?*uiAttributedString) usize;
pub extern fn uiAttributedStringByteIndexToGrapheme(s: ?*uiAttributedString, pos: usize) usize;
pub extern fn uiAttributedStringGraphemeToByteIndex(s: ?*uiAttributedString, pos: usize) usize;
pub const struct_uiFontDescriptor = extern struct {
    Family: [*c]u8 = null,
    Size: f64 = 0,
    Weight: uiTextWeight = 0,
    Italic: uiTextItalic = 0,
    Stretch: uiTextStretch = 0,
    pub const uiLoadControlFont = __root.uiLoadControlFont;
    pub const uiFreeFontDescriptor = __root.uiFreeFontDescriptor;
    pub const uiFreeFontButtonFont = __root.uiFreeFontButtonFont;
};
pub const uiFontDescriptor = struct_uiFontDescriptor;
pub extern fn uiLoadControlFont(f: [*c]uiFontDescriptor) void;
pub extern fn uiFreeFontDescriptor(desc: [*c]uiFontDescriptor) void;
pub const struct_uiDrawTextLayout = opaque {
    pub const uiDrawFreeTextLayout = __root.uiDrawFreeTextLayout;
    pub const uiDrawTextLayoutExtents = __root.uiDrawTextLayoutExtents;
};
pub const uiDrawTextLayout = struct_uiDrawTextLayout;
pub const uiDrawTextAlign = c_uint;
pub const uiDrawTextAlignLeft: c_int = 0;
pub const uiDrawTextAlignCenter: c_int = 1;
pub const uiDrawTextAlignRight: c_int = 2;
const enum_unnamed_13 = c_uint;
pub const struct_uiDrawTextLayoutParams = extern struct {
    String: ?*uiAttributedString = null,
    DefaultFont: [*c]uiFontDescriptor = null,
    Width: f64 = 0,
    Align: uiDrawTextAlign = 0,
    pub const uiDrawNewTextLayout = __root.uiDrawNewTextLayout;
};
pub const uiDrawTextLayoutParams = struct_uiDrawTextLayoutParams;
pub extern fn uiDrawNewTextLayout(params: [*c]uiDrawTextLayoutParams) ?*uiDrawTextLayout;
pub extern fn uiDrawFreeTextLayout(tl: ?*uiDrawTextLayout) void;
pub extern fn uiDrawText(c: ?*uiDrawContext, tl: ?*uiDrawTextLayout, x: f64, y: f64) void;
pub extern fn uiDrawTextLayoutExtents(tl: ?*uiDrawTextLayout, width: [*c]f64, height: [*c]f64) void;
pub const struct_uiFontButton = opaque {
    pub const uiFontButtonFont = __root.uiFontButtonFont;
    pub const uiFontButtonOnChanged = __root.uiFontButtonOnChanged;
};
pub const uiFontButton = struct_uiFontButton;
pub extern fn uiFontButtonFont(b: ?*uiFontButton, desc: [*c]uiFontDescriptor) void;
pub extern fn uiFontButtonOnChanged(b: ?*uiFontButton, f: ?*const fn (sender: ?*uiFontButton, senderData: ?*anyopaque) callconv(.c) void, data: ?*anyopaque) void;
pub extern fn uiNewFontButton() ?*uiFontButton;
pub extern fn uiFreeFontButtonFont(desc: [*c]uiFontDescriptor) void;
pub const uiModifierCtrl: c_int = 1;
pub const uiModifierAlt: c_int = 2;
pub const uiModifierShift: c_int = 4;
pub const uiModifierSuper: c_int = 8;
const enum_unnamed_14 = c_uint;
pub const uiExtKeyEscape: c_int = 1;
pub const uiExtKeyInsert: c_int = 2;
pub const uiExtKeyDelete: c_int = 3;
pub const uiExtKeyHome: c_int = 4;
pub const uiExtKeyEnd: c_int = 5;
pub const uiExtKeyPageUp: c_int = 6;
pub const uiExtKeyPageDown: c_int = 7;
pub const uiExtKeyUp: c_int = 8;
pub const uiExtKeyDown: c_int = 9;
pub const uiExtKeyLeft: c_int = 10;
pub const uiExtKeyRight: c_int = 11;
pub const uiExtKeyF1: c_int = 12;
pub const uiExtKeyF2: c_int = 13;
pub const uiExtKeyF3: c_int = 14;
pub const uiExtKeyF4: c_int = 15;
pub const uiExtKeyF5: c_int = 16;
pub const uiExtKeyF6: c_int = 17;
pub const uiExtKeyF7: c_int = 18;
pub const uiExtKeyF8: c_int = 19;
pub const uiExtKeyF9: c_int = 20;
pub const uiExtKeyF10: c_int = 21;
pub const uiExtKeyF11: c_int = 22;
pub const uiExtKeyF12: c_int = 23;
pub const uiExtKeyN0: c_int = 24;
pub const uiExtKeyN1: c_int = 25;
pub const uiExtKeyN2: c_int = 26;
pub const uiExtKeyN3: c_int = 27;
pub const uiExtKeyN4: c_int = 28;
pub const uiExtKeyN5: c_int = 29;
pub const uiExtKeyN6: c_int = 30;
pub const uiExtKeyN7: c_int = 31;
pub const uiExtKeyN8: c_int = 32;
pub const uiExtKeyN9: c_int = 33;
pub const uiExtKeyNDot: c_int = 34;
pub const uiExtKeyNEnter: c_int = 35;
pub const uiExtKeyNAdd: c_int = 36;
pub const uiExtKeyNSubtract: c_int = 37;
pub const uiExtKeyNMultiply: c_int = 38;
pub const uiExtKeyNDivide: c_int = 39;
const enum_unnamed_15 = c_uint;
pub const struct_uiColorButton = opaque {
    pub const uiColorButtonColor = __root.uiColorButtonColor;
    pub const uiColorButtonSetColor = __root.uiColorButtonSetColor;
    pub const uiColorButtonOnChanged = __root.uiColorButtonOnChanged;
};
pub const uiColorButton = struct_uiColorButton;
pub extern fn uiColorButtonColor(b: ?*uiColorButton, r: [*c]f64, g: [*c]f64, bl: [*c]f64, a: [*c]f64) void;
pub extern fn uiColorButtonSetColor(b: ?*uiColorButton, r: f64, g: f64, bl: f64, a: f64) void;
pub extern fn uiColorButtonOnChanged(b: ?*uiColorButton, f: ?*const fn (sender: ?*uiColorButton, senderData: ?*anyopaque) callconv(.c) void, data: ?*anyopaque) void;
pub extern fn uiNewColorButton() ?*uiColorButton;
pub const struct_uiForm = opaque {
    pub const uiFormAppend = __root.uiFormAppend;
    pub const uiFormNumChildren = __root.uiFormNumChildren;
    pub const uiFormDelete = __root.uiFormDelete;
    pub const uiFormPadded = __root.uiFormPadded;
    pub const uiFormSetPadded = __root.uiFormSetPadded;
};
pub const uiForm = struct_uiForm;
pub extern fn uiFormAppend(f: ?*uiForm, label: [*c]const u8, c: [*c]uiControl, stretchy: c_int) void;
pub extern fn uiFormNumChildren(f: ?*uiForm) c_int;
pub extern fn uiFormDelete(f: ?*uiForm, index: c_int) void;
pub extern fn uiFormPadded(f: ?*uiForm) c_int;
pub extern fn uiFormSetPadded(f: ?*uiForm, padded: c_int) void;
pub extern fn uiNewForm() ?*uiForm;
pub const uiAlign = c_uint;
pub const uiAlignFill: c_int = 0;
pub const uiAlignStart: c_int = 1;
pub const uiAlignCenter: c_int = 2;
pub const uiAlignEnd: c_int = 3;
const enum_unnamed_16 = c_uint;
pub const uiAt = c_uint;
pub const uiAtLeading: c_int = 0;
pub const uiAtTop: c_int = 1;
pub const uiAtTrailing: c_int = 2;
pub const uiAtBottom: c_int = 3;
const enum_unnamed_17 = c_uint;
pub const struct_uiGrid = opaque {
    pub const uiGridAppend = __root.uiGridAppend;
    pub const uiGridInsertAt = __root.uiGridInsertAt;
    pub const uiGridPadded = __root.uiGridPadded;
    pub const uiGridSetPadded = __root.uiGridSetPadded;
};
pub const uiGrid = struct_uiGrid;
pub extern fn uiGridAppend(g: ?*uiGrid, c: [*c]uiControl, left: c_int, top: c_int, xspan: c_int, yspan: c_int, hexpand: c_int, halign: uiAlign, vexpand: c_int, valign: uiAlign) void;
pub extern fn uiGridInsertAt(g: ?*uiGrid, c: [*c]uiControl, existing: [*c]uiControl, at: uiAt, xspan: c_int, yspan: c_int, hexpand: c_int, halign: uiAlign, vexpand: c_int, valign: uiAlign) void;
pub extern fn uiGridPadded(g: ?*uiGrid) c_int;
pub extern fn uiGridSetPadded(g: ?*uiGrid, padded: c_int) void;
pub extern fn uiNewGrid() ?*uiGrid;
pub const struct_uiImage = opaque {
    pub const uiFreeImage = __root.uiFreeImage;
    pub const uiImageAppend = __root.uiImageAppend;
    pub const uiNewTableValueImage = __root.uiNewTableValueImage;
};
pub const uiImage = struct_uiImage;
pub extern fn uiNewImage(width: f64, height: f64) ?*uiImage;
pub extern fn uiFreeImage(i: ?*uiImage) void;
pub extern fn uiImageAppend(i: ?*uiImage, pixels: ?*anyopaque, pixelWidth: c_int, pixelHeight: c_int, byteStride: c_int) void;
pub const struct_uiTableValue = opaque {
    pub const uiFreeTableValue = __root.uiFreeTableValue;
    pub const uiTableValueGetType = __root.uiTableValueGetType;
    pub const uiTableValueString = __root.uiTableValueString;
    pub const uiTableValueImage = __root.uiTableValueImage;
    pub const uiTableValueInt = __root.uiTableValueInt;
    pub const uiTableValueColor = __root.uiTableValueColor;
};
pub const uiTableValue = struct_uiTableValue;
pub extern fn uiFreeTableValue(v: ?*uiTableValue) void;
pub const uiTableValueType = c_uint;
pub const uiTableValueTypeString: c_int = 0;
pub const uiTableValueTypeImage: c_int = 1;
pub const uiTableValueTypeInt: c_int = 2;
pub const uiTableValueTypeColor: c_int = 3;
const enum_unnamed_18 = c_uint;
pub extern fn uiTableValueGetType(v: ?*const uiTableValue) uiTableValueType;
pub extern fn uiNewTableValueString(str: [*c]const u8) ?*uiTableValue;
pub extern fn uiTableValueString(v: ?*const uiTableValue) [*c]const u8;
pub extern fn uiNewTableValueImage(img: ?*uiImage) ?*uiTableValue;
pub extern fn uiTableValueImage(v: ?*const uiTableValue) ?*uiImage;
pub extern fn uiNewTableValueInt(i: c_int) ?*uiTableValue;
pub extern fn uiTableValueInt(v: ?*const uiTableValue) c_int;
pub extern fn uiNewTableValueColor(r: f64, g: f64, b: f64, a: f64) ?*uiTableValue;
pub extern fn uiTableValueColor(v: ?*const uiTableValue, r: [*c]f64, g: [*c]f64, b: [*c]f64, a: [*c]f64) void;
pub const uiSortIndicator = c_uint;
pub const uiSortIndicatorNone: c_int = 0;
pub const uiSortIndicatorAscending: c_int = 1;
pub const uiSortIndicatorDescending: c_int = 2;
const enum_unnamed_19 = c_uint;
pub const struct_uiTableModel = opaque {
    pub const uiFreeTableModel = __root.uiFreeTableModel;
    pub const uiTableModelRowInserted = __root.uiTableModelRowInserted;
    pub const uiTableModelRowChanged = __root.uiTableModelRowChanged;
    pub const uiTableModelRowDeleted = __root.uiTableModelRowDeleted;
};
pub const uiTableModel = struct_uiTableModel;
pub const struct_uiTableModelHandler = extern struct {
    NumColumns: ?*const fn ([*c]uiTableModelHandler, ?*uiTableModel) callconv(.c) c_int = null,
    ColumnType: ?*const fn ([*c]uiTableModelHandler, ?*uiTableModel, column: c_int) callconv(.c) uiTableValueType = null,
    NumRows: ?*const fn ([*c]uiTableModelHandler, ?*uiTableModel) callconv(.c) c_int = null,
    CellValue: ?*const fn (mh: [*c]uiTableModelHandler, m: ?*uiTableModel, row: c_int, column: c_int) callconv(.c) ?*uiTableValue = null,
    SetCellValue: ?*const fn ([*c]uiTableModelHandler, ?*uiTableModel, c_int, c_int, ?*const uiTableValue) callconv(.c) void = null,
    pub const uiNewTableModel = __root.uiNewTableModel;
};
pub const uiTableModelHandler = struct_uiTableModelHandler;
pub extern fn uiNewTableModel(mh: [*c]uiTableModelHandler) ?*uiTableModel;
pub extern fn uiFreeTableModel(m: ?*uiTableModel) void;
pub extern fn uiTableModelRowInserted(m: ?*uiTableModel, newIndex: c_int) void;
pub extern fn uiTableModelRowChanged(m: ?*uiTableModel, index: c_int) void;
pub extern fn uiTableModelRowDeleted(m: ?*uiTableModel, oldIndex: c_int) void;
pub const struct_uiTableTextColumnOptionalParams = extern struct {
    ColorModelColumn: c_int = 0,
};
pub const uiTableTextColumnOptionalParams = struct_uiTableTextColumnOptionalParams;
pub const struct_uiTableParams = extern struct {
    Model: ?*uiTableModel = null,
    RowBackgroundColorModelColumn: c_int = 0,
    pub const uiNewTable = __root.uiNewTable;
};
pub const uiTableParams = struct_uiTableParams;
pub const struct_uiTable = opaque {
    pub const uiTableAppendTextColumn = __root.uiTableAppendTextColumn;
    pub const uiTableAppendImageColumn = __root.uiTableAppendImageColumn;
    pub const uiTableAppendImageTextColumn = __root.uiTableAppendImageTextColumn;
    pub const uiTableAppendCheckboxColumn = __root.uiTableAppendCheckboxColumn;
    pub const uiTableAppendCheckboxTextColumn = __root.uiTableAppendCheckboxTextColumn;
    pub const uiTableAppendProgressBarColumn = __root.uiTableAppendProgressBarColumn;
    pub const uiTableAppendButtonColumn = __root.uiTableAppendButtonColumn;
    pub const uiTableHeaderVisible = __root.uiTableHeaderVisible;
    pub const uiTableHeaderSetVisible = __root.uiTableHeaderSetVisible;
    pub const uiTableOnRowClicked = __root.uiTableOnRowClicked;
    pub const uiTableOnRowDoubleClicked = __root.uiTableOnRowDoubleClicked;
    pub const uiTableHeaderSetSortIndicator = __root.uiTableHeaderSetSortIndicator;
    pub const uiTableHeaderSortIndicator = __root.uiTableHeaderSortIndicator;
    pub const uiTableHeaderOnClicked = __root.uiTableHeaderOnClicked;
    pub const uiTableColumnWidth = __root.uiTableColumnWidth;
    pub const uiTableColumnSetWidth = __root.uiTableColumnSetWidth;
    pub const uiTableGetSelectionMode = __root.uiTableGetSelectionMode;
    pub const uiTableSetSelectionMode = __root.uiTableSetSelectionMode;
    pub const uiTableOnSelectionChanged = __root.uiTableOnSelectionChanged;
    pub const uiTableGetSelection = __root.uiTableGetSelection;
    pub const uiTableSetSelection = __root.uiTableSetSelection;
};
pub const uiTable = struct_uiTable;
pub extern fn uiTableAppendTextColumn(t: ?*uiTable, name: [*c]const u8, textModelColumn: c_int, textEditableModelColumn: c_int, textParams: [*c]uiTableTextColumnOptionalParams) void;
pub extern fn uiTableAppendImageColumn(t: ?*uiTable, name: [*c]const u8, imageModelColumn: c_int) void;
pub extern fn uiTableAppendImageTextColumn(t: ?*uiTable, name: [*c]const u8, imageModelColumn: c_int, textModelColumn: c_int, textEditableModelColumn: c_int, textParams: [*c]uiTableTextColumnOptionalParams) void;
pub extern fn uiTableAppendCheckboxColumn(t: ?*uiTable, name: [*c]const u8, checkboxModelColumn: c_int, checkboxEditableModelColumn: c_int) void;
pub extern fn uiTableAppendCheckboxTextColumn(t: ?*uiTable, name: [*c]const u8, checkboxModelColumn: c_int, checkboxEditableModelColumn: c_int, textModelColumn: c_int, textEditableModelColumn: c_int, textParams: [*c]uiTableTextColumnOptionalParams) void;
pub extern fn uiTableAppendProgressBarColumn(t: ?*uiTable, name: [*c]const u8, progressModelColumn: c_int) void;
pub extern fn uiTableAppendButtonColumn(t: ?*uiTable, name: [*c]const u8, buttonModelColumn: c_int, buttonClickableModelColumn: c_int) void;
pub extern fn uiTableHeaderVisible(t: ?*uiTable) c_int;
pub extern fn uiTableHeaderSetVisible(t: ?*uiTable, visible: c_int) void;
pub extern fn uiNewTable(params: [*c]uiTableParams) ?*uiTable;
pub extern fn uiTableOnRowClicked(t: ?*uiTable, f: ?*const fn (t: ?*uiTable, row: c_int, data: ?*anyopaque) callconv(.c) void, data: ?*anyopaque) void;
pub extern fn uiTableOnRowDoubleClicked(t: ?*uiTable, f: ?*const fn (t: ?*uiTable, row: c_int, data: ?*anyopaque) callconv(.c) void, data: ?*anyopaque) void;
pub extern fn uiTableHeaderSetSortIndicator(t: ?*uiTable, column: c_int, indicator: uiSortIndicator) void;
pub extern fn uiTableHeaderSortIndicator(t: ?*uiTable, column: c_int) uiSortIndicator;
pub extern fn uiTableHeaderOnClicked(t: ?*uiTable, f: ?*const fn (sender: ?*uiTable, column: c_int, senderData: ?*anyopaque) callconv(.c) void, data: ?*anyopaque) void;
pub extern fn uiTableColumnWidth(t: ?*uiTable, column: c_int) c_int;
pub extern fn uiTableColumnSetWidth(t: ?*uiTable, column: c_int, width: c_int) void;
pub const uiTableSelectionMode = c_uint;
pub const uiTableSelectionModeNone: c_int = 0;
pub const uiTableSelectionModeZeroOrOne: c_int = 1;
pub const uiTableSelectionModeOne: c_int = 2;
pub const uiTableSelectionModeZeroOrMany: c_int = 3;
const enum_unnamed_20 = c_uint;
pub extern fn uiTableGetSelectionMode(t: ?*uiTable) uiTableSelectionMode;
pub extern fn uiTableSetSelectionMode(t: ?*uiTable, mode: uiTableSelectionMode) void;
pub extern fn uiTableOnSelectionChanged(t: ?*uiTable, f: ?*const fn (t: ?*uiTable, data: ?*anyopaque) callconv(.c) void, data: ?*anyopaque) void;
pub const struct_uiTableSelection = extern struct {
    NumRows: c_int = 0,
    Rows: [*c]c_int = null,
    pub const uiFreeTableSelection = __root.uiFreeTableSelection;
};
pub const uiTableSelection = struct_uiTableSelection;
pub extern fn uiTableGetSelection(t: ?*uiTable) [*c]uiTableSelection;
pub extern fn uiTableSetSelection(t: ?*uiTable, sel: [*c]uiTableSelection) void;
pub extern fn uiFreeTableSelection(s: [*c]uiTableSelection) void;

pub const __VERSION__ = "Aro aro-zig";
pub const __Aro__ = "";
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __STDC_EMBED_NOT_FOUND__ = @as(c_int, 0);
pub const __STDC_EMBED_FOUND__ = @as(c_int, 1);
pub const __STDC_EMBED_EMPTY__ = @as(c_int, 2);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __GNUC__ = @as(c_int, 7);
pub const __GNUC_MINOR__ = @as(c_int, 1);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 0);
pub const __ARO_EMULATE_CLANG__ = @as(c_int, 1);
pub const __ARO_EMULATE_GCC__ = @as(c_int, 2);
pub const __ARO_EMULATE_MSVC__ = @as(c_int, 3);
pub const __ARO_EMULATE__ = __ARO_EMULATE_GCC__;
pub inline fn __building_module(x: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &x;
    return @as(c_int, 0);
}
pub const _WIN32 = @as(c_int, 1);
pub const _WIN64 = @as(c_int, 1);
pub const WIN32 = @as(c_int, 1);
pub const __WIN32 = @as(c_int, 1);
pub const __WIN32__ = @as(c_int, 1);
pub const WINNT = @as(c_int, 1);
pub const __WINNT = @as(c_int, 1);
pub const __WINNT__ = @as(c_int, 1);
pub const WIN64 = @as(c_int, 1);
pub const __WIN64 = @as(c_int, 1);
pub const __WIN64__ = @as(c_int, 1);
pub const __MINGW64__ = @as(c_int, 1);
pub const __MSVCRT__ = @as(c_int, 1);
pub const __MINGW32__ = @as(c_int, 1);
pub const __declspec = @compileError("unable to translate C expr: unexpected token '__attribute__'"); // <builtin>:33:9
pub const _cdecl = @compileError("unable to translate macro: undefined identifier `__cdecl__`"); // <builtin>:34:9
pub const __cdecl = @compileError("unable to translate macro: undefined identifier `__cdecl__`"); // <builtin>:35:9
pub const _stdcall = @compileError("unable to translate macro: undefined identifier `__stdcall__`"); // <builtin>:36:9
pub const __stdcall = @compileError("unable to translate macro: undefined identifier `__stdcall__`"); // <builtin>:37:9
pub const _fastcall = @compileError("unable to translate macro: undefined identifier `__fastcall__`"); // <builtin>:38:9
pub const __fastcall = @compileError("unable to translate macro: undefined identifier `__fastcall__`"); // <builtin>:39:9
pub const _thiscall = @compileError("unable to translate macro: undefined identifier `__thiscall__`"); // <builtin>:40:9
pub const __thiscall = @compileError("unable to translate macro: undefined identifier `__thiscall__`"); // <builtin>:41:9
pub const unix = @as(c_int, 1);
pub const __unix = @as(c_int, 1);
pub const __unix__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `address_space`"); // <builtin>:52:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `address_space`"); // <builtin>:53:9
pub const __FXSR__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __ATOMIC_BOOL_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_CHAR_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_SHORT_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_INT_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_LONG_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_LLONG_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_POINTER_LOCK_FREE = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 8);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SCHAR_WIDTH__ = @as(c_int, 8);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_MAX__ = @as(c_long, 2147483647);
pub const __LONG_WIDTH__ = @as(c_int, 32);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __LONG_LONG_WIDTH__ = @as(c_int, 64);
pub const __WCHAR_MAX__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 16);
pub const __INTMAX_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIG_ATOMIC_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __BITINT_MAXWIDTH__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 10);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 4);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 2);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTPTR_TYPE__ = c_longlong;
pub const __UINTPTR_TYPE__ = c_ulonglong;
pub const __INTMAX_TYPE__ = c_longlong;
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`"); // <builtin>:125:9
pub const __UINTMAX_TYPE__ = c_ulonglong;
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`"); // <builtin>:127:9
pub const __PTRDIFF_TYPE__ = c_longlong;
pub const __SIZE_TYPE__ = c_ulonglong;
pub const __WCHAR_TYPE__ = c_ushort;
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub const __INT64_TYPE__ = c_longlong;
pub const __INT64_FMTd__ = "lld";
pub const __INT64_FMTi__ = "lli";
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`"); // <builtin>:148:9
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub const __UINT16_MAX__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`"); // <builtin>:170:9
pub const __UINT32_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulonglong;
pub const __UINT64_FMTo__ = "llo";
pub const __UINT64_FMTu__ = "llu";
pub const __UINT64_FMTx__ = "llx";
pub const __UINT64_FMTX__ = "llX";
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`"); // <builtin>:178:9
pub const __UINT64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __INT64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const INT_LEAST8_FMTd__ = "hhd";
pub const INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const UINT_LEAST8_FMTo__ = "hho";
pub const UINT_LEAST8_FMTu__ = "hhu";
pub const UINT_LEAST8_FMTx__ = "hhx";
pub const UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const INT_FAST8_FMTd__ = "hhd";
pub const INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const UINT_FAST8_FMTo__ = "hho";
pub const UINT_FAST8_FMTu__ = "hhu";
pub const UINT_FAST8_FMTx__ = "hhx";
pub const UINT_FAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const INT_LEAST16_FMTd__ = "hd";
pub const INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_LEAST16_FMTo__ = "ho";
pub const UINT_LEAST16_FMTu__ = "hu";
pub const UINT_LEAST16_FMTx__ = "hx";
pub const UINT_LEAST16_FMTX__ = "hX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const INT_FAST16_FMTd__ = "hd";
pub const INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_FAST16_FMTo__ = "ho";
pub const UINT_FAST16_FMTu__ = "hu";
pub const UINT_FAST16_FMTx__ = "hx";
pub const UINT_FAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const INT_LEAST32_FMTd__ = "d";
pub const INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_LEAST32_FMTo__ = "o";
pub const UINT_LEAST32_FMTu__ = "u";
pub const UINT_LEAST32_FMTx__ = "x";
pub const UINT_LEAST32_FMTX__ = "X";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const INT_FAST32_FMTd__ = "d";
pub const INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_FAST32_FMTo__ = "o";
pub const UINT_FAST32_FMTu__ = "u";
pub const UINT_FAST32_FMTx__ = "x";
pub const UINT_FAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_longlong;
pub const __INT_LEAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const INT_LEAST64_FMTd__ = "lld";
pub const INT_LEAST64_FMTi__ = "lli";
pub const __UINT_LEAST64_TYPE__ = c_ulonglong;
pub const __UINT_LEAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const UINT_LEAST64_FMTo__ = "llo";
pub const UINT_LEAST64_FMTu__ = "llu";
pub const UINT_LEAST64_FMTx__ = "llx";
pub const UINT_LEAST64_FMTX__ = "llX";
pub const __INT_FAST64_TYPE__ = c_longlong;
pub const __INT_FAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const INT_FAST64_FMTd__ = "lld";
pub const INT_FAST64_FMTi__ = "lli";
pub const __UINT_FAST64_TYPE__ = c_ulonglong;
pub const __UINT_FAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const UINT_FAST64_FMTo__ = "llo";
pub const UINT_FAST64_FMTu__ = "llu";
pub const UINT_FAST64_FMTx__ = "llx";
pub const UINT_FAST64_FMTX__ = "llX";
pub const __FLT16_DENORM_MIN__ = @as(f16, 5.9604644775390625e-8);
pub const __FLT16_HAS_DENORM__ = "";
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_EPSILON__ = @as(f16, 9.765625e-4);
pub const __FLT16_HAS_INFINITY__ = "";
pub const __FLT16_HAS_QUIET_NAN__ = "";
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT16_MIN__ = @as(f16, 6.103515625e-5);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = "";
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = "";
pub const __FLT_HAS_QUIET_NAN__ = "";
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_HAS_DENORM__ = "";
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = "";
pub const __DBL_HAS_QUIET_NAN__ = "";
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_HAS_DENORM__ = "";
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = "";
pub const __LDBL_HAS_QUIET_NAN__ = "";
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __FLT_EVAL_METHOD__ = @as(c_int, 0);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __pic__ = @as(c_int, 2);
pub const __PIC__ = @as(c_int, 2);
pub const __MSVCRT_VERSION__ = @as(c_int, 0xE00);
pub const _WIN32_WINNT = @as(c_int, 0x0a00);
pub const __LIBUI_UI_H__ = "";
pub const __STDC_VERSION_STDDEF_H__ = @as(c_long, 202311);
pub const NULL = __helpers.cast(?*anyopaque, @as(c_int, 0));
pub const offsetof = @compileError("unable to translate macro: undefined identifier `__builtin_offsetof`"); // C:\zig\lib\compiler\aro\include\stddef.h:18:9
pub const __CLANG_STDINT_H = "";
pub const _STDINT_H = "";
pub const _INC_CRTDEFS = "";
pub const _INC_CORECRT = "";
pub const _INC__MINGW_H = "";
pub const _INC_CRTDEFS_MACRO = "";
pub const __MINGW64_PASTE2 = @compileError("unable to translate C expr: unexpected token '##'"); // C:\zig\lib\libc\include\any-windows-any\_mingw_mac.h:10:9
pub inline fn __MINGW64_PASTE(x: anytype, y: anytype) @TypeOf(__MINGW64_PASTE2(x, y)) {
    _ = &x;
    _ = &y;
    return __MINGW64_PASTE2(x, y);
}
pub const __STRINGIFY = @compileError("unable to translate C expr: unexpected token ''"); // C:\zig\lib\libc\include\any-windows-any\_mingw_mac.h:13:9
pub inline fn __MINGW64_STRINGIFY(x: anytype) @TypeOf(__STRINGIFY(x)) {
    _ = &x;
    return __STRINGIFY(x);
}
pub const __MINGW64_VERSION_MAJOR = @as(c_int, 13);
pub const __MINGW64_VERSION_MINOR = @as(c_int, 0);
pub const __MINGW64_VERSION_BUGFIX = @as(c_int, 0);
pub const __MINGW64_VERSION_RC = @as(c_int, 0);
pub const __MINGW64_VERSION_STR = __MINGW64_STRINGIFY(__MINGW64_VERSION_MAJOR) ++ "." ++ __MINGW64_STRINGIFY(__MINGW64_VERSION_MINOR) ++ "." ++ __MINGW64_STRINGIFY(__MINGW64_VERSION_BUGFIX);
pub const __MINGW64_VERSION_STATE = "alpha";
pub const __MINGW32_MAJOR_VERSION = @as(c_int, 3);
pub const __MINGW32_MINOR_VERSION = @as(c_int, 11);
pub const _M_AMD64 = @as(c_int, 100);
pub const _M_X64 = @as(c_int, 100);
pub const __MINGW_USE_UNDERSCORE_PREFIX = @as(c_int, 0);
pub const __MINGW_IMP_SYMBOL = @compileError("unable to translate macro: undefined identifier `__imp_`"); // C:\zig\lib\libc\include\any-windows-any\_mingw_mac.h:129:11
pub const __MINGW_IMP_LSYMBOL = @compileError("unable to translate macro: undefined identifier `__imp_`"); // C:\zig\lib\libc\include\any-windows-any\_mingw_mac.h:130:11
pub inline fn __MINGW_USYMBOL(sym: anytype) @TypeOf(sym) {
    _ = &sym;
    return sym;
}
pub const __MINGW_LSYMBOL = @compileError("unable to translate macro: undefined identifier `_`"); // C:\zig\lib\libc\include\any-windows-any\_mingw_mac.h:132:11
pub const __MINGW_ASM_CALL = @compileError("unable to translate C expr: unexpected token '__asm__'"); // C:\zig\lib\libc\include\any-windows-any\_mingw_mac.h:140:9
pub const __MINGW_ASM_CRT_CALL = @compileError("unable to translate C expr: unexpected token '__asm__'"); // C:\zig\lib\libc\include\any-windows-any\_mingw_mac.h:141:9
pub const __WINT_TYPE__ = c_ushort;
pub const __MINGW_EXTENSION = @compileError("unable to translate C expr: unexpected token '__extension__'"); // C:\zig\lib\libc\include\any-windows-any\_mingw_mac.h:173:13
pub const __C89_NAMELESS = __MINGW_EXTENSION;
pub const __C89_NAMELESSSTRUCTNAME = "";
pub const __C89_NAMELESSSTRUCTNAME1 = "";
pub const __C89_NAMELESSSTRUCTNAME2 = "";
pub const __C89_NAMELESSSTRUCTNAME3 = "";
pub const __C89_NAMELESSSTRUCTNAME4 = "";
pub const __C89_NAMELESSSTRUCTNAME5 = "";
pub const __C89_NAMELESSUNIONNAME = "";
pub const __C89_NAMELESSUNIONNAME1 = "";
pub const __C89_NAMELESSUNIONNAME2 = "";
pub const __C89_NAMELESSUNIONNAME3 = "";
pub const __C89_NAMELESSUNIONNAME4 = "";
pub const __C89_NAMELESSUNIONNAME5 = "";
pub const __C89_NAMELESSUNIONNAME6 = "";
pub const __C89_NAMELESSUNIONNAME7 = "";
pub const __C89_NAMELESSUNIONNAME8 = "";
pub const __GNU_EXTENSION = __MINGW_EXTENSION;
pub const __MINGW_HAVE_ANSI_C99_PRINTF = @as(c_int, 1);
pub const __MINGW_HAVE_WIDE_C99_PRINTF = @as(c_int, 1);
pub const __MINGW_HAVE_ANSI_C99_SCANF = @as(c_int, 1);
pub const __MINGW_HAVE_WIDE_C99_SCANF = @as(c_int, 1);
pub const __MINGW_POISON_NAME = @compileError("unable to translate macro: undefined identifier `_layout_has_not_been_verified_and_its_declaration_is_most_likely_incorrect`"); // C:\zig\lib\libc\include\any-windows-any\_mingw_mac.h:213:11
pub const __MSABI_LONG = __helpers.L_SUFFIX;
pub const __MINGW_GCC_VERSION = ((__GNUC__ * @as(c_int, 10000)) + (__GNUC_MINOR__ * @as(c_int, 100))) + __GNUC_PATCHLEVEL__;
pub inline fn __MINGW_GNUC_PREREQ(major: anytype, minor: anytype) @TypeOf((__GNUC__ > major) or ((__GNUC__ == major) and (__GNUC_MINOR__ >= minor))) {
    _ = &major;
    _ = &minor;
    return (__GNUC__ > major) or ((__GNUC__ == major) and (__GNUC_MINOR__ >= minor));
}
pub inline fn __MINGW_MSC_PREREQ(major: anytype, minor: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &major;
    _ = &minor;
    return @as(c_int, 0);
}
pub inline fn __MINGW_ATTRIB_DEPRECATED_STR(X: anytype) void {
    _ = &X;
    return;
}
pub const __MINGW_SEC_WARN_STR = "This function or variable may be unsafe, use _CRT_SECURE_NO_WARNINGS to disable deprecation";
pub const __MINGW_MSVC2005_DEPREC_STR = "This POSIX function is deprecated beginning in Visual C++ 2005, use _CRT_NONSTDC_NO_DEPRECATE to disable deprecation";
pub const __MINGW_ATTRIB_DEPRECATED_MSVC2005 = __MINGW_ATTRIB_DEPRECATED_STR(__MINGW_MSVC2005_DEPREC_STR);
pub const __MINGW_ATTRIB_DEPRECATED_SEC_WARN = __MINGW_ATTRIB_DEPRECATED_STR(__MINGW_SEC_WARN_STR);
pub const __MINGW_MS_PRINTF = @compileError("unable to translate macro: undefined identifier `__format__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw_mac.h:293:9
pub const __MINGW_MS_SCANF = @compileError("unable to translate macro: undefined identifier `__format__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw_mac.h:296:9
pub const __MINGW_GNU_PRINTF = @compileError("unable to translate macro: undefined identifier `__format__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw_mac.h:299:9
pub const __MINGW_GNU_SCANF = @compileError("unable to translate macro: undefined identifier `__format__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw_mac.h:302:9
pub const __mingw_ovr = @compileError("unable to translate macro: undefined identifier `__unused__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw_mac.h:311:11
pub const __mingw_attribute_artificial = @compileError("unable to translate macro: undefined identifier `__artificial__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw_mac.h:318:11
pub const __MINGW_SELECTANY = @compileError("unable to translate macro: undefined identifier `__selectany__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw_mac.h:324:9
pub const __MINGW_FORTIFY_LEVEL = @as(c_int, 0);
pub const __mingw_bos_ovr = __mingw_ovr;
pub const __MINGW_FORTIFY_VA_ARG = @as(c_int, 0);
pub const _INC_MINGW_SECAPI = "";
pub const _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES_MEMORY = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_COUNT = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY = @as(c_int, 0);
pub const __MINGW_CRT_NAME_CONCAT2 = @compileError("unable to translate macro: undefined identifier `_s`"); // C:\zig\lib\libc\include\any-windows-any\_mingw_secapi.h:41:9
pub const __CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY_0_3_ = @compileError("unable to translate C expr: unexpected token ''"); // C:\zig\lib\libc\include\any-windows-any\_mingw_secapi.h:69:9
pub const __LONG32 = c_long;
pub const __MINGW_IMPORT = @compileError("unable to translate macro: undefined identifier `__dllimport__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:44:12
pub const __USE_CRTIMP = @as(c_int, 1);
pub const _CRTIMP = @compileError("unable to translate macro: undefined identifier `__dllimport__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:52:15
pub const __DECLSPEC_SUPPORTED = "";
pub const USE___UUIDOF = @as(c_int, 0);
pub const _inline = @compileError("unable to translate C expr: unexpected token '__inline'"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:74:9
pub const __CRT_INLINE = @compileError("unable to translate macro: undefined identifier `__gnu_inline__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:83:11
pub const __MINGW_INTRIN_INLINE = @compileError("unable to translate macro: undefined identifier `__always_inline__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:90:9
pub const __MINGW_CXX11_CONSTEXPR = "";
pub const __MINGW_CXX14_CONSTEXPR = "";
pub const __UNUSED_PARAM = @compileError("unable to translate macro: undefined identifier `__unused__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:118:11
pub const __restrict_arr = @compileError("unable to translate C expr: unexpected token '__restrict'"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:133:10
pub const __MINGW_ATTRIB_NORETURN = @compileError("unable to translate macro: undefined identifier `__noreturn__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:149:9
pub const __MINGW_ATTRIB_CONST = @compileError("unable to translate C expr: unexpected token '__attribute__'"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:150:9
pub const __MINGW_ATTRIB_MALLOC = @compileError("unable to translate macro: undefined identifier `__malloc__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:160:9
pub const __MINGW_ATTRIB_PURE = @compileError("unable to translate macro: undefined identifier `__pure__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:161:9
pub const __MINGW_ATTRIB_NONNULL = @compileError("unable to translate macro: undefined identifier `__nonnull__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:174:9
pub const __MINGW_ATTRIB_UNUSED = @compileError("unable to translate macro: undefined identifier `__unused__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:180:9
pub const __MINGW_ATTRIB_USED = @compileError("unable to translate macro: undefined identifier `__used__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:186:9
pub const __MINGW_ATTRIB_DEPRECATED = @compileError("unable to translate macro: undefined identifier `__deprecated__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:187:9
pub const __MINGW_ATTRIB_DEPRECATED_MSG = @compileError("unable to translate macro: undefined identifier `__deprecated__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:189:9
pub const __MINGW_NOTHROW = @compileError("unable to translate macro: undefined identifier `__nothrow__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:204:9
pub const __MINGW_ATTRIB_NO_OPTIMIZE = @compileError("unable to translate macro: undefined identifier `__optimize__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:212:9
pub const __MINGW_PRAGMA_PARAM = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:218:9
pub const __MINGW_BROKEN_INTERFACE = @compileError("unable to translate macro: undefined identifier `message`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:225:9
pub const _UCRT = "";
pub inline fn __MINGW_UCRT_ASM_CALL(func: anytype) @TypeOf(__MINGW_ASM_CALL(func)) {
    _ = &func;
    return __MINGW_ASM_CALL(func);
}
pub const _INT128_DEFINED = "";
pub const __int8 = u8;
pub const __int16 = c_short;
pub const __int32 = c_int;
pub const __int64 = c_longlong;
pub const __ptr32 = "";
pub const __ptr64 = "";
pub const __unaligned = "";
pub const __w64 = "";
pub const __forceinline = @compileError("unable to translate macro: undefined identifier `__always_inline__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:290:9
pub const __nothrow = "";
pub const _INC_VADEFS = "";
pub const MINGW_SDK_INIT = "";
pub const MINGW_HAS_SECURE_API = @as(c_int, 1);
pub const __STDC_SECURE_LIB__ = @as(c_long, 200411);
pub const __GOT_SECURE_LIB__ = __STDC_SECURE_LIB__;
pub const MINGW_DDK_H = "";
pub const MINGW_HAS_DDK_H = @as(c_int, 1);
pub const __GNUC_VA_LIST = "";
pub const _VA_LIST_DEFINED = "";
pub inline fn _ADDRESSOF(v: anytype) @TypeOf(&v) {
    _ = &v;
    return &v;
}
pub const _crt_va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`"); // C:\zig\lib\libc\include\any-windows-any\vadefs.h:48:9
pub const _crt_va_arg = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg`"); // C:\zig\lib\libc\include\any-windows-any\vadefs.h:49:9
pub const _crt_va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`"); // C:\zig\lib\libc\include\any-windows-any\vadefs.h:50:9
pub const _crt_va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // C:\zig\lib\libc\include\any-windows-any\vadefs.h:51:9
pub const __CRT_STRINGIZE = @compileError("unable to translate C expr: unexpected token ''"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:309:9
pub inline fn _CRT_STRINGIZE(_Value: anytype) @TypeOf(__CRT_STRINGIZE(_Value)) {
    _ = &_Value;
    return __CRT_STRINGIZE(_Value);
}
pub const __CRT_WIDE = @compileError("unable to translate macro: undefined identifier `L`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:314:9
pub inline fn _CRT_WIDE(_String: anytype) @TypeOf(__CRT_WIDE(_String)) {
    _ = &_String;
    return __CRT_WIDE(_String);
}
pub const _W64 = "";
pub const _CRTIMP_NOIA64 = _CRTIMP;
pub const _CRTIMP2 = _CRTIMP;
pub const _CRTIMP_ALTERNATIVE = _CRTIMP;
pub const _CRT_ALTERNATIVE_IMPORTED = "";
pub const _MRTIMP2 = _CRTIMP;
pub const _DLL = "";
pub const _MT = "";
pub const _MCRTIMP = _CRTIMP;
pub const _CRTIMP_PURE = _CRTIMP;
pub const _PGLOBAL = "";
pub const _AGLOBAL = "";
pub const _SECURECRT_FILL_BUFFER_PATTERN = @as(c_int, 0xFD);
pub const _CRT_DEPRECATE_TEXT = @compileError("unable to translate macro: undefined identifier `deprecated`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:373:9
pub inline fn _CRT_INSECURE_DEPRECATE_MEMORY(_Replacement: anytype) void {
    _ = &_Replacement;
    return;
}
pub inline fn _CRT_INSECURE_DEPRECATE_GLOBALS(_Replacement: anytype) void {
    _ = &_Replacement;
    return;
}
pub const _CRT_MANAGED_HEAP_DEPRECATE = "";
pub inline fn _CRT_OBSOLETE(_NewItem: anytype) void {
    _ = &_NewItem;
    return;
}
pub const _CONST_RETURN = "";
pub const UNALIGNED = "";
pub const _CRT_ALIGN = @compileError("unable to translate macro: undefined identifier `__aligned__`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:415:9
pub const __CRTDECL = @compileError("unable to translate C expr: unexpected token '__cdecl'"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:422:9
pub const _ARGMAX = @as(c_int, 100);
pub const _TRUNCATE = __helpers.cast(usize, -@as(c_int, 1));
pub inline fn _CRT_UNUSED(x: anytype) anyopaque {
    _ = &x;
    return __helpers.cast(anyopaque, x);
}
pub const __USE_MINGW_ANSI_STDIO = @as(c_int, 0);
pub const _CRT_glob = @compileError("unable to translate macro: undefined identifier `_dowildcard`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:479:9
pub const __ANONYMOUS_DEFINED = "";
pub const _ANONYMOUS_UNION = __MINGW_EXTENSION;
pub const _ANONYMOUS_STRUCT = __MINGW_EXTENSION;
pub inline fn _UNION_NAME(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn _STRUCT_NAME(x: anytype) void {
    _ = &x;
    return;
}
pub const DUMMYUNIONNAME = "";
pub const DUMMYUNIONNAME1 = "";
pub const DUMMYUNIONNAME2 = "";
pub const DUMMYUNIONNAME3 = "";
pub const DUMMYUNIONNAME4 = "";
pub const DUMMYUNIONNAME5 = "";
pub const DUMMYUNIONNAME6 = "";
pub const DUMMYUNIONNAME7 = "";
pub const DUMMYUNIONNAME8 = "";
pub const DUMMYUNIONNAME9 = "";
pub const DUMMYSTRUCTNAME = "";
pub const DUMMYSTRUCTNAME1 = "";
pub const DUMMYSTRUCTNAME2 = "";
pub const DUMMYSTRUCTNAME3 = "";
pub const DUMMYSTRUCTNAME4 = "";
pub const DUMMYSTRUCTNAME5 = "";
pub inline fn __CRT_UUID_DECL(@"type": anytype, l: anytype, w1: anytype, w2: anytype, b1: anytype, b2: anytype, b3: anytype, b4: anytype, b5: anytype, b6: anytype, b7: anytype, b8: anytype) void {
    _ = &@"type";
    _ = &l;
    _ = &w1;
    _ = &w2;
    _ = &b1;
    _ = &b2;
    _ = &b3;
    _ = &b4;
    _ = &b5;
    _ = &b6;
    _ = &b7;
    _ = &b8;
    return;
}
pub const __MINGW_DEBUGBREAK_IMPL = @compileError("unable to translate macro: undefined identifier `__debugbreak`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:599:9
pub const __MINGW_FASTFAIL_IMPL = @compileError("unable to translate macro: undefined identifier `__fastfail`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:620:9
pub const __MINGW_PREFETCH_IMPL = @compileError("unable to translate macro: undefined identifier `__prefetch`"); // C:\zig\lib\libc\include\any-windows-any\_mingw.h:644:9
pub const _CRT_PACKING = @as(c_int, 8);
pub const _CRTNOALIAS = "";
pub const _CRTRESTRICT = "";
pub const _SIZE_T_DEFINED = "";
pub const _SSIZE_T_DEFINED = "";
pub const _RSIZE_T_DEFINED = "";
pub const _INTPTR_T_DEFINED = "";
pub const __intptr_t_defined = "";
pub const _UINTPTR_T_DEFINED = "";
pub const __uintptr_t_defined = "";
pub const _PTRDIFF_T_DEFINED = "";
pub const _PTRDIFF_T_ = "";
pub const _WCHAR_T_DEFINED = "";
pub const _WCTYPE_T_DEFINED = "";
pub const _WINT_T = "";
pub const _ERRCODE_DEFINED = "";
pub const _TIME32_T_DEFINED = "";
pub const _TIME64_T_DEFINED = "";
pub const _TIME_T_DEFINED = "";
pub const _CRT_SECURE_CPP_NOTHROW = @compileError("unable to translate macro: undefined identifier `throw`"); // C:\zig\lib\libc\include\any-windows-any\corecrt.h:143:9
pub inline fn __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0(__ret: anytype, __func: anytype, __dsttype: anytype, __dst: anytype) void {
    _ = &__ret;
    _ = &__func;
    _ = &__dsttype;
    _ = &__dst;
    return;
}
pub inline fn __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1(__ret: anytype, __func: anytype, __dsttype: anytype, __dst: anytype, __type1: anytype, __arg1: anytype) void {
    _ = &__ret;
    _ = &__func;
    _ = &__dsttype;
    _ = &__dst;
    _ = &__type1;
    _ = &__arg1;
    return;
}
pub inline fn __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(__ret: anytype, __func: anytype, __dsttype: anytype, __dst: anytype, __type1: anytype, __arg1: anytype, __type2: anytype, __arg2: anytype) void {
    _ = &__ret;
    _ = &__func;
    _ = &__dsttype;
    _ = &__dst;
    _ = &__type1;
    _ = &__arg1;
    _ = &__type2;
    _ = &__arg2;
    return;
}
pub inline fn __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3(__ret: anytype, __func: anytype, __dsttype: anytype, __dst: anytype, __type1: anytype, __arg1: anytype, __type2: anytype, __arg2: anytype, __type3: anytype, __arg3: anytype) void {
    _ = &__ret;
    _ = &__func;
    _ = &__dsttype;
    _ = &__dst;
    _ = &__type1;
    _ = &__arg1;
    _ = &__type2;
    _ = &__arg2;
    _ = &__type3;
    _ = &__arg3;
    return;
}
pub inline fn __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4(__ret: anytype, __func: anytype, __dsttype: anytype, __dst: anytype, __type1: anytype, __arg1: anytype, __type2: anytype, __arg2: anytype, __type3: anytype, __arg3: anytype, __type4: anytype, __arg4: anytype) void {
    _ = &__ret;
    _ = &__func;
    _ = &__dsttype;
    _ = &__dst;
    _ = &__type1;
    _ = &__arg1;
    _ = &__type2;
    _ = &__arg2;
    _ = &__type3;
    _ = &__arg3;
    _ = &__type4;
    _ = &__arg4;
    return;
}
pub inline fn __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1(__ret: anytype, __func: anytype, __type0: anytype, __arg0: anytype, __dsttype: anytype, __dst: anytype, __type1: anytype, __arg1: anytype) void {
    _ = &__ret;
    _ = &__func;
    _ = &__type0;
    _ = &__arg0;
    _ = &__dsttype;
    _ = &__dst;
    _ = &__type1;
    _ = &__arg1;
    return;
}
pub inline fn __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2(__ret: anytype, __func: anytype, __type0: anytype, __arg0: anytype, __dsttype: anytype, __dst: anytype, __type1: anytype, __arg1: anytype, __type2: anytype, __arg2: anytype) void {
    _ = &__ret;
    _ = &__func;
    _ = &__type0;
    _ = &__arg0;
    _ = &__dsttype;
    _ = &__dst;
    _ = &__type1;
    _ = &__arg1;
    _ = &__type2;
    _ = &__arg2;
    return;
}
pub inline fn __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(__ret: anytype, __func: anytype, __type0: anytype, __arg0: anytype, __dsttype: anytype, __dst: anytype, __type1: anytype, __arg1: anytype, __type2: anytype, __arg2: anytype, __type3: anytype, __arg3: anytype) void {
    _ = &__ret;
    _ = &__func;
    _ = &__type0;
    _ = &__arg0;
    _ = &__dsttype;
    _ = &__dst;
    _ = &__type1;
    _ = &__arg1;
    _ = &__type2;
    _ = &__arg2;
    _ = &__type3;
    _ = &__arg3;
    return;
}
pub inline fn __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0(__ret: anytype, __func: anytype, __type1: anytype, __arg1: anytype, __type2: anytype, __arg2: anytype, __dsttype: anytype, __dst: anytype) void {
    _ = &__ret;
    _ = &__func;
    _ = &__type1;
    _ = &__arg1;
    _ = &__type2;
    _ = &__arg2;
    _ = &__dsttype;
    _ = &__dst;
    return;
}
pub inline fn __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST(__ret: anytype, __func: anytype, __vfunc: anytype, __dsttype: anytype, __dst: anytype, __type1: anytype, __arg1: anytype) void {
    _ = &__ret;
    _ = &__func;
    _ = &__vfunc;
    _ = &__dsttype;
    _ = &__dst;
    _ = &__type1;
    _ = &__arg1;
    return;
}
pub inline fn __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST(__ret: anytype, __func: anytype, __vfunc: anytype, __dsttype: anytype, __dst: anytype, __type1: anytype, __arg1: anytype, __type2: anytype, __arg2: anytype) void {
    _ = &__ret;
    _ = &__func;
    _ = &__vfunc;
    _ = &__dsttype;
    _ = &__dst;
    _ = &__type1;
    _ = &__arg1;
    _ = &__type2;
    _ = &__arg2;
    return;
}
pub inline fn __DEFINE_CPP_OVERLOAD_SECURE_FUNC_SPLITPATH(__ret: anytype, __func: anytype, __dsttype: anytype, __src: anytype) void {
    _ = &__ret;
    _ = &__func;
    _ = &__dsttype;
    _ = &__src;
    return;
}
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 = @compileError("unable to translate macro: undefined identifier `__func_name`"); // C:\zig\lib\libc\include\any-windows-any\corecrt.h:277:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 = @compileError("unable to translate macro: undefined identifier `__func_name`"); // C:\zig\lib\libc\include\any-windows-any\corecrt.h:279:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2 = @compileError("unable to translate macro: undefined identifier `__func_name`"); // C:\zig\lib\libc\include\any-windows-any\corecrt.h:281:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_3 = @compileError("unable to translate macro: undefined identifier `__func_name`"); // C:\zig\lib\libc\include\any-windows-any\corecrt.h:283:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4 = @compileError("unable to translate macro: undefined identifier `__func_name`"); // C:\zig\lib\libc\include\any-windows-any\corecrt.h:285:9
pub inline fn __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0_EX(__ret_type: anytype, __ret_policy: anytype, __decl_spec: anytype, __name: anytype, __sec_name: anytype, __dst_attr: anytype, __dst_type: anytype, __dst: anytype) void {
    _ = &__ret_type;
    _ = &__ret_policy;
    _ = &__decl_spec;
    _ = &__name;
    _ = &__sec_name;
    _ = &__dst_attr;
    _ = &__dst_type;
    _ = &__dst;
    return;
}
pub inline fn __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX(__ret_type: anytype, __ret_policy: anytype, __decl_spec: anytype, __name: anytype, __sec_name: anytype, __dst_attr: anytype, __dst_type: anytype, __dst: anytype, __arg1_type: anytype, __arg1: anytype) void {
    _ = &__ret_type;
    _ = &__ret_policy;
    _ = &__decl_spec;
    _ = &__name;
    _ = &__sec_name;
    _ = &__dst_attr;
    _ = &__dst_type;
    _ = &__dst;
    _ = &__arg1_type;
    _ = &__arg1;
    return;
}
pub inline fn __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_EX(__ret_type: anytype, __ret_policy: anytype, __decl_spec: anytype, __name: anytype, __sec_name: anytype, __dst_attr: anytype, __dst_type: anytype, __dst: anytype, __arg1_type: anytype, __arg1: anytype, __arg2_type: anytype, __arg2: anytype) void {
    _ = &__ret_type;
    _ = &__ret_policy;
    _ = &__decl_spec;
    _ = &__name;
    _ = &__sec_name;
    _ = &__dst_attr;
    _ = &__dst_type;
    _ = &__dst;
    _ = &__arg1_type;
    _ = &__arg1;
    _ = &__arg2_type;
    _ = &__arg2;
    return;
}
pub inline fn __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_3_EX(__ret_type: anytype, __ret_policy: anytype, __decl_spec: anytype, __name: anytype, __sec_name: anytype, __dst_attr: anytype, __dst_type: anytype, __dst: anytype, __arg1_type: anytype, __arg1: anytype, __arg2_type: anytype, __arg2: anytype, __arg3_type: anytype, __arg3: anytype) void {
    _ = &__ret_type;
    _ = &__ret_policy;
    _ = &__decl_spec;
    _ = &__name;
    _ = &__sec_name;
    _ = &__dst_attr;
    _ = &__dst_type;
    _ = &__dst;
    _ = &__arg1_type;
    _ = &__arg1;
    _ = &__arg2_type;
    _ = &__arg2;
    _ = &__arg3_type;
    _ = &__arg3;
    return;
}
pub inline fn __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4_EX(__ret_type: anytype, __ret_policy: anytype, __decl_spec: anytype, __name: anytype, __sec_name: anytype, __dst_attr: anytype, __dst_type: anytype, __dst: anytype, __arg1_type: anytype, __arg1: anytype, __arg2_type: anytype, __arg2: anytype, __arg3_type: anytype, __arg3: anytype, __arg4_type: anytype, __arg4: anytype) void {
    _ = &__ret_type;
    _ = &__ret_policy;
    _ = &__decl_spec;
    _ = &__name;
    _ = &__sec_name;
    _ = &__dst_attr;
    _ = &__dst_type;
    _ = &__dst;
    _ = &__arg1_type;
    _ = &__arg1;
    _ = &__arg2_type;
    _ = &__arg2;
    _ = &__arg3_type;
    _ = &__arg3;
    _ = &__arg4_type;
    _ = &__arg4;
    return;
}
pub const _TAGLC_ID_DEFINED = "";
pub const _THREADLOCALEINFO = "";
pub inline fn __crt_typefix(ctype: anytype) void {
    _ = &ctype;
    return;
}
pub const _CRT_USE_WINAPI_FAMILY_DESKTOP_APP = "";
pub const __need_wint_t = "";
pub const __need_wchar_t = "";
pub const INT8_MIN = -@as(c_int, 128);
pub const INT16_MIN = -__helpers.promoteIntLiteral(c_int, 32768, .decimal);
pub const INT32_MIN = -__helpers.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT64_MIN = -@as(c_longlong, 9223372036854775807) - @as(c_int, 1);
pub const INT8_MAX = @as(c_int, 127);
pub const INT16_MAX = @as(c_int, 32767);
pub const INT32_MAX = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT64_MAX = @as(c_longlong, 9223372036854775807);
pub const UINT8_MAX = @as(c_int, 255);
pub const UINT16_MAX = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT32_MAX = __helpers.promoteIntLiteral(c_uint, 0xffffffff, .hex);
pub const UINT64_MAX = @as(c_ulonglong, 0xffffffffffffffff);
pub const INT_LEAST8_MIN = INT8_MIN;
pub const INT_LEAST16_MIN = INT16_MIN;
pub const INT_LEAST32_MIN = INT32_MIN;
pub const INT_LEAST64_MIN = INT64_MIN;
pub const INT_LEAST8_MAX = INT8_MAX;
pub const INT_LEAST16_MAX = INT16_MAX;
pub const INT_LEAST32_MAX = INT32_MAX;
pub const INT_LEAST64_MAX = INT64_MAX;
pub const UINT_LEAST8_MAX = UINT8_MAX;
pub const UINT_LEAST16_MAX = UINT16_MAX;
pub const UINT_LEAST32_MAX = UINT32_MAX;
pub const UINT_LEAST64_MAX = UINT64_MAX;
pub const INT_FAST8_MIN = INT8_MIN;
pub const INT_FAST16_MIN = INT16_MIN;
pub const INT_FAST32_MIN = INT32_MIN;
pub const INT_FAST64_MIN = INT64_MIN;
pub const INT_FAST8_MAX = INT8_MAX;
pub const INT_FAST16_MAX = INT16_MAX;
pub const INT_FAST32_MAX = INT32_MAX;
pub const INT_FAST64_MAX = INT64_MAX;
pub const UINT_FAST8_MAX = UINT8_MAX;
pub const UINT_FAST16_MAX = UINT16_MAX;
pub const UINT_FAST32_MAX = UINT32_MAX;
pub const UINT_FAST64_MAX = UINT64_MAX;
pub const INTPTR_MIN = INT64_MIN;
pub const INTPTR_MAX = INT64_MAX;
pub const UINTPTR_MAX = UINT64_MAX;
pub const INTMAX_MIN = INT64_MIN;
pub const INTMAX_MAX = INT64_MAX;
pub const UINTMAX_MAX = UINT64_MAX;
pub const PTRDIFF_MIN = INT64_MIN;
pub const PTRDIFF_MAX = INT64_MAX;
pub const SIG_ATOMIC_MIN = INT32_MIN;
pub const SIG_ATOMIC_MAX = INT32_MAX;
pub const SIZE_MAX = UINT64_MAX;
pub const WCHAR_MIN = @as(c_uint, 0);
pub const WCHAR_MAX = @as(c_uint, 0xffff);
pub const WINT_MIN = @as(c_uint, 0);
pub const WINT_MAX = @as(c_uint, 0xffff);
pub inline fn INT8_C(val: anytype) @TypeOf((INT_LEAST8_MAX - INT_LEAST8_MAX) + val) {
    _ = &val;
    return (INT_LEAST8_MAX - INT_LEAST8_MAX) + val;
}
pub inline fn INT16_C(val: anytype) @TypeOf((INT_LEAST16_MAX - INT_LEAST16_MAX) + val) {
    _ = &val;
    return (INT_LEAST16_MAX - INT_LEAST16_MAX) + val;
}
pub inline fn INT32_C(val: anytype) @TypeOf((INT_LEAST32_MAX - INT_LEAST32_MAX) + val) {
    _ = &val;
    return (INT_LEAST32_MAX - INT_LEAST32_MAX) + val;
}
pub const INT64_C = __helpers.LL_SUFFIX;
pub inline fn UINT8_C(val: anytype) @TypeOf(val) {
    _ = &val;
    return val;
}
pub inline fn UINT16_C(val: anytype) @TypeOf(val) {
    _ = &val;
    return val;
}
pub const UINT32_C = __helpers.U_SUFFIX;
pub const UINT64_C = __helpers.ULL_SUFFIX;
pub const INTMAX_C = __helpers.LL_SUFFIX;
pub const UINTMAX_C = __helpers.ULL_SUFFIX;
pub const _UI_EXTERN = @compileError("unable to translate C expr: unexpected token 'extern'"); // C:\Users\mohan\Developer\libui-ng\bindings\windows\ui.h:39:9
pub const _UI_ENUM = @compileError("unable to translate C expr: unexpected token 'typedef'"); // C:\Users\mohan\Developer\libui-ng\bindings\windows\ui.h:44:9
pub const uiPi = @as(f64, 3.14159265358979323846264338327950288419716939937510582097494459);
pub const uiDrawDefaultMiterLimit = @as(f64, 10.0);
pub const uiTableModelColumnNeverEditable = -@as(c_int, 1);
pub const uiTableModelColumnAlwaysEditable = -@as(c_int, 2);
pub const threadlocaleinfostruct = struct_threadlocaleinfostruct;
pub const threadmbcinfostruct = struct_threadmbcinfostruct;
pub const localeinfo_struct = struct_localeinfo_struct;
pub const tagLC_ID = struct_tagLC_ID;
pub const tm = struct_tm;
