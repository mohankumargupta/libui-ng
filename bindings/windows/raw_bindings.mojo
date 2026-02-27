from sys import ffi

@ffi.extern
struct uiArea:
    pass

@ffi.extern
struct uiAreaDrawParams:
    pass

@ffi.extern
struct uiAreaHandler:
    pass

@ffi.extern
struct uiAreaKeyEvent:
    pass

@ffi.extern
struct uiAreaMouseEvent:
    pass

@ffi.extern
struct uiAttribute:
    pass

@ffi.extern
struct uiAttributedString:
    pass

@ffi.extern
struct uiAttributedStringForEachAttributeFunc:
    pass

@ffi.extern
struct uiBox:
    pass

@ffi.extern
struct uiButton:
    pass

@ffi.extern
struct uiCheckbox:
    pass

@ffi.extern
struct uiColorButton:
    pass

@ffi.extern
struct uiCombobox:
    pass

@ffi.extern
struct uiControl:
    pass

@ffi.extern
struct uiDateTimePicker:
    pass

@ffi.extern
struct uiDrawBrush:
    pass

@ffi.extern
struct uiDrawBrushGradientStop:
    pass

@ffi.extern
struct uiDrawContext:
    pass

@ffi.extern
struct uiDrawMatrix:
    pass

@ffi.extern
struct uiDrawPath:
    pass

@ffi.extern
struct uiDrawStrokeParams:
    pass

@ffi.extern
struct uiDrawTextLayout:
    pass

@ffi.extern
struct uiDrawTextLayoutParams:
    pass

@ffi.extern
struct uiEditableCombobox:
    pass

@ffi.extern
struct uiEntry:
    pass

@ffi.extern
struct uiFontButton:
    pass

@ffi.extern
struct uiFontDescriptor:
    pass

@ffi.extern
struct uiForm:
    pass

@ffi.extern
struct uiGrid:
    pass

@ffi.extern
struct uiGroup:
    pass

@ffi.extern
struct uiImage:
    pass

@ffi.extern
struct uiInitOptions:
    pass

@ffi.extern
struct uiLabel:
    pass

@ffi.extern
struct uiMenu:
    pass

@ffi.extern
struct uiMenuItem:
    pass

@ffi.extern
struct uiMultilineEntry:
    pass

@ffi.extern
struct uiOpenTypeFeatures:
    pass

@ffi.extern
struct uiOpenTypeFeaturesForEachFunc:
    pass

@ffi.extern
struct uiProgressBar:
    pass

@ffi.extern
struct uiRadioButtons:
    pass

@ffi.extern
struct uiSeparator:
    pass

@ffi.extern
struct uiSlider:
    pass

@ffi.extern
struct uiSpinbox:
    pass

@ffi.extern
struct uiTab:
    pass

@ffi.extern
struct uiTable:
    pass

@ffi.extern
struct uiTableModel:
    pass

@ffi.extern
struct uiTableModelHandler:
    pass

@ffi.extern
struct uiTableParams:
    pass

@ffi.extern
struct uiTableSelection:
    pass

@ffi.extern
struct uiTableTextColumnOptionalParams:
    pass

@ffi.extern
struct uiTableValue:
    pass

@ffi.extern
struct uiWindow:
    pass

@ffi.extern
fn uiInit(options: Pointer[uiInitOptions]) -> Pointer[UInt8]:
    pass

@ffi.extern
fn uiUninit() -> None:
    pass

@ffi.extern
fn uiFreeInitError(err: Pointer[UInt8]) -> None:
    pass

@ffi.extern
fn uiMain() -> None:
    pass

@ffi.extern
fn uiMainSteps() -> None:
    pass

@ffi.extern
fn uiMainStep(wait: Int32) -> Int32:
    pass

@ffi.extern
fn uiQuit() -> None:
    pass

@ffi.extern
fn uiQueueMain(f: ?*const fn (data: Pointer[Any], data: Pointer[Any]) -> None:
    pass

@ffi.extern
fn uiTimer(milliseconds: Int32, f: ?*const fn (data: Pointer[Any], data: Pointer[Any]) -> None:
    pass

@ffi.extern
fn uiOnShouldQuit(f: ?*const fn (data: Pointer[Any], data: Pointer[Any]) -> None:
    pass

@ffi.extern
fn uiFreeText(text: Pointer[UInt8]) -> None:
    pass

@ffi.extern
fn uiControlDestroy(c: Pointer[uiControl]) -> None:
    pass

@ffi.extern
fn uiControlHandle(c: Pointer[uiControl]) -> UInt64:
    pass

@ffi.extern
fn uiControlParent(c: Pointer[uiControl]) -> Pointer[uiControl]:
    pass

@ffi.extern
fn uiControlSetParent(c: Pointer[uiControl], parent: Pointer[uiControl]) -> None:
    pass

@ffi.extern
fn uiControlToplevel(c: Pointer[uiControl]) -> Int32:
    pass

@ffi.extern
fn uiControlVisible(c: Pointer[uiControl]) -> Int32:
    pass

@ffi.extern
fn uiControlShow(c: Pointer[uiControl]) -> None:
    pass

@ffi.extern
fn uiControlHide(c: Pointer[uiControl]) -> None:
    pass

@ffi.extern
fn uiControlEnabled(c: Pointer[uiControl]) -> Int32:
    pass

@ffi.extern
fn uiControlEnable(c: Pointer[uiControl]) -> None:
    pass

@ffi.extern
fn uiControlDisable(c: Pointer[uiControl]) -> None:
    pass

@ffi.extern
fn uiAllocControl(n: UInt64, OSsig: UInt32, typesig: UInt32, typenamestr: Pointer[UInt8]) -> Pointer[uiControl]:
    pass

@ffi.extern
fn uiFreeControl(c: Pointer[uiControl]) -> None:
    pass

@ffi.extern
fn uiControlVerifySetParent(c: Pointer[uiControl], parent: Pointer[uiControl]) -> None:
    pass

@ffi.extern
fn uiControlEnabledToUser(c: Pointer[uiControl]) -> Int32:
    pass

@ffi.extern
fn uiUserBugCannotSetParentOnToplevel(@"type": Pointer[UInt8]) -> None:
    pass

@ffi.extern
fn uiWindowTitle(w: Pointer[uiWindow]) -> Pointer[UInt8]:
    pass

@ffi.extern
fn uiWindowSetTitle(w: Pointer[uiWindow], title: Pointer[UInt8]) -> None:
    pass

@ffi.extern
fn uiWindowPosition(w: Pointer[uiWindow], x: Pointer[Int32], y: Pointer[Int32]) -> None:
    pass

@ffi.extern
fn uiWindowSetPosition(w: Pointer[uiWindow], x: Int32, y: Int32) -> None:
    pass

@ffi.extern
fn uiWindowOnPositionChanged(w: Pointer[uiWindow], f: ?*const fn (sender: ?*uiWindow, senderData: Pointer[Any], data: Pointer[Any]) -> None:
    pass

@ffi.extern
fn uiWindowContentSize(w: Pointer[uiWindow], width: Pointer[Int32], height: Pointer[Int32]) -> None:
    pass

@ffi.extern
fn uiWindowSetContentSize(w: Pointer[uiWindow], width: Int32, height: Int32) -> None:
    pass

@ffi.extern
fn uiWindowFullscreen(w: Pointer[uiWindow]) -> Int32:
    pass

@ffi.extern
fn uiWindowSetFullscreen(w: Pointer[uiWindow], fullscreen: Int32) -> None:
    pass

@ffi.extern
fn uiWindowOnContentSizeChanged(w: Pointer[uiWindow], f: ?*const fn (sender: ?*uiWindow, senderData: Pointer[Any], data: Pointer[Any]) -> None:
    pass

@ffi.extern
fn uiWindowOnClosing(w: Pointer[uiWindow], f: ?*const fn (sender: ?*uiWindow, senderData: Pointer[Any], data: Pointer[Any]) -> None:
    pass

@ffi.extern
fn uiWindowOnFocusChanged(w: Pointer[uiWindow], f: ?*const fn (sender: ?*uiWindow, senderData: Pointer[Any], data: Pointer[Any]) -> None:
    pass

@ffi.extern
fn uiWindowFocused(w: Pointer[uiWindow]) -> Int32:
    pass

@ffi.extern
fn uiWindowBorderless(w: Pointer[uiWindow]) -> Int32:
    pass

@ffi.extern
fn uiWindowSetBorderless(w: Pointer[uiWindow], borderless: Int32) -> None:
    pass

@ffi.extern
fn uiWindowSetChild(w: Pointer[uiWindow], child: Pointer[uiControl]) -> None:
    pass

@ffi.extern
fn uiWindowMargined(w: Pointer[uiWindow]) -> Int32:
    pass

@ffi.extern
fn uiWindowSetMargined(w: Pointer[uiWindow], margined: Int32) -> None:
    pass

@ffi.extern
fn uiWindowResizeable(w: Pointer[uiWindow]) -> Int32:
    pass

@ffi.extern
fn uiWindowSetResizeable(w: Pointer[uiWindow], resizeable: Int32) -> None:
    pass

@ffi.extern
fn uiNewWindow(title: Pointer[UInt8], width: Int32, height: Int32, hasMenubar: Int32) -> Pointer[uiWindow]:
    pass

@ffi.extern
fn uiButtonText(b: Pointer[uiButton]) -> Pointer[UInt8]:
    pass

@ffi.extern
fn uiButtonSetText(b: Pointer[uiButton], text: Pointer[UInt8]) -> None:
    pass

@ffi.extern
fn uiButtonOnClicked(b: Pointer[uiButton], f: ?*const fn (sender: ?*uiButton, senderData: Pointer[Any], data: Pointer[Any]) -> None:
    pass

@ffi.extern
fn uiNewButton(text: Pointer[UInt8]) -> Pointer[uiButton]:
    pass

@ffi.extern
fn uiBoxAppend(b: Pointer[uiBox], child: Pointer[uiControl], stretchy: Int32) -> None:
    pass

@ffi.extern
fn uiBoxNumChildren(b: Pointer[uiBox]) -> Int32:
    pass

@ffi.extern
fn uiBoxDelete(b: Pointer[uiBox], index: Int32) -> None:
    pass

@ffi.extern
fn uiBoxPadded(b: Pointer[uiBox]) -> Int32:
    pass

@ffi.extern
fn uiBoxSetPadded(b: Pointer[uiBox], padded: Int32) -> None:
    pass

@ffi.extern
fn uiNewHorizontalBox() -> Pointer[uiBox]:
    pass

@ffi.extern
fn uiNewVerticalBox() -> Pointer[uiBox]:
    pass

@ffi.extern
fn uiCheckboxText(c: Pointer[uiCheckbox]) -> Pointer[UInt8]:
    pass

@ffi.extern
fn uiCheckboxSetText(c: Pointer[uiCheckbox], text: Pointer[UInt8]) -> None:
    pass

@ffi.extern
fn uiCheckboxOnToggled(c: Pointer[uiCheckbox], f: ?*const fn (sender: ?*uiCheckbox, senderData: Pointer[Any], data: Pointer[Any]) -> None:
    pass

@ffi.extern
fn uiCheckboxChecked(c: Pointer[uiCheckbox]) -> Int32:
    pass

@ffi.extern
fn uiCheckboxSetChecked(c: Pointer[uiCheckbox], checked: Int32) -> None:
    pass

@ffi.extern
fn uiNewCheckbox(text: Pointer[UInt8]) -> Pointer[uiCheckbox]:
    pass

@ffi.extern
fn uiEntryText(e: Pointer[uiEntry]) -> Pointer[UInt8]:
    pass

@ffi.extern
fn uiEntrySetText(e: Pointer[uiEntry], text: Pointer[UInt8]) -> None:
    pass

@ffi.extern
fn uiEntryOnChanged(e: Pointer[uiEntry], f: ?*const fn (sender: ?*uiEntry, senderData: Pointer[Any], data: Pointer[Any]) -> None:
    pass

@ffi.extern
fn uiEntryReadOnly(e: Pointer[uiEntry]) -> Int32:
    pass

@ffi.extern
fn uiEntrySetReadOnly(e: Pointer[uiEntry], readonly: Int32) -> None:
    pass

@ffi.extern
fn uiNewEntry() -> Pointer[uiEntry]:
    pass

@ffi.extern
fn uiNewPasswordEntry() -> Pointer[uiEntry]:
    pass

@ffi.extern
fn uiNewSearchEntry() -> Pointer[uiEntry]:
    pass

@ffi.extern
fn uiLabelText(l: Pointer[uiLabel]) -> Pointer[UInt8]:
    pass

@ffi.extern
fn uiLabelSetText(l: Pointer[uiLabel], text: Pointer[UInt8]) -> None:
    pass

@ffi.extern
fn uiNewLabel(text: Pointer[UInt8]) -> Pointer[uiLabel]:
    pass

@ffi.extern
fn uiTabSelected(t: Pointer[uiTab]) -> Int32:
    pass

@ffi.extern
fn uiTabSetSelected(t: Pointer[uiTab], index: Int32) -> None:
    pass

@ffi.extern
fn uiTabOnSelected(t: Pointer[uiTab], f: ?*const fn (sender: ?*uiTab, senderData: Pointer[Any], data: Pointer[Any]) -> None:
    pass

@ffi.extern
fn uiTabAppend(t: Pointer[uiTab], name: Pointer[UInt8], c: Pointer[uiControl]) -> None:
    pass

@ffi.extern
fn uiTabInsertAt(t: Pointer[uiTab], name: Pointer[UInt8], index: Int32, c: Pointer[uiControl]) -> None:
    pass

@ffi.extern
fn uiTabDelete(t: Pointer[uiTab], index: Int32) -> None:
    pass

@ffi.extern
fn uiTabNumPages(t: Pointer[uiTab]) -> Int32:
    pass

@ffi.extern
fn uiTabMargined(t: Pointer[uiTab], index: Int32) -> Int32:
    pass

@ffi.extern
fn uiTabSetMargined(t: Pointer[uiTab], index: Int32, margined: Int32) -> None:
    pass

@ffi.extern
fn uiNewTab() -> Pointer[uiTab]:
    pass

@ffi.extern
fn uiGroupTitle(g: Pointer[uiGroup]) -> Pointer[UInt8]:
    pass

@ffi.extern
fn uiGroupSetTitle(g: Pointer[uiGroup], title: Pointer[UInt8]) -> None:
    pass

@ffi.extern
fn uiGroupSetChild(g: Pointer[uiGroup], c: Pointer[uiControl]) -> None:
    pass

@ffi.extern
fn uiGroupMargined(g: Pointer[uiGroup]) -> Int32:
    pass

@ffi.extern
fn uiGroupSetMargined(g: Pointer[uiGroup], margined: Int32) -> None:
    pass

@ffi.extern
fn uiNewGroup(title: Pointer[UInt8]) -> Pointer[uiGroup]:
    pass

@ffi.extern
fn uiSpinboxValue(s: Pointer[uiSpinbox]) -> Int32:
    pass

@ffi.extern
fn uiSpinboxSetValue(s: Pointer[uiSpinbox], value: Int32) -> None:
    pass

@ffi.extern
fn uiSpinboxOnChanged(s: Pointer[uiSpinbox], f: ?*const fn (sender: ?*uiSpinbox, senderData: Pointer[Any], data: Pointer[Any]) -> None:
    pass

@ffi.extern
fn uiNewSpinbox(min: Int32, max: Int32) -> Pointer[uiSpinbox]:
    pass

@ffi.extern
fn uiSliderValue(s: Pointer[uiSlider]) -> Int32:
    pass

@ffi.extern
fn uiSliderSetValue(s: Pointer[uiSlider], value: Int32) -> None:
    pass

@ffi.extern
fn uiSliderHasToolTip(s: Pointer[uiSlider]) -> Int32:
    pass

@ffi.extern
fn uiSliderSetHasToolTip(s: Pointer[uiSlider], hasToolTip: Int32) -> None:
    pass

@ffi.extern
fn uiSliderOnChanged(s: Pointer[uiSlider], f: ?*const fn (sender: ?*uiSlider, senderData: Pointer[Any], data: Pointer[Any]) -> None:
    pass

@ffi.extern
fn uiSliderOnReleased(s: Pointer[uiSlider], f: ?*const fn (sender: ?*uiSlider, senderData: Pointer[Any], data: Pointer[Any]) -> None:
    pass

@ffi.extern
fn uiSliderSetRange(s: Pointer[uiSlider], min: Int32, max: Int32) -> None:
    pass

@ffi.extern
fn uiNewSlider(min: Int32, max: Int32) -> Pointer[uiSlider]:
    pass

@ffi.extern
fn uiProgressBarValue(p: Pointer[uiProgressBar]) -> Int32:
    pass

@ffi.extern
fn uiProgressBarSetValue(p: Pointer[uiProgressBar], n: Int32) -> None:
    pass

@ffi.extern
fn uiNewProgressBar() -> Pointer[uiProgressBar]:
    pass

@ffi.extern
fn uiNewHorizontalSeparator() -> Pointer[uiSeparator]:
    pass

@ffi.extern
fn uiNewVerticalSeparator() -> Pointer[uiSeparator]:
    pass

@ffi.extern
fn uiComboboxAppend(c: Pointer[uiCombobox], text: Pointer[UInt8]) -> None:
    pass

@ffi.extern
fn uiComboboxInsertAt(c: Pointer[uiCombobox], index: Int32, text: Pointer[UInt8]) -> None:
    pass

@ffi.extern
fn uiComboboxDelete(c: Pointer[uiCombobox], index: Int32) -> None:
    pass

@ffi.extern
fn uiComboboxClear(c: Pointer[uiCombobox]) -> None:
    pass

@ffi.extern
fn uiComboboxNumItems(c: Pointer[uiCombobox]) -> Int32:
    pass

@ffi.extern
fn uiComboboxSelected(c: Pointer[uiCombobox]) -> Int32:
    pass

@ffi.extern
fn uiComboboxSetSelected(c: Pointer[uiCombobox], index: Int32) -> None:
    pass

@ffi.extern
fn uiComboboxOnSelected(c: Pointer[uiCombobox], f: ?*const fn (sender: ?*uiCombobox, senderData: Pointer[Any], data: Pointer[Any]) -> None:
    pass

@ffi.extern
fn uiNewCombobox() -> Pointer[uiCombobox]:
    pass

@ffi.extern
fn uiEditableComboboxAppend(c: Pointer[uiEditableCombobox], text: Pointer[UInt8]) -> None:
    pass

@ffi.extern
fn uiEditableComboboxText(c: Pointer[uiEditableCombobox]) -> Pointer[UInt8]:
    pass

@ffi.extern
fn uiEditableComboboxSetText(c: Pointer[uiEditableCombobox], text: Pointer[UInt8]) -> None:
    pass

@ffi.extern
fn uiEditableComboboxOnChanged(c: Pointer[uiEditableCombobox], f: ?*const fn (sender: ?*uiEditableCombobox, senderData: Pointer[Any], data: Pointer[Any]) -> None:
    pass

@ffi.extern
fn uiNewEditableCombobox() -> Pointer[uiEditableCombobox]:
    pass

@ffi.extern
fn uiRadioButtonsAppend(r: Pointer[uiRadioButtons], text: Pointer[UInt8]) -> None:
    pass

@ffi.extern
fn uiRadioButtonsSelected(r: Pointer[uiRadioButtons]) -> Int32:
    pass

@ffi.extern
fn uiRadioButtonsSetSelected(r: Pointer[uiRadioButtons], index: Int32) -> None:
    pass

@ffi.extern
fn uiRadioButtonsOnSelected(r: Pointer[uiRadioButtons], f: ?*const fn (sender: ?*uiRadioButtons, senderData: Pointer[Any], data: Pointer[Any]) -> None:
    pass

@ffi.extern
fn uiNewRadioButtons() -> Pointer[uiRadioButtons]:
    pass

@ffi.extern
fn uiDateTimePickerTime(d: Pointer[uiDateTimePicker], time: Pointer[struct_tm]) -> None:
    pass

@ffi.extern
fn uiDateTimePickerSetTime(d: Pointer[uiDateTimePicker], time: Pointer[struct_tm]) -> None:
    pass

@ffi.extern
fn uiDateTimePickerOnChanged(d: Pointer[uiDateTimePicker], f: ?*const fn (sender: ?*uiDateTimePicker, senderData: Pointer[Any], data: Pointer[Any]) -> None:
    pass

@ffi.extern
fn uiNewDateTimePicker() -> Pointer[uiDateTimePicker]:
    pass

@ffi.extern
fn uiNewDatePicker() -> Pointer[uiDateTimePicker]:
    pass

@ffi.extern
fn uiNewTimePicker() -> Pointer[uiDateTimePicker]:
    pass

@ffi.extern
fn uiMultilineEntryText(e: Pointer[uiMultilineEntry]) -> Pointer[UInt8]:
    pass

@ffi.extern
fn uiMultilineEntrySetText(e: Pointer[uiMultilineEntry], text: Pointer[UInt8]) -> None:
    pass

@ffi.extern
fn uiMultilineEntryAppend(e: Pointer[uiMultilineEntry], text: Pointer[UInt8]) -> None:
    pass

@ffi.extern
fn uiMultilineEntryOnChanged(e: Pointer[uiMultilineEntry], f: ?*const fn (sender: ?*uiMultilineEntry, senderData: Pointer[Any], data: Pointer[Any]) -> None:
    pass

@ffi.extern
fn uiMultilineEntryReadOnly(e: Pointer[uiMultilineEntry]) -> Int32:
    pass

@ffi.extern
fn uiMultilineEntrySetReadOnly(e: Pointer[uiMultilineEntry], readonly: Int32) -> None:
    pass

@ffi.extern
fn uiNewMultilineEntry() -> Pointer[uiMultilineEntry]:
    pass

@ffi.extern
fn uiNewNonWrappingMultilineEntry() -> Pointer[uiMultilineEntry]:
    pass

@ffi.extern
fn uiMenuItemEnable(m: Pointer[uiMenuItem]) -> None:
    pass

@ffi.extern
fn uiMenuItemDisable(m: Pointer[uiMenuItem]) -> None:
    pass

@ffi.extern
fn uiMenuItemOnClicked(m: Pointer[uiMenuItem], f: ?*const fn (sender: ?*uiMenuItem, window: ?*uiWindow, senderData: Pointer[Any], data: Pointer[Any]) -> None:
    pass

@ffi.extern
fn uiMenuItemChecked(m: Pointer[uiMenuItem]) -> Int32:
    pass

@ffi.extern
fn uiMenuItemSetChecked(m: Pointer[uiMenuItem], checked: Int32) -> None:
    pass

@ffi.extern
fn uiMenuAppendItem(m: Pointer[uiMenu], name: Pointer[UInt8]) -> Pointer[uiMenuItem]:
    pass

@ffi.extern
fn uiMenuAppendCheckItem(m: Pointer[uiMenu], name: Pointer[UInt8]) -> Pointer[uiMenuItem]:
    pass

@ffi.extern
fn uiMenuAppendQuitItem(m: Pointer[uiMenu]) -> Pointer[uiMenuItem]:
    pass

@ffi.extern
fn uiMenuAppendPreferencesItem(m: Pointer[uiMenu]) -> Pointer[uiMenuItem]:
    pass

@ffi.extern
fn uiMenuAppendAboutItem(m: Pointer[uiMenu]) -> Pointer[uiMenuItem]:
    pass

@ffi.extern
fn uiMenuAppendSeparator(m: Pointer[uiMenu]) -> None:
    pass

@ffi.extern
fn uiNewMenu(name: Pointer[UInt8]) -> Pointer[uiMenu]:
    pass

@ffi.extern
fn uiOpenFile(parent: Pointer[uiWindow]) -> Pointer[UInt8]:
    pass

@ffi.extern
fn uiOpenFolder(parent: Pointer[uiWindow]) -> Pointer[UInt8]:
    pass

@ffi.extern
fn uiSaveFile(parent: Pointer[uiWindow]) -> Pointer[UInt8]:
    pass

@ffi.extern
fn uiMsgBox(parent: Pointer[uiWindow], title: Pointer[UInt8], description: Pointer[UInt8]) -> None:
    pass

@ffi.extern
fn uiMsgBoxError(parent: Pointer[uiWindow], title: Pointer[UInt8], description: Pointer[UInt8]) -> None:
    pass

@ffi.extern
fn uiAreaSetSize(a: Pointer[uiArea], width: Int32, height: Int32) -> None:
    pass

@ffi.extern
fn uiAreaQueueRedrawAll(a: Pointer[uiArea]) -> None:
    pass

@ffi.extern
fn uiAreaScrollTo(a: Pointer[uiArea], x: Float64, y: Float64, width: Float64, height: Float64) -> None:
    pass

@ffi.extern
fn uiAreaBeginUserWindowMove(a: Pointer[uiArea]) -> None:
    pass

@ffi.extern
fn uiAreaBeginUserWindowResize(a: Pointer[uiArea], edge: uiWindowResizeEdge) -> None:
    pass

@ffi.extern
fn uiNewArea(ah: Pointer[uiAreaHandler]) -> Pointer[uiArea]:
    pass

@ffi.extern
fn uiNewScrollingArea(ah: Pointer[uiAreaHandler], width: Int32, height: Int32) -> Pointer[uiArea]:
    pass

@ffi.extern
fn uiDrawNewPath(fillMode: uiDrawFillMode) -> Pointer[uiDrawPath]:
    pass

@ffi.extern
fn uiDrawFreePath(p: Pointer[uiDrawPath]) -> None:
    pass

@ffi.extern
fn uiDrawPathNewFigure(p: Pointer[uiDrawPath], x: Float64, y: Float64) -> None:
    pass

@ffi.extern
fn uiDrawPathNewFigureWithArc(p: Pointer[uiDrawPath], xCenter: Float64, yCenter: Float64, radius: Float64, startAngle: Float64, sweep: Float64, negative: Int32) -> None:
    pass

@ffi.extern
fn uiDrawPathLineTo(p: Pointer[uiDrawPath], x: Float64, y: Float64) -> None:
    pass

@ffi.extern
fn uiDrawPathArcTo(p: Pointer[uiDrawPath], xCenter: Float64, yCenter: Float64, radius: Float64, startAngle: Float64, sweep: Float64, negative: Int32) -> None:
    pass

@ffi.extern
fn uiDrawPathBezierTo(p: Pointer[uiDrawPath], c1x: Float64, c1y: Float64, c2x: Float64, c2y: Float64, endX: Float64, endY: Float64) -> None:
    pass

@ffi.extern
fn uiDrawPathCloseFigure(p: Pointer[uiDrawPath]) -> None:
    pass

@ffi.extern
fn uiDrawPathAddRectangle(p: Pointer[uiDrawPath], x: Float64, y: Float64, width: Float64, height: Float64) -> None:
    pass

@ffi.extern
fn uiDrawPathEnded(p: Pointer[uiDrawPath]) -> Int32:
    pass

@ffi.extern
fn uiDrawPathEnd(p: Pointer[uiDrawPath]) -> None:
    pass

@ffi.extern
fn uiDrawStroke(c: Pointer[uiDrawContext], path: Pointer[uiDrawPath], b: Pointer[uiDrawBrush], p: Pointer[uiDrawStrokeParams]) -> None:
    pass

@ffi.extern
fn uiDrawFill(c: Pointer[uiDrawContext], path: Pointer[uiDrawPath], b: Pointer[uiDrawBrush]) -> None:
    pass

@ffi.extern
fn uiDrawMatrixSetIdentity(m: Pointer[uiDrawMatrix]) -> None:
    pass

@ffi.extern
fn uiDrawMatrixTranslate(m: Pointer[uiDrawMatrix], x: Float64, y: Float64) -> None:
    pass

@ffi.extern
fn uiDrawMatrixScale(m: Pointer[uiDrawMatrix], xCenter: Float64, yCenter: Float64, x: Float64, y: Float64) -> None:
    pass

@ffi.extern
fn uiDrawMatrixRotate(m: Pointer[uiDrawMatrix], x: Float64, y: Float64, amount: Float64) -> None:
    pass

@ffi.extern
fn uiDrawMatrixSkew(m: Pointer[uiDrawMatrix], x: Float64, y: Float64, xamount: Float64, yamount: Float64) -> None:
    pass

@ffi.extern
fn uiDrawMatrixMultiply(dest: Pointer[uiDrawMatrix], src: Pointer[uiDrawMatrix]) -> None:
    pass

@ffi.extern
fn uiDrawMatrixInvertible(m: Pointer[uiDrawMatrix]) -> Int32:
    pass

@ffi.extern
fn uiDrawMatrixInvert(m: Pointer[uiDrawMatrix]) -> Int32:
    pass

@ffi.extern
fn uiDrawMatrixTransformPoint(m: Pointer[uiDrawMatrix], x: Pointer[Float64], y: Pointer[Float64]) -> None:
    pass

@ffi.extern
fn uiDrawMatrixTransformSize(m: Pointer[uiDrawMatrix], x: Pointer[Float64], y: Pointer[Float64]) -> None:
    pass

@ffi.extern
fn uiDrawTransform(c: Pointer[uiDrawContext], m: Pointer[uiDrawMatrix]) -> None:
    pass

@ffi.extern
fn uiDrawClip(c: Pointer[uiDrawContext], path: Pointer[uiDrawPath]) -> None:
    pass

@ffi.extern
fn uiDrawSave(c: Pointer[uiDrawContext]) -> None:
    pass

@ffi.extern
fn uiDrawRestore(c: Pointer[uiDrawContext]) -> None:
    pass

@ffi.extern
fn uiFreeAttribute(a: Pointer[uiAttribute]) -> None:
    pass

@ffi.extern
fn uiAttributeGetType(a: Pointer[uiAttribute]) -> uiAttributeType:
    pass

@ffi.extern
fn uiNewFamilyAttribute(family: Pointer[UInt8]) -> Pointer[uiAttribute]:
    pass

@ffi.extern
fn uiAttributeFamily(a: Pointer[uiAttribute]) -> Pointer[UInt8]:
    pass

@ffi.extern
fn uiNewSizeAttribute(size: Float64) -> Pointer[uiAttribute]:
    pass

@ffi.extern
fn uiAttributeSize(a: Pointer[uiAttribute]) -> Float64:
    pass

@ffi.extern
fn uiNewWeightAttribute(weight: uiTextWeight) -> Pointer[uiAttribute]:
    pass

@ffi.extern
fn uiAttributeWeight(a: Pointer[uiAttribute]) -> uiTextWeight:
    pass

@ffi.extern
fn uiNewItalicAttribute(italic: uiTextItalic) -> Pointer[uiAttribute]:
    pass

@ffi.extern
fn uiAttributeItalic(a: Pointer[uiAttribute]) -> uiTextItalic:
    pass

@ffi.extern
fn uiNewStretchAttribute(stretch: uiTextStretch) -> Pointer[uiAttribute]:
    pass

@ffi.extern
fn uiAttributeStretch(a: Pointer[uiAttribute]) -> uiTextStretch:
    pass

@ffi.extern
fn uiNewColorAttribute(r: Float64, g: Float64, b: Float64, a: Float64) -> Pointer[uiAttribute]:
    pass

@ffi.extern
fn uiAttributeColor(a: Pointer[uiAttribute], r: Pointer[Float64], g: Pointer[Float64], b: Pointer[Float64], alpha: Pointer[Float64]) -> None:
    pass

@ffi.extern
fn uiNewBackgroundAttribute(r: Float64, g: Float64, b: Float64, a: Float64) -> Pointer[uiAttribute]:
    pass

@ffi.extern
fn uiNewUnderlineAttribute(u: uiUnderline) -> Pointer[uiAttribute]:
    pass

@ffi.extern
fn uiAttributeUnderline(a: Pointer[uiAttribute]) -> uiUnderline:
    pass

@ffi.extern
fn uiNewUnderlineColorAttribute(u: uiUnderlineColor, r: Float64, g: Float64, b: Float64, a: Float64) -> Pointer[uiAttribute]:
    pass

@ffi.extern
fn uiAttributeUnderlineColor(a: Pointer[uiAttribute], u: Pointer[uiUnderlineColor], r: Pointer[Float64], g: Pointer[Float64], b: Pointer[Float64], alpha: Pointer[Float64]) -> None:
    pass

@ffi.extern
fn uiNewOpenTypeFeatures() -> Pointer[uiOpenTypeFeatures]:
    pass

@ffi.extern
fn uiFreeOpenTypeFeatures(otf: Pointer[uiOpenTypeFeatures]) -> None:
    pass

@ffi.extern
fn uiOpenTypeFeaturesClone(otf: Pointer[uiOpenTypeFeatures]) -> Pointer[uiOpenTypeFeatures]:
    pass

@ffi.extern
fn uiOpenTypeFeaturesAdd(otf: Pointer[uiOpenTypeFeatures], a: UInt8, b: UInt8, c: UInt8, d: UInt8, value: UInt32) -> None:
    pass

@ffi.extern
fn uiOpenTypeFeaturesRemove(otf: Pointer[uiOpenTypeFeatures], a: UInt8, b: UInt8, c: UInt8, d: UInt8) -> None:
    pass

@ffi.extern
fn uiOpenTypeFeaturesGet(otf: Pointer[uiOpenTypeFeatures], a: UInt8, b: UInt8, c: UInt8, d: UInt8, value: Pointer[UInt32]) -> Int32:
    pass

@ffi.extern
fn uiOpenTypeFeaturesForEach(otf: Pointer[uiOpenTypeFeatures], f: uiOpenTypeFeaturesForEachFunc, data: Pointer[Any]) -> None:
    pass

@ffi.extern
fn uiNewFeaturesAttribute(otf: Pointer[uiOpenTypeFeatures]) -> Pointer[uiAttribute]:
    pass

@ffi.extern
fn uiAttributeFeatures(a: Pointer[uiAttribute]) -> Pointer[uiOpenTypeFeatures]:
    pass

@ffi.extern
fn uiNewAttributedString(initialString: Pointer[UInt8]) -> Pointer[uiAttributedString]:
    pass

@ffi.extern
fn uiFreeAttributedString(s: Pointer[uiAttributedString]) -> None:
    pass

@ffi.extern
fn uiAttributedStringString(s: Pointer[uiAttributedString]) -> Pointer[UInt8]:
    pass

@ffi.extern
fn uiAttributedStringLen(s: Pointer[uiAttributedString]) -> UInt64:
    pass

@ffi.extern
fn uiAttributedStringAppendUnattributed(s: Pointer[uiAttributedString], str: Pointer[UInt8]) -> None:
    pass

@ffi.extern
fn uiAttributedStringInsertAtUnattributed(s: Pointer[uiAttributedString], str: Pointer[UInt8], at: UInt64) -> None:
    pass

@ffi.extern
fn uiAttributedStringDelete(s: Pointer[uiAttributedString], start: UInt64, end: UInt64) -> None:
    pass

@ffi.extern
fn uiAttributedStringSetAttribute(s: Pointer[uiAttributedString], a: Pointer[uiAttribute], start: UInt64, end: UInt64) -> None:
    pass

@ffi.extern
fn uiAttributedStringForEachAttribute(s: Pointer[uiAttributedString], f: uiAttributedStringForEachAttributeFunc, data: Pointer[Any]) -> None:
    pass

@ffi.extern
fn uiAttributedStringNumGraphemes(s: Pointer[uiAttributedString]) -> UInt64:
    pass

@ffi.extern
fn uiAttributedStringByteIndexToGrapheme(s: Pointer[uiAttributedString], pos: UInt64) -> UInt64:
    pass

@ffi.extern
fn uiAttributedStringGraphemeToByteIndex(s: Pointer[uiAttributedString], pos: UInt64) -> UInt64:
    pass

@ffi.extern
fn uiLoadControlFont(f: Pointer[uiFontDescriptor]) -> None:
    pass

@ffi.extern
fn uiFreeFontDescriptor(desc: Pointer[uiFontDescriptor]) -> None:
    pass

@ffi.extern
fn uiDrawNewTextLayout(params: Pointer[uiDrawTextLayoutParams]) -> Pointer[uiDrawTextLayout]:
    pass

@ffi.extern
fn uiDrawFreeTextLayout(tl: Pointer[uiDrawTextLayout]) -> None:
    pass

@ffi.extern
fn uiDrawText(c: Pointer[uiDrawContext], tl: Pointer[uiDrawTextLayout], x: Float64, y: Float64) -> None:
    pass

@ffi.extern
fn uiDrawTextLayoutExtents(tl: Pointer[uiDrawTextLayout], width: Pointer[Float64], height: Pointer[Float64]) -> None:
    pass

@ffi.extern
fn uiFontButtonFont(b: Pointer[uiFontButton], desc: Pointer[uiFontDescriptor]) -> None:
    pass

@ffi.extern
fn uiFontButtonOnChanged(b: Pointer[uiFontButton], f: ?*const fn (sender: ?*uiFontButton, senderData: Pointer[Any], data: Pointer[Any]) -> None:
    pass

@ffi.extern
fn uiNewFontButton() -> Pointer[uiFontButton]:
    pass

@ffi.extern
fn uiFreeFontButtonFont(desc: Pointer[uiFontDescriptor]) -> None:
    pass

@ffi.extern
fn uiColorButtonColor(b: Pointer[uiColorButton], r: Pointer[Float64], g: Pointer[Float64], bl: Pointer[Float64], a: Pointer[Float64]) -> None:
    pass

@ffi.extern
fn uiColorButtonSetColor(b: Pointer[uiColorButton], r: Float64, g: Float64, bl: Float64, a: Float64) -> None:
    pass

@ffi.extern
fn uiColorButtonOnChanged(b: Pointer[uiColorButton], f: ?*const fn (sender: ?*uiColorButton, senderData: Pointer[Any], data: Pointer[Any]) -> None:
    pass

@ffi.extern
fn uiNewColorButton() -> Pointer[uiColorButton]:
    pass

@ffi.extern
fn uiFormAppend(f: Pointer[uiForm], label: Pointer[UInt8], c: Pointer[uiControl], stretchy: Int32) -> None:
    pass

@ffi.extern
fn uiFormNumChildren(f: Pointer[uiForm]) -> Int32:
    pass

@ffi.extern
fn uiFormDelete(f: Pointer[uiForm], index: Int32) -> None:
    pass

@ffi.extern
fn uiFormPadded(f: Pointer[uiForm]) -> Int32:
    pass

@ffi.extern
fn uiFormSetPadded(f: Pointer[uiForm], padded: Int32) -> None:
    pass

@ffi.extern
fn uiNewForm() -> Pointer[uiForm]:
    pass

@ffi.extern
fn uiGridAppend(g: Pointer[uiGrid], c: Pointer[uiControl], left: Int32, top: Int32, xspan: Int32, yspan: Int32, hexpand: Int32, halign: uiAlign, vexpand: Int32, valign: uiAlign) -> None:
    pass

@ffi.extern
fn uiGridInsertAt(g: Pointer[uiGrid], c: Pointer[uiControl], existing: Pointer[uiControl], at: uiAt, xspan: Int32, yspan: Int32, hexpand: Int32, halign: uiAlign, vexpand: Int32, valign: uiAlign) -> None:
    pass

@ffi.extern
fn uiGridPadded(g: Pointer[uiGrid]) -> Int32:
    pass

@ffi.extern
fn uiGridSetPadded(g: Pointer[uiGrid], padded: Int32) -> None:
    pass

@ffi.extern
fn uiNewGrid() -> Pointer[uiGrid]:
    pass

@ffi.extern
fn uiNewImage(width: Float64, height: Float64) -> Pointer[uiImage]:
    pass

@ffi.extern
fn uiFreeImage(i: Pointer[uiImage]) -> None:
    pass

@ffi.extern
fn uiImageAppend(i: Pointer[uiImage], pixels: Pointer[Any], pixelWidth: Int32, pixelHeight: Int32, byteStride: Int32) -> None:
    pass

@ffi.extern
fn uiFreeTableValue(v: Pointer[uiTableValue]) -> None:
    pass

@ffi.extern
fn uiTableValueGetType(v: Pointer[uiTableValue]) -> uiTableValueType:
    pass

@ffi.extern
fn uiNewTableValueString(str: Pointer[UInt8]) -> Pointer[uiTableValue]:
    pass

@ffi.extern
fn uiTableValueString(v: Pointer[uiTableValue]) -> Pointer[UInt8]:
    pass

@ffi.extern
fn uiNewTableValueImage(img: Pointer[uiImage]) -> Pointer[uiTableValue]:
    pass

@ffi.extern
fn uiTableValueImage(v: Pointer[uiTableValue]) -> Pointer[uiImage]:
    pass

@ffi.extern
fn uiNewTableValueInt(i: Int32) -> Pointer[uiTableValue]:
    pass

@ffi.extern
fn uiTableValueInt(v: Pointer[uiTableValue]) -> Int32:
    pass

@ffi.extern
fn uiNewTableValueColor(r: Float64, g: Float64, b: Float64, a: Float64) -> Pointer[uiTableValue]:
    pass

@ffi.extern
fn uiTableValueColor(v: Pointer[uiTableValue], r: Pointer[Float64], g: Pointer[Float64], b: Pointer[Float64], a: Pointer[Float64]) -> None:
    pass

@ffi.extern
fn uiNewTableModel(mh: Pointer[uiTableModelHandler]) -> Pointer[uiTableModel]:
    pass

@ffi.extern
fn uiFreeTableModel(m: Pointer[uiTableModel]) -> None:
    pass

@ffi.extern
fn uiTableModelRowInserted(m: Pointer[uiTableModel], newIndex: Int32) -> None:
    pass

@ffi.extern
fn uiTableModelRowChanged(m: Pointer[uiTableModel], index: Int32) -> None:
    pass

@ffi.extern
fn uiTableModelRowDeleted(m: Pointer[uiTableModel], oldIndex: Int32) -> None:
    pass

@ffi.extern
fn uiTableAppendTextColumn(t: Pointer[uiTable], name: Pointer[UInt8], textModelColumn: Int32, textEditableModelColumn: Int32, textParams: Pointer[uiTableTextColumnOptionalParams]) -> None:
    pass

@ffi.extern
fn uiTableAppendImageColumn(t: Pointer[uiTable], name: Pointer[UInt8], imageModelColumn: Int32) -> None:
    pass

@ffi.extern
fn uiTableAppendImageTextColumn(t: Pointer[uiTable], name: Pointer[UInt8], imageModelColumn: Int32, textModelColumn: Int32, textEditableModelColumn: Int32, textParams: Pointer[uiTableTextColumnOptionalParams]) -> None:
    pass

@ffi.extern
fn uiTableAppendCheckboxColumn(t: Pointer[uiTable], name: Pointer[UInt8], checkboxModelColumn: Int32, checkboxEditableModelColumn: Int32) -> None:
    pass

@ffi.extern
fn uiTableAppendCheckboxTextColumn(t: Pointer[uiTable], name: Pointer[UInt8], checkboxModelColumn: Int32, checkboxEditableModelColumn: Int32, textModelColumn: Int32, textEditableModelColumn: Int32, textParams: Pointer[uiTableTextColumnOptionalParams]) -> None:
    pass

@ffi.extern
fn uiTableAppendProgressBarColumn(t: Pointer[uiTable], name: Pointer[UInt8], progressModelColumn: Int32) -> None:
    pass

@ffi.extern
fn uiTableAppendButtonColumn(t: Pointer[uiTable], name: Pointer[UInt8], buttonModelColumn: Int32, buttonClickableModelColumn: Int32) -> None:
    pass

@ffi.extern
fn uiTableHeaderVisible(t: Pointer[uiTable]) -> Int32:
    pass

@ffi.extern
fn uiTableHeaderSetVisible(t: Pointer[uiTable], visible: Int32) -> None:
    pass

@ffi.extern
fn uiNewTable(params: Pointer[uiTableParams]) -> Pointer[uiTable]:
    pass

@ffi.extern
fn uiTableOnRowClicked(t: Pointer[uiTable], f: ?*const fn (t: ?*uiTable, row: c_int, data: Pointer[Any], data: Pointer[Any]) -> None:
    pass

@ffi.extern
fn uiTableOnRowDoubleClicked(t: Pointer[uiTable], f: ?*const fn (t: ?*uiTable, row: c_int, data: Pointer[Any], data: Pointer[Any]) -> None:
    pass

@ffi.extern
fn uiTableHeaderSetSortIndicator(t: Pointer[uiTable], column: Int32, indicator: uiSortIndicator) -> None:
    pass

@ffi.extern
fn uiTableHeaderSortIndicator(t: Pointer[uiTable], column: Int32) -> uiSortIndicator:
    pass

@ffi.extern
fn uiTableHeaderOnClicked(t: Pointer[uiTable], f: ?*const fn (sender: ?*uiTable, column: c_int, senderData: Pointer[Any], data: Pointer[Any]) -> None:
    pass

@ffi.extern
fn uiTableColumnWidth(t: Pointer[uiTable], column: Int32) -> Int32:
    pass

@ffi.extern
fn uiTableColumnSetWidth(t: Pointer[uiTable], column: Int32, width: Int32) -> None:
    pass

@ffi.extern
fn uiTableGetSelectionMode(t: Pointer[uiTable]) -> uiTableSelectionMode:
    pass

@ffi.extern
fn uiTableSetSelectionMode(t: Pointer[uiTable], mode: uiTableSelectionMode) -> None:
    pass

@ffi.extern
fn uiTableOnSelectionChanged(t: Pointer[uiTable], f: ?*const fn (t: ?*uiTable, data: Pointer[Any], data: Pointer[Any]) -> None:
    pass

@ffi.extern
fn uiTableGetSelection(t: Pointer[uiTable]) -> Pointer[uiTableSelection]:
    pass

@ffi.extern
fn uiTableSetSelection(t: Pointer[uiTable], sel: Pointer[uiTableSelection]) -> None:
    pass

@ffi.extern
fn uiFreeTableSelection(s: Pointer[uiTableSelection]) -> None:
    pass

