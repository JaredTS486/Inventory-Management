unit Dymo_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 6/15/2006 9:50:49 AM from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files\DYMO Label\Dymolbl.exe (1)
// LIBID: {09DAFAE0-8EB0-11D2-8E5D-00A02415E90F}
// LCID: 0
// Helpfile: 
// HelpString: Dymo High-level OLE Library
// DepndLst: 
//   (1) v1.0 stdole, (C:\WINDOWS\System32\stdole32.tlb)
//   (2) v2.0 StdType, (C:\WINDOWS\System32\olepro32.dll)
// ************************************************************************ //
// *************************************************************************//
// NOTE:                                                                      
// Items guarded by $IFDEF_LIVE_SERVER_AT_DESIGN_TIME are used by properties  
// which return objects that may need to be explicitly created via a function 
// call prior to any access via the property. These items have been disabled  
// in order to prevent accidental use from within the object inspector. You   
// may enable them by defining LIVE_SERVER_AT_DESIGN_TIME or by selectively   
// removing them from the $IFDEF blocks. However, such items must still be    
// programmatically created via a method of the appropriate CoClass before    
// they can be used.                                                          
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, OleServer, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  DymoMajorVersion = 2;
  DymoMinorVersion = 0;

  LIBID_Dymo: TGUID = '{09DAFAE0-8EB0-11D2-8E5D-00A02415E90F}';

  IID_IDymoAddIn: TGUID = '{09DAFAE1-8EB0-11D2-8E5D-00A02415E90F}';
  IID_IDymoAddIn2: TGUID = '{BCABF570-E1B4-4D4A-B8B8-C46E632CF0B3}';
  IID_IDymoLabels: TGUID = '{3AAD7660-8F83-11D2-8E5D-00A02415E90F}';
  CLASS_DymoLabels: TGUID = '{3AAD7661-8F83-11D2-8E5D-00A02415E90F}';
  IID_IDymoAddIn3: TGUID = '{7E449759-5FB0-4CE6-AD4E-D7CD776A995D}';
  IID_IDymoShellExtensible: TGUID = '{01D0E518-DB81-4C93-BC72-340571D771B5}';
  IID_IDymoNotifyEvent: TGUID = '{6C596B29-E309-49F1-A9D4-CADFB411F44C}';
  IID_IDymoShell: TGUID = '{5E545AB2-7106-4A3D-A398-66319C88595F}';
  CLASS_DymoShell: TGUID = '{C6591821-CA09-4EBD-BFAA-B29DB551F363}';
  IID_IDymoShellMenu: TGUID = '{58726226-DCDE-41CF-AD79-7F8A89332E20}';
  CLASS_DymoShellMenu: TGUID = '{246B1812-AA66-4B8E-A2B2-35966EB70D8F}';
  IID_IDymoStatusBar: TGUID = '{8B361F44-1EFC-4FF3-B64B-DBDDC1B2291B}';
  CLASS_DymoStatusBar: TGUID = '{5265B5F9-E1B3-4BBE-B0B7-02660BEA94FA}';
  IID_IDymoSidebar: TGUID = '{437B2CF0-DFF1-41B5-8056-7C120C32D857}';
  CLASS_DymoSidebar: TGUID = '{A68F6412-6CD4-476F-A67C-F31A9900FCB6}';
  IID_IDymoToolbar: TGUID = '{3CBE571E-4291-4C11-A5DB-D08D9C73F6D5}';
  IID_IDymoToolbarObject: TGUID = '{1A7F2F9E-1FDC-48CF-B61C-E8EEEE72C54F}';
  CLASS_DymoToolbar: TGUID = '{890A5062-F1E9-4449-A036-4493E815BD80}';
  IID_IDymoRuler: TGUID = '{47386F50-AF0B-4AA5-B11D-574D27B4EC88}';
  CLASS_DymoRuler: TGUID = '{D0A06FFD-38BD-4CCC-8554-696A69AC7A5C}';
  IID_IDymoToolBtn: TGUID = '{5BC61055-2CBC-4725-A1E8-0E401114FB64}';
  CLASS_DymoToolBtn: TGUID = '{1F629C2B-88B0-46AE-8E01-BB24F6F87B8F}';
  IID_IDymoTBSpinCtrl: TGUID = '{41D47E64-5388-4DCE-8C41-F8112EB1520F}';
  CLASS_DymoTBSpinCtrl: TGUID = '{D6FC6B23-0196-4183-876F-E603FE87DA05}';
  IID_IDymoTBCmb: TGUID = '{B6F71C16-4927-404D-BC5E-6A6F146A530C}';
  CLASS_DymoTBCmb: TGUID = '{09B185EA-3FA8-402F-88E9-CAEBDDA22EDB}';
  IID_IDymoTBCmbEvent: TGUID = '{CDF12C32-E2FB-4509-AB83-152E10C72AAF}';
  IID_IDymoTBLabel: TGUID = '{FC9792DB-21B8-4021-965B-5299C4B943A2}';
  CLASS_DymoTBLabel: TGUID = '{F9E9D00E-63E1-45D2-96A5-E671D188F33A}';
  IID_IDymoTBRadioBtnGroup: TGUID = '{1216DF81-A9B6-4C42-9CAB-F7B20FAB576E}';
  CLASS_DymoTBRadioBtnGroup: TGUID = '{2D7FF4A4-D646-4C70-9403-80A5D189B794}';
  IID_IDymoTBGroupCtrlEvent: TGUID = '{A02AC14A-B260-453D-A41D-114ED9F678A5}';
  IID_IDymoTBCheckboxGroup: TGUID = '{0BE7E366-D4A6-4521-AE82-38CAF35AB0A1}';
  CLASS_DymoTBCheckboxGroup: TGUID = '{2796DC2A-82F2-42F4-A93B-E68B9950765A}';
  IID_IDymoMeasurementCtrl: TGUID = '{0554F428-1A4F-4C38-B5BB-222C64D5C279}';
  CLASS_DymoMeasurementCtrl: TGUID = '{722740A1-1D7D-49EF-8E80-89BFF88F4F79}';
  IID_IDymoTabStopEvent: TGUID = '{B0D75F3A-033F-4F47-8F00-A479EA42139D}';
  IID_IDymoTape: TGUID = '{37F075D4-37FE-43CF-9AE0-BA7F4136B470}';
  IID_IDymoTape2: TGUID = '{04C956F2-6DCD-46A0-AA58-23120F94E80B}';
  IID_IDymoTapeShellExt: TGUID = '{75AE2960-DD22-47FC-A05D-6731515DFA93}';
  IID_IDymoAddIn4: TGUID = '{BAEE49F8-741A-4D5F-B807-CD60F938C427}';
  IID_IDymoAddIn5: TGUID = '{A1CD66DC-6A1F-4FD6-A7EF-57D00E28E00A}';
  CLASS_DymoAddIn: TGUID = '{09DAFAE2-8EB0-11D2-8E5D-00A02415E90F}';
  CLASS_DymoTape: TGUID = '{4F776706-065B-41CF-915E-73EEBE3A1F39}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum EnumDymoShellFixedIDs
type
  EnumDymoShellFixedIDs = TOleEnum;
const
  idFileMenu = $00000001;
  idEditMenu = $00000002;
  idFormatMenu = $00000003;
  idAddrBookMenu = $00000004;
  idHelpMenu = $00000005;
  idFileNewMenu = $00000006;
  idFileOpenMenu = $00000007;
  idFileSaveMenu = $00000008;
  idFileSaveAsMenu = $00000009;
  idFileRevertToSavedMenu = $0000000A;
  idFileAddInMgrMenu = $0000000B;
  idFilePrintMenu = $0000000C;
  idFileChangePrinterMenu = $0000000D;
  idFileExitMenu = $0000000E;
  idEditCutMenu = $0000000F;
  idEditCopyMenu = $00000010;
  idEditPasteMenu = $00000011;
  idEditDeleteMenu = $00000012;
  idEditSelectAllMenu = $00000013;
  idEditSmartPasteMenu = $00000014;
  idEditSmartPasteFromClipboardMenu = $00000015;
  idEditSmartPasteFromFileMenu = $00000016;
  idEditZoomMenu = $00000017;
  idEditZoom50Menu = $00000018;
  idEditZoom75Menu = $00000019;
  idEditZoom100Menu = $0000001A;
  idEditZoom150Menu = $0000001B;
  idEditZoom200Menu = $0000001C;
  idEditZoomToFitMenu = $0000001D;
  idEditPreferencesMenu = $0000001E;
  idFormatBoldMenu = $0000001F;
  idFormatItalicMenu = $00000020;
  idFormatUnderlineMenu = $00000021;
  idFormatAlignLeftMenu = $00000022;
  idFormatCenterMenu = $00000023;
  idFormatAlignRightMenu = $00000024;
  idFormatCenterBlockMenu = $00000025;
  idFormatFontPropertiesMenu = $00000026;
  idAddrBookSaveToMenu = $00000027;
  idAddrBookCheckAddrMenu = $00000028;
  idAddrBookInsertDefaultAddrMenu = $00000029;
  idAddrBookIPostageMenu = $0000002A;
  idAddrBookIPostagePrintMenu = $0000002B;
  idAddrBookIPostageBuyMenu = $0000002C;
  idAddrBookIPostageRatesMenu = $0000002D;
  idAddrBookNewMenu = $0000002E;
  idAddrBookOpenMenu = $0000002F;
  idAddrBookImportMenu = $00000030;
  idAddrBookExportMenu = $00000031;
  idAddrBookViewMenu = $00000032;
  idAddrBookNewEntryMenu = $00000033;
  idHelpContentsMenu = $00000034;
  idHelpIndexMenu = $00000035;
  idHelpDymoWebsiteMenu = $00000036;
  idHelpBuyLabelsMenu = $00000037;
  idHelpSoftwareUpdatesMenu = $00000038;
  idHelpTechSupportMenu = $00000039;
  idHelpRegisterMenu = $0000003A;
  idHelpAboutMenu = $0000003B;
  idEditObjResizeMenu = $0000003C;
  idEditObjAlignMenu = $0000003D;
  idEditObjBringToFrontMenu = $0000003E;
  idEditObjSendToBackMenu = $0000003F;
  idEditObjPropertiesMenu = $00000040;
  idEditObjSettingsMenu = $00000041;
  idEditViewDesignerMenu = $00000042;
  idMainToolbar = $00000043;
  idFontToolbar = $00000044;
  idDesignerToolbar = $00000045;
  idSidebarAddrBookBtn = $00000046;
  idSidebarDesignerBtn = $00000047;
  idSidebarHelpBtn = $00000048;
  idSidebarUserGuideBtn = $00000049;
  idSidebarDymoWebsiteBtn = $0000004A;
  idSidebarBuyLabelsBtn = $0000004B;
  idDesignerTBTextBtn = $0000004C;
  idDesignerTBAddrBtn = $0000004D;
  idDesignerTBGraphicBtn = $0000004E;
  idDesignerTBRectBtn = $0000004F;
  idDesignerTBHLineBtn = $00000050;
  idDesignerTBVLineBtn = $00000051;
  idDesignerTBBarcodeBtn = $00000052;
  idDesignerTBCounterBtn = $00000053;
  idDesignerTBDateTimeBtn = $00000054;
  idDesignerTBCircularTextBtn = $00000055;
  idFontTBBoldBtn = $00000056;
  idFontTBItalicBtn = $00000057;
  idFontTBUnderlineBtn = $00000058;
  idFontTBLeftAlignBtn = $00000059;
  idFontTBCenterBtn = $0000005A;
  idFontTBRightAlignBtn = $0000005B;
  idFontTBCenterBlockBtn = $0000005C;
  idFontTBSettingsBtn = $0000005D;
  idMainTBNewBtn = $0000005E;
  idMainTBOpenBtn = $0000005F;
  idMainTBSaveBtn = $00000060;
  idMainTBPrintBtn = $00000061;
  idMainTBPasteBtn = $00000062;
  idMainTBCheckAddrBtn = $00000063;

// Constants for enum EnumDymoFontStyle
type
  EnumDymoFontStyle = TOleEnum;
const
  ctFSBold = $00000001;
  ctFSItalic = $00000002;
  ctFSUnderline = $00000004;
  ctFSStrikeout = $00000008;
  ctFSShadow = $00000400;
  ctFSOutline = $00000200;

// Constants for enum EnumDymoCaptionPos
type
  EnumDymoCaptionPos = TOleEnum;
const
  ctTopCaption = $00000000;
  ctLeftCaption = $00000001;
  ctBottomCaption = $00000002;
  ctRightCaption = $00000003;

// Constants for enum EnumDymoSpinType
type
  EnumDymoSpinType = TOleEnum;
const
  ctIntegerSpin = $00000000;
  ctDoubleSpin = $00000001;

// Constants for enum EnumDymoItemDrawState
type
  EnumDymoItemDrawState = TOleEnum;
const
  ctODS_SELECTED = $00000001;
  ctODS_GRAYED = $00000002;
  ctODS_DISABLED = $00000004;
  ctODS_CHECKED = $00000008;
  ctODS_FOCUS = $00000010;
  ctODS_DEFAULT = $00000020;
  ctODS_COMBOBOXEDIT = $00000040;
  ctODS_HOTLIGHT = $00000080;
  ctODS_INACTIVE = $00000100;

// Constants for enum EnumDymoShiftState
type
  EnumDymoShiftState = TOleEnum;
const
  ctShiftKey = $00000002;
  ctCtrlKey = $00000004;
  ctAltKey = $00000008;

// Constants for enum EnumDymoPrefOpt
type
  EnumDymoPrefOpt = TOleEnum;
const
  ctDefaultLogoFile = $00000000;
  ctSupressSavePrompt = $00000001;
  ctPasteAndPrint = $00000002;
  ctMinimizeToSysTray = $00000003;
  ctDisplayRulers = $00000004;
  ctFontName = $00000005;
  ctFontSize = $00000006;
  ctFontStyles = $00000007;
  ctFontCharset = $00000008;
  ctShowLabelShadow = $00000009;

// Constants for enum EnumDymoMeasurementUnit
type
  EnumDymoMeasurementUnit = TOleEnum;
const
  ctEnglish = $00000000;
  ctMetric = $00000001;

// Constants for enum EnumDymoFolderType
type
  EnumDymoFolderType = TOleEnum;
const
  ctLabelFolder = $00000000;
  ctAddrBookFolder = $00000001;
  ctClipartFolder = $00000002;

// Constants for enum EnumDymoTextHorzAlignment
type
  EnumDymoTextHorzAlignment = TOleEnum;
const
  ctLeftAlign = $00000000;
  ctRightAlign = $00000001;
  ctCenterAlign = $00000002;
  ctCenterBlock = $00000003;

// Constants for enum EnumDymoTextVertAlignment
type
  EnumDymoTextVertAlignment = TOleEnum;
const
  ctTopAlign = $00000000;
  ctMiddleAlign = $00000001;
  ctBottomAlign = $00000002;

// Constants for enum EnumDymoTabStopEventType
type
  EnumDymoTabStopEventType = TOleEnum;
const
  ctAddTabStop = $00000000;
  ctDeleteTabStop = $00000001;
  ctMoveTabStop = $00000002;

// Constants for enum EnumDymoTabStopStyle
type
  EnumDymoTabStopStyle = TOleEnum;
const
  ctTSLeftAlign = $00000000;
  ctTSRightAlign = $00000001;
  ctTSCenterAlign = $00000002;
  ctTSDecimalAlign = $00000003;

// Constants for enum EnumDymoTBCmbStyle
type
  EnumDymoTBCmbStyle = TOleEnum;
const
  ctDropDown = $00000000;
  ctSimple = $00000001;
  ctDropDownList = $00000002;
  ctOwnerDrawFixed = $00000003;
  ctOwnerDrawVariable = $00000004;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IDymoAddIn = interface;
  IDymoAddInDisp = dispinterface;
  IDymoAddIn2 = interface;
  IDymoAddIn2Disp = dispinterface;
  IDymoLabels = interface;
  IDymoLabelsDisp = dispinterface;
  IDymoAddIn3 = interface;
  IDymoAddIn3Disp = dispinterface;
  IDymoShellExtensible = interface;
  IDymoShellExtensibleDisp = dispinterface;
  IDymoNotifyEvent = interface;
  IDymoNotifyEventDisp = dispinterface;
  IDymoShell = interface;
  IDymoShellMenu = interface;
  IDymoStatusBar = interface;
  IDymoSidebar = interface;
  IDymoToolbar = interface;
  IDymoToolbarObject = interface;
  IDymoRuler = interface;
  IDymoToolBtn = interface;
  IDymoTBSpinCtrl = interface;
  IDymoTBCmb = interface;
  IDymoTBCmbEvent = interface;
  IDymoTBCmbEventDisp = dispinterface;
  IDymoTBLabel = interface;
  IDymoTBRadioBtnGroup = interface;
  IDymoTBGroupCtrlEvent = interface;
  IDymoTBGroupCtrlEventDisp = dispinterface;
  IDymoTBCheckboxGroup = interface;
  IDymoMeasurementCtrl = interface;
  IDymoTabStopEvent = interface;
  IDymoTabStopEventDisp = dispinterface;
  IDymoTape = interface;
  IDymoTapeDisp = dispinterface;
  IDymoTape2 = interface;
  IDymoTape2Disp = dispinterface;
  IDymoTapeShellExt = interface;
  IDymoTapeShellExtDisp = dispinterface;
  IDymoAddIn4 = interface;
  IDymoAddIn4Disp = dispinterface;
  IDymoAddIn5 = interface;
  IDymoAddIn5Disp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  DymoLabels = IDymoLabels;
  DymoShell = IDymoShell;
  DymoShellMenu = IDymoShellMenu;
  DymoStatusBar = IDymoStatusBar;
  DymoSidebar = IDymoSidebar;
  DymoToolbar = IDymoToolbar;
  DymoRuler = IDymoRuler;
  DymoToolBtn = IDymoToolBtn;
  DymoTBSpinCtrl = IDymoTBSpinCtrl;
  DymoTBCmb = IDymoTBCmb;
  DymoTBLabel = IDymoTBLabel;
  DymoTBRadioBtnGroup = IDymoTBRadioBtnGroup;
  DymoTBCheckboxGroup = IDymoTBCheckboxGroup;
  DymoMeasurementCtrl = IDymoMeasurementCtrl;
  DymoAddIn = IDymoAddIn5;
  DymoTape = IDymoTape2;


// *********************************************************************//
// Interface: IDymoAddIn
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {09DAFAE1-8EB0-11D2-8E5D-00A02415E90F}
// *********************************************************************//
  IDymoAddIn = interface(IDispatch)
    ['{09DAFAE1-8EB0-11D2-8E5D-00A02415E90F}']
    function Open(const FileName: WideString): WordBool; safecall;
    function Save: WordBool; safecall;
    function SaveAs(const FileName: WideString): WordBool; safecall;
    function Print(Copies: Integer; bShowDialog: WordBool): WordBool; safecall;
    procedure Hide; safecall;
    procedure Show; safecall;
    procedure SysTray(State: WordBool); safecall;
    procedure Quit; safecall;
    function Get_FileName: WideString; safecall;
    function SelectPrinter(const Printer: WideString): WordBool; safecall;
    function GetDymoPrinters: WideString; safecall;
    property FileName: WideString read Get_FileName;
  end;

// *********************************************************************//
// DispIntf:  IDymoAddInDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {09DAFAE1-8EB0-11D2-8E5D-00A02415E90F}
// *********************************************************************//
  IDymoAddInDisp = dispinterface
    ['{09DAFAE1-8EB0-11D2-8E5D-00A02415E90F}']
    function Open(const FileName: WideString): WordBool; dispid 1;
    function Save: WordBool; dispid 2;
    function SaveAs(const FileName: WideString): WordBool; dispid 3;
    function Print(Copies: Integer; bShowDialog: WordBool): WordBool; dispid 4;
    procedure Hide; dispid 5;
    procedure Show; dispid 6;
    procedure SysTray(State: WordBool); dispid 7;
    procedure Quit; dispid 8;
    property FileName: WideString readonly dispid 9;
    function SelectPrinter(const Printer: WideString): WordBool; dispid 10;
    function GetDymoPrinters: WideString; dispid 11;
  end;

// *********************************************************************//
// Interface: IDymoAddIn2
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BCABF570-E1B4-4D4A-B8B8-C46E632CF0B3}
// *********************************************************************//
  IDymoAddIn2 = interface(IDymoAddIn)
    ['{BCABF570-E1B4-4D4A-B8B8-C46E632CF0B3}']
    function GetMRULabelFiles: WideString; safecall;
    function Open2(const FileName: WideString): WordBool; safecall;
    function GetMRULabelFileCount: Integer; safecall;
    function GetMRULabelFileName(Index: Integer): WideString; safecall;
    function OpenMRULabelFile(Index: Integer): WordBool; safecall;
    function OpenMRULabelFileByName(const FileName: WideString): WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  IDymoAddIn2Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BCABF570-E1B4-4D4A-B8B8-C46E632CF0B3}
// *********************************************************************//
  IDymoAddIn2Disp = dispinterface
    ['{BCABF570-E1B4-4D4A-B8B8-C46E632CF0B3}']
    function GetMRULabelFiles: WideString; dispid 301;
    function Open2(const FileName: WideString): WordBool; dispid 302;
    function GetMRULabelFileCount: Integer; dispid 303;
    function GetMRULabelFileName(Index: Integer): WideString; dispid 304;
    function OpenMRULabelFile(Index: Integer): WordBool; dispid 305;
    function OpenMRULabelFileByName(const FileName: WideString): WordBool; dispid 306;
    function Open(const FileName: WideString): WordBool; dispid 1;
    function Save: WordBool; dispid 2;
    function SaveAs(const FileName: WideString): WordBool; dispid 3;
    function Print(Copies: Integer; bShowDialog: WordBool): WordBool; dispid 4;
    procedure Hide; dispid 5;
    procedure Show; dispid 6;
    procedure SysTray(State: WordBool); dispid 7;
    procedure Quit; dispid 8;
    property FileName: WideString readonly dispid 9;
    function SelectPrinter(const Printer: WideString): WordBool; dispid 10;
    function GetDymoPrinters: WideString; dispid 11;
  end;

// *********************************************************************//
// Interface: IDymoLabels
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {3AAD7660-8F83-11D2-8E5D-00A02415E90F}
// *********************************************************************//
  IDymoLabels = interface(IDispatch)
    ['{3AAD7660-8F83-11D2-8E5D-00A02415E90F}']
    function SetAddress(AddrIdx: Integer; const Address: WideString): WordBool; safecall;
    function SetField(const Field: WideString; const Text: WideString): WordBool; safecall;
    procedure PostNet(Index: Integer; const Position: WideString); safecall;
    function GetText(const Field: WideString): WideString; safecall;
    function GetObjectNames(bVariableOnly: WordBool): WideString; safecall;
    function Get_AddressFieldCount: Integer; safecall;
    function PasteFromClipboard(const ObjectName: WideString): WordBool; safecall;
    function SetImageFile(const ObjectName: WideString; const FileName: WideString): WordBool; safecall;
    property AddressFieldCount: Integer read Get_AddressFieldCount;
  end;

// *********************************************************************//
// DispIntf:  IDymoLabelsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {3AAD7660-8F83-11D2-8E5D-00A02415E90F}
// *********************************************************************//
  IDymoLabelsDisp = dispinterface
    ['{3AAD7660-8F83-11D2-8E5D-00A02415E90F}']
    function SetAddress(AddrIdx: Integer; const Address: WideString): WordBool; dispid 1;
    function SetField(const Field: WideString; const Text: WideString): WordBool; dispid 2;
    procedure PostNet(Index: Integer; const Position: WideString); dispid 3;
    function GetText(const Field: WideString): WideString; dispid 4;
    function GetObjectNames(bVariableOnly: WordBool): WideString; dispid 5;
    property AddressFieldCount: Integer readonly dispid 6;
    function PasteFromClipboard(const ObjectName: WideString): WordBool; dispid 201;
    function SetImageFile(const ObjectName: WideString; const FileName: WideString): WordBool; dispid 202;
  end;

// *********************************************************************//
// Interface: IDymoAddIn3
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7E449759-5FB0-4CE6-AD4E-D7CD776A995D}
// *********************************************************************//
  IDymoAddIn3 = interface(IDymoAddIn2)
    ['{7E449759-5FB0-4CE6-AD4E-D7CD776A995D}']
    function Print2(Copies: Integer; bShowDlg: WordBool; Tray: Integer): WordBool; safecall;
    function GetCurrentPaperTray: Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  IDymoAddIn3Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7E449759-5FB0-4CE6-AD4E-D7CD776A995D}
// *********************************************************************//
  IDymoAddIn3Disp = dispinterface
    ['{7E449759-5FB0-4CE6-AD4E-D7CD776A995D}']
    function Print2(Copies: Integer; bShowDlg: WordBool; Tray: Integer): WordBool; dispid 401;
    function GetCurrentPaperTray: Integer; dispid 402;
    function GetMRULabelFiles: WideString; dispid 301;
    function Open2(const FileName: WideString): WordBool; dispid 302;
    function GetMRULabelFileCount: Integer; dispid 303;
    function GetMRULabelFileName(Index: Integer): WideString; dispid 304;
    function OpenMRULabelFile(Index: Integer): WordBool; dispid 305;
    function OpenMRULabelFileByName(const FileName: WideString): WordBool; dispid 306;
    function Open(const FileName: WideString): WordBool; dispid 1;
    function Save: WordBool; dispid 2;
    function SaveAs(const FileName: WideString): WordBool; dispid 3;
    function Print(Copies: Integer; bShowDialog: WordBool): WordBool; dispid 4;
    procedure Hide; dispid 5;
    procedure Show; dispid 6;
    procedure SysTray(State: WordBool); dispid 7;
    procedure Quit; dispid 8;
    property FileName: WideString readonly dispid 9;
    function SelectPrinter(const Printer: WideString): WordBool; dispid 10;
    function GetDymoPrinters: WideString; dispid 11;
  end;

// *********************************************************************//
// Interface: IDymoShellExtensible
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {01D0E518-DB81-4C93-BC72-340571D771B5}
// *********************************************************************//
  IDymoShellExtensible = interface(IDispatch)
    ['{01D0E518-DB81-4C93-BC72-340571D771B5}']
    procedure OnStart(const Shell: IDymoShell; var cx: Integer; var cy: Integer); safecall;
    procedure OnStop(const Shell: IDymoShell); safecall;
    procedure SetSize(var cx: Integer; var cy: Integer); safecall;
    procedure OnNew; safecall;
    function OnOpen(const FileName: WideString; out LabelName: WideString; NoPrompt: Integer): Integer; safecall;
    function GetDefaultDirectory: WideString; safecall;
    function GetDefaultFileName: WideString; safecall;
    function GetOpenFilter(out DefaultExt: WideString): WideString; safecall;
    function GetSaveFilter(out DefaultExt: WideString): WideString; safecall;
    function OnSave(const FileName: WideString; SaveOption: Integer): Integer; safecall;
    function IsLabelModified: Integer; safecall;
    procedure OnFontChange(const FontName: WideString; FontSize: Integer; FontStyle: Integer; 
                           FontType: Integer; FontColor: Integer; cfMask: LongWord; Charset: Integer); safecall;
    procedure SetViewBackground(RGBColor: OLE_COLOR); safecall;
    procedure OnZoom(Zoom: Integer); safecall;
    procedure SetFocus; safecall;
    function GetFocusHandle: Integer; safecall;
    procedure BeforePreviewDlg; safecall;
    procedure AfterPreviewDlg(IsOK: Integer); safecall;
    procedure OnPreviewDlgSelChange(const FileName: WideString); safecall;
    function OnPreviewDlgPaint(const FileName: WideString; DCHandle: Integer): Integer; safecall;
    function GetFriendlyComponentName: WideString; safecall;
    function OnEnumPrinter(const DriverName: WideString; const PrinterName: WideString; 
                           out Selected: Integer; Category: Integer; Attributes: Integer): Integer; safecall;
    procedure OnEditMenuClick; safecall;
    procedure OnEditCut; safecall;
    procedure OnEditPaste(PrintCopies: Integer); safecall;
    procedure OnEditCopy; safecall;
    procedure OnEditDelete; safecall;
    procedure OnEditSelectAll; safecall;
    function OnPrint(Copies: Integer): Integer; safecall;
    function OnSmartPaste(const Value: WideString; CurrentRec: Integer; TotalRec: Integer): Integer; safecall;
    procedure SetMeasurementUnit(Value: EnumDymoMeasurementUnit); safecall;
    procedure SetPrefOptLong(PrefOpt: EnumDymoPrefOpt; Value: Integer); safecall;
    procedure SetPrefOptBSTR(PrefOpt: EnumDymoPrefOpt; const Value: WideString); safecall;
    procedure OnSetTextHorzAlignment(Value: EnumDymoTextHorzAlignment); safecall;
    procedure OnSetTextVertAlignment(Value: EnumDymoTextVertAlignment); safecall;
    function OnSidebarAddrBookClick: Integer; safecall;
    function OnSidebarDesignClick: Integer; safecall;
    function OnSidebarHelpClick: Integer; safecall;
    function OnSidebarUserGuideClick: Integer; safecall;
    function OnSidebarDymoWebsiteClick: Integer; safecall;
    function OnSidebarBuyLabelsClick: Integer; safecall;
    procedure OnAddrBookEntrySelect(const AddrStr: WideString); safecall;
    procedure OnTextToolClick; safecall;
    procedure OnAddrToolClick; safecall;
    procedure OnGraphicToolClick; safecall;
    procedure OnRectToolClick; safecall;
    procedure OnHLineToolClick; safecall;
    procedure OnVLineToolClick; safecall;
    procedure OnBarcodeToolClick; safecall;
    procedure OnCounterToolClick; safecall;
    procedure OnDateTimeToolClick; safecall;
    procedure OnCircularTextToolClick; safecall;
    procedure ShowPreferencesTab(ParentHWnd: Integer); safecall;
    procedure OnEditUndo; safecall;
    procedure OnEditRedo; safecall;
    function CanUndo: Integer; safecall;
    function CanRedo: Integer; safecall;
    procedure ClosePreferencesTab(IsCancel: Integer); safecall;
    function OnSelectPrinter(const PrinterName: WideString): Integer; safecall;
    function EnableSmartPaste: Integer; safecall;
    function EnablePasteButton: Integer; safecall;
    procedure OnInsertDefaultAddress(const AddrText: WideString); safecall;
    function GetSelectedText(out SelText: WideString): Integer; safecall;
    procedure GetLabelSize(out cx_in_twips: Integer; out cy_in_twips: Integer); safecall;
    function HasFocus: Integer; safecall;
    procedure OnF1Help; safecall;
  end;

// *********************************************************************//
// DispIntf:  IDymoShellExtensibleDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {01D0E518-DB81-4C93-BC72-340571D771B5}
// *********************************************************************//
  IDymoShellExtensibleDisp = dispinterface
    ['{01D0E518-DB81-4C93-BC72-340571D771B5}']
    procedure OnStart(const Shell: IDymoShell; var cx: Integer; var cy: Integer); dispid 202;
    procedure OnStop(const Shell: IDymoShell); dispid 203;
    procedure SetSize(var cx: Integer; var cy: Integer); dispid 201;
    procedure OnNew; dispid 204;
    function OnOpen(const FileName: WideString; out LabelName: WideString; NoPrompt: Integer): Integer; dispid 205;
    function GetDefaultDirectory: WideString; dispid 206;
    function GetDefaultFileName: WideString; dispid 207;
    function GetOpenFilter(out DefaultExt: WideString): WideString; dispid 208;
    function GetSaveFilter(out DefaultExt: WideString): WideString; dispid 209;
    function OnSave(const FileName: WideString; SaveOption: Integer): Integer; dispid 210;
    function IsLabelModified: Integer; dispid 211;
    procedure OnFontChange(const FontName: WideString; FontSize: Integer; FontStyle: Integer; 
                           FontType: Integer; FontColor: Integer; cfMask: LongWord; Charset: Integer); dispid 212;
    procedure SetViewBackground(RGBColor: OLE_COLOR); dispid 213;
    procedure OnZoom(Zoom: Integer); dispid 214;
    procedure SetFocus; dispid 215;
    function GetFocusHandle: Integer; dispid 217;
    procedure BeforePreviewDlg; dispid 216;
    procedure AfterPreviewDlg(IsOK: Integer); dispid 218;
    procedure OnPreviewDlgSelChange(const FileName: WideString); dispid 219;
    function OnPreviewDlgPaint(const FileName: WideString; DCHandle: Integer): Integer; dispid 220;
    function GetFriendlyComponentName: WideString; dispid 221;
    function OnEnumPrinter(const DriverName: WideString; const PrinterName: WideString; 
                           out Selected: Integer; Category: Integer; Attributes: Integer): Integer; dispid 222;
    procedure OnEditMenuClick; dispid 223;
    procedure OnEditCut; dispid 224;
    procedure OnEditPaste(PrintCopies: Integer); dispid 225;
    procedure OnEditCopy; dispid 226;
    procedure OnEditDelete; dispid 227;
    procedure OnEditSelectAll; dispid 228;
    function OnPrint(Copies: Integer): Integer; dispid 229;
    function OnSmartPaste(const Value: WideString; CurrentRec: Integer; TotalRec: Integer): Integer; dispid 230;
    procedure SetMeasurementUnit(Value: EnumDymoMeasurementUnit); dispid 231;
    procedure SetPrefOptLong(PrefOpt: EnumDymoPrefOpt; Value: Integer); dispid 232;
    procedure SetPrefOptBSTR(PrefOpt: EnumDymoPrefOpt; const Value: WideString); dispid 233;
    procedure OnSetTextHorzAlignment(Value: EnumDymoTextHorzAlignment); dispid 234;
    procedure OnSetTextVertAlignment(Value: EnumDymoTextVertAlignment); dispid 235;
    function OnSidebarAddrBookClick: Integer; dispid 236;
    function OnSidebarDesignClick: Integer; dispid 237;
    function OnSidebarHelpClick: Integer; dispid 238;
    function OnSidebarUserGuideClick: Integer; dispid 239;
    function OnSidebarDymoWebsiteClick: Integer; dispid 240;
    function OnSidebarBuyLabelsClick: Integer; dispid 241;
    procedure OnAddrBookEntrySelect(const AddrStr: WideString); dispid 242;
    procedure OnTextToolClick; dispid 243;
    procedure OnAddrToolClick; dispid 244;
    procedure OnGraphicToolClick; dispid 245;
    procedure OnRectToolClick; dispid 246;
    procedure OnHLineToolClick; dispid 247;
    procedure OnVLineToolClick; dispid 248;
    procedure OnBarcodeToolClick; dispid 249;
    procedure OnCounterToolClick; dispid 250;
    procedure OnDateTimeToolClick; dispid 251;
    procedure OnCircularTextToolClick; dispid 252;
    procedure ShowPreferencesTab(ParentHWnd: Integer); dispid 253;
    procedure OnEditUndo; dispid 254;
    procedure OnEditRedo; dispid 255;
    function CanUndo: Integer; dispid 256;
    function CanRedo: Integer; dispid 257;
    procedure ClosePreferencesTab(IsCancel: Integer); dispid 258;
    function OnSelectPrinter(const PrinterName: WideString): Integer; dispid 259;
    function EnableSmartPaste: Integer; dispid 260;
    function EnablePasteButton: Integer; dispid 261;
    procedure OnInsertDefaultAddress(const AddrText: WideString); dispid 262;
    function GetSelectedText(out SelText: WideString): Integer; dispid 263;
    procedure GetLabelSize(out cx_in_twips: Integer; out cy_in_twips: Integer); dispid 264;
    function HasFocus: Integer; dispid 265;
    procedure OnF1Help; dispid 266;
  end;

// *********************************************************************//
// Interface: IDymoNotifyEvent
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6C596B29-E309-49F1-A9D4-CADFB411F44C}
// *********************************************************************//
  IDymoNotifyEvent = interface(IDispatch)
    ['{6C596B29-E309-49F1-A9D4-CADFB411F44C}']
    procedure OnEvent(EventID: Integer; SenderID: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  IDymoNotifyEventDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6C596B29-E309-49F1-A9D4-CADFB411F44C}
// *********************************************************************//
  IDymoNotifyEventDisp = dispinterface
    ['{6C596B29-E309-49F1-A9D4-CADFB411F44C}']
    procedure OnEvent(EventID: Integer; SenderID: Integer); dispid 201;
  end;

// *********************************************************************//
// Interface: IDymoShell
// Flags:     (256) OleAutomation
// GUID:      {5E545AB2-7106-4A3D-A398-66319C88595F}
// *********************************************************************//
  IDymoShell = interface(IUnknown)
    ['{5E545AB2-7106-4A3D-A398-66319C88595F}']
    function GetExeName(out Value: WideString): HResult; stdcall;
    function GetAppTitle(out Value: WideString): HResult; stdcall;
    function SetAppTitle(const Value: WideString): HResult; stdcall;
    function GetMainMenu(out Value: IDymoShellMenu): HResult; stdcall;
    function GetStatusbar(out Value: IDymoStatusBar): HResult; stdcall;
    function GetSidebar(out Value: IDymoSidebar): HResult; stdcall;
    function OnShellExtensibleResize(cx: Integer; cy: Integer): HResult; stdcall;
    function GetViewportHandle(out Value: Integer): HResult; stdcall;
    function SetFontAttributes(const FontName: WideString; FontSize: Integer; FontStyle: Integer; 
                               FontType: Integer; FontRGBColor: Integer; cfMask: LongWord): HResult; stdcall;
    function EnableFontFormat: HResult; stdcall;
    function DisableFontFormat: HResult; stdcall;
    function GetHRuler(out Value: IDymoRuler): HResult; stdcall;
    function GetVRuler(out Value: IDymoRuler): HResult; stdcall;
    function GetToolbar(ToolbarID: Integer; out ppToolbar: IDymoToolbar): HResult; stdcall;
    function AddPrimaryToolbar(out pID: Integer; out ppToolbar: IDymoToolbar): HResult; stdcall;
    function AddSecondaryToolbar(out pID: Integer; out ppToolbar: IDymoToolbar): HResult; stdcall;
    function GetMeasurementUnit(out Value: EnumDymoMeasurementUnit): HResult; stdcall;
    function GetPrefOptLong(PrefOpt: EnumDymoPrefOpt; out Value: Integer): HResult; stdcall;
    function GetPrefOptBSTR(PrefOpt: EnumDymoPrefOpt; out Value: WideString): HResult; stdcall;
    function GetShellCtrl(ID: Integer; out ppIUnknown: IUnknown): HResult; stdcall;
    function GetFolder(FolderType: EnumDymoFolderType; out Path: WideString): HResult; stdcall;
    function GetNextTabStopPosition(CurrentPosition: Integer; 
                                    out TabStopStyle: EnumDymoTabStopStyle; 
                                    out TabStopPosition: Integer): HResult; stdcall;
    function GetOnTabStopEventHandler(out EventHandler: IDymoTabStopEvent): HResult; stdcall;
    function SetOnTabStopEventHandler(const EventHandler: IDymoTabStopEvent): HResult; stdcall;
    function EnableTabStop: HResult; stdcall;
    function DisableTabStop: HResult; stdcall;
    function SetPrefOptLong(PrefOpt: Integer; Value: Integer): HResult; stdcall;
    function SetPrefOptBSTR(PrefOpt: Integer; const Value: WideString): HResult; stdcall;
    function AddTabStop(XPos: Integer; Style: EnumDymoTabStopStyle; out Index: Integer): HResult; stdcall;
    function DeleteTabStop(Index: Integer): HResult; stdcall;
    function ModifyTabStop(Index: Integer; XPos: Integer; Style: Integer): HResult; stdcall;
    function ClearAllTabStops: HResult; stdcall;
    function SetTextHorzTextAlignment(Value: EnumDymoTextHorzAlignment): HResult; stdcall;
    function OnCaretPositionChange(x: Integer; y: Integer; CaretHeight: Integer): HResult; stdcall;
    function OnAddInGetFocus: HResult; stdcall;
    function OnAddInLoseFocus: HResult; stdcall;
    function AddInRequestFocus: HResult; stdcall;
    function OnContextHelp(HelpID: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IDymoShellMenu
// Flags:     (256) OleAutomation
// GUID:      {58726226-DCDE-41CF-AD79-7F8A89332E20}
// *********************************************************************//
  IDymoShellMenu = interface(IUnknown)
    ['{58726226-DCDE-41CF-AD79-7F8A89332E20}']
    function GetCaption(out Value: WideString): HResult; stdcall;
    function SetCaption(const Value: WideString): HResult; stdcall;
    function GetEnabled(out Value: Integer): HResult; stdcall;
    function SetEnabled(Value: Integer): HResult; stdcall;
    function GetVisible(out Value: Integer): HResult; stdcall;
    function SetVisible(Value: Integer): HResult; stdcall;
    function IsSeparator(out Value: Integer): HResult; stdcall;
    function GetSubMenu(ID: Integer; out ppMenu: IDymoShellMenu): HResult; stdcall;
    function GetFirstSubMenuID(out pID: Integer): HResult; stdcall;
    function GetNextSubMenuID(out pID: Integer): HResult; stdcall;
    function AddSubMenu(IsSeparator: Integer; out pID: Integer; out ppMenu: IDymoShellMenu): HResult; stdcall;
    function DeleteSubMenu(ID: Integer): HResult; stdcall;
    function InsertSubMenu(IsSeparator: Integer; BeforeThisSubMenuID: Integer; out pID: Integer; 
                           out ppMenu: IDymoShellMenu): HResult; stdcall;
    function GetOnSelect(out EventID: Integer; out EventHandler: IDymoNotifyEvent): HResult; stdcall;
    function SetOnSelect(EventID: Integer; const EventHandler: IDymoNotifyEvent): HResult; stdcall;
    function GetChecked(out Value: Integer): HResult; stdcall;
    function SetChecked(Value: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IDymoStatusBar
// Flags:     (256) OleAutomation
// GUID:      {8B361F44-1EFC-4FF3-B64B-DBDDC1B2291B}
// *********************************************************************//
  IDymoStatusBar = interface(IUnknown)
    ['{8B361F44-1EFC-4FF3-B64B-DBDDC1B2291B}']
    function GetColumnText(Index: Integer; out Value: WideString): HResult; stdcall;
    function SetColumnText(Index: Integer; const Value: WideString): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IDymoSidebar
// Flags:     (256) OleAutomation
// GUID:      {437B2CF0-DFF1-41B5-8056-7C120C32D857}
// *********************************************************************//
  IDymoSidebar = interface(IUnknown)
    ['{437B2CF0-DFF1-41B5-8056-7C120C32D857}']
    function GetEnabled(ID: Integer; out Value: Integer): HResult; stdcall;
    function SetEnabled(ID: Integer; Value: Integer): HResult; stdcall;
    function GetChecked(ID: Integer; out Value: Integer): HResult; stdcall;
    function SetChecked(ID: Integer; Value: Integer): HResult; stdcall;
    function GetVisible(ID: Integer; out Value: Integer): HResult; stdcall;
    function SetVisible(ID: Integer; Value: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IDymoToolbar
// Flags:     (256) OleAutomation
// GUID:      {3CBE571E-4291-4C11-A5DB-D08D9C73F6D5}
// *********************************************************************//
  IDymoToolbar = interface(IUnknown)
    ['{3CBE571E-4291-4C11-A5DB-D08D9C73F6D5}']
    function AddButton(IsSeparator: Integer; out pID: Integer; out ppBtn: IDymoToolBtn): HResult; stdcall;
    function GetButtonHeight(out Value: Integer): HResult; stdcall;
    function SetButtonHeight(Value: Integer): HResult; stdcall;
    function GetButtonWidth(out Value: Integer): HResult; stdcall;
    function SetButtonWidth(Value: Integer): HResult; stdcall;
    function AddSpinControl(out pID: Integer; out ppSpinCtrl: IDymoTBSpinCtrl): HResult; stdcall;
    function GetVisible(out Value: Integer): HResult; stdcall;
    function SetVisible(Value: Integer): HResult; stdcall;
    function GetID(out Value: Integer): HResult; stdcall;
    function AddComboBox(out pID: Integer; out ppCmb: IDymoTBCmb): HResult; stdcall;
    function AddLabel(out pID: Integer; out ppLbl: IDymoTBLabel): HResult; stdcall;
    function AddRadioButtonGroup(out pID: Integer; out ppRBGrp: IDymoTBRadioBtnGroup): HResult; stdcall;
    function AddCheckboxGroup(out pID: Integer; out ppCheckboxGrp: IDymoTBCheckboxGroup): HResult; stdcall;
    function AddMeasurementCtrl(out pID: Integer; out ppCtrl: IDymoMeasurementCtrl): HResult; stdcall;
    function GetButton(ID: Integer; out ppBtn: IDymoToolBtn): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IDymoToolbarObject
// Flags:     (256) OleAutomation
// GUID:      {1A7F2F9E-1FDC-48CF-B61C-E8EEEE72C54F}
// *********************************************************************//
  IDymoToolbarObject = interface(IUnknown)
    ['{1A7F2F9E-1FDC-48CF-B61C-E8EEEE72C54F}']
    function GetCaption(out Value: WideString): HResult; stdcall;
    function SetCaption(const Value: WideString): HResult; stdcall;
    function GetToolTipString(out Value: WideString): HResult; stdcall;
    function SetToolTipString(const Value: WideString): HResult; stdcall;
    function GetID(out Value: Integer): HResult; stdcall;
    function GetVisible(out Value: Integer): HResult; stdcall;
    function SetVisible(Value: Integer): HResult; stdcall;
    function GetChecked(out Value: Integer): HResult; stdcall;
    function SetChecked(Value: Integer): HResult; stdcall;
    function GetEnabled(out Value: Integer): HResult; stdcall;
    function SetEnabled(Value: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IDymoRuler
// Flags:     (256) OleAutomation
// GUID:      {47386F50-AF0B-4AA5-B11D-574D27B4EC88}
// *********************************************************************//
  IDymoRuler = interface(IUnknown)
    ['{47386F50-AF0B-4AA5-B11D-574D27B4EC88}']
    function SetRubberBand(StartPos: Integer; EndPos: Integer): HResult; stdcall;
    function GetRubberBand(out StartPos: Integer; out EndPos: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IDymoToolBtn
// Flags:     (256) OleAutomation
// GUID:      {5BC61055-2CBC-4725-A1E8-0E401114FB64}
// *********************************************************************//
  IDymoToolBtn = interface(IUnknown)
    ['{5BC61055-2CBC-4725-A1E8-0E401114FB64}']
    function GetBitmapSize(out Value: Integer): HResult; stdcall;
    function SetBitmap(hInstanceValue: Integer; BmpResID: Integer): HResult; stdcall;
    function GetOnClick(out EventID: Integer; out EventHandler: IDymoNotifyEvent): HResult; stdcall;
    function SetOnClick(EventID: Integer; const EventHandler: IDymoNotifyEvent): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IDymoTBSpinCtrl
// Flags:     (256) OleAutomation
// GUID:      {41D47E64-5388-4DCE-8C41-F8112EB1520F}
// *********************************************************************//
  IDymoTBSpinCtrl = interface(IUnknown)
    ['{41D47E64-5388-4DCE-8C41-F8112EB1520F}']
    function GetMinValue(out Value: Double): HResult; stdcall;
    function SetMinValue(Value: Double): HResult; stdcall;
    function GetMaxValue(out Value: Double): HResult; stdcall;
    function SetMaxValue(Value: Double): HResult; stdcall;
    function GetStepValue(out Value: Double): HResult; stdcall;
    function SetStepValue(Value: Double): HResult; stdcall;
    function GetValue(out Value: Double): HResult; stdcall;
    function SetValue(Value: Double): HResult; stdcall;
    function GetSpinType(out Value: EnumDymoSpinType): HResult; stdcall;
    function SetSpinType(Value: EnumDymoSpinType): HResult; stdcall;
    function GetCaptionPos(out Value: EnumDymoCaptionPos): HResult; stdcall;
    function SetCaptionPos(Value: EnumDymoCaptionPos): HResult; stdcall;
    function GetWidth(out Value: Integer): HResult; stdcall;
    function SetWidth(Value: Integer): HResult; stdcall;
    function GetHeight(out Value: Integer): HResult; stdcall;
    function SetHeight(Value: Integer): HResult; stdcall;
    function SetCaptionFontStyle(Value: Integer): HResult; stdcall;
    function GetOnSpinUp(out EventID: Integer; out EventHandler: IDymoNotifyEvent): HResult; stdcall;
    function SetOnSpinUp(EventID: Integer; const EventHandler: IDymoNotifyEvent): HResult; stdcall;
    function GetOnSpinDn(out EventID: Integer; out EventHandler: IDymoNotifyEvent): HResult; stdcall;
    function SetOnSpinDn(EventID: Integer; const EventHandler: IDymoNotifyEvent): HResult; stdcall;
    function GetOnEnterKeyPressed(out EventID: Integer; out EventHandler: IDymoNotifyEvent): HResult; stdcall;
    function SetOnEnterKeyPressed(EventID: Integer; const EventHandler: IDymoNotifyEvent): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IDymoTBCmb
// Flags:     (256) OleAutomation
// GUID:      {B6F71C16-4927-404D-BC5E-6A6F146A530C}
// *********************************************************************//
  IDymoTBCmb = interface(IUnknown)
    ['{B6F71C16-4927-404D-BC5E-6A6F146A530C}']
    function GetCaptionPos(out Value: EnumDymoCaptionPos): HResult; stdcall;
    function SetCaptionPos(Value: EnumDymoCaptionPos): HResult; stdcall;
    function GetWidth(out Value: Integer): HResult; stdcall;
    function SetWidth(Value: Integer): HResult; stdcall;
    function GetHeight(out Value: Integer): HResult; stdcall;
    function SetHeight(Value: Integer): HResult; stdcall;
    function SetCaptionFontStyle(Value: Integer): HResult; stdcall;
    function GetText(out Value: WideString): HResult; stdcall;
    function SetText(const Value: WideString): HResult; stdcall;
    function SetDropDownCount(Value: Integer): HResult; stdcall;
    function GetSelected(out Index: Integer): HResult; stdcall;
    function SetSelected(Index: Integer): HResult; stdcall;
    function SetItemAt(Index: Integer; const ItemStr: WideString; Data: Integer): HResult; stdcall;
    function GetItemAt(Index: Integer; out ItemStr: WideString; out Data: Integer): HResult; stdcall;
    function ClearItems: HResult; stdcall;
    function SetOnItemSelect(EventID: Integer; const EventHandler: IDymoTBCmbEvent): HResult; stdcall;
    function GetOnItemSelect(out EventID: Integer; out EventHandler: IDymoTBCmbEvent): HResult; stdcall;
    function SetAutoDropDown(Value: Integer): HResult; stdcall;
    function GetAutoDropDown(out Value: Integer): HResult; stdcall;
    function SetAutoComplete(Value: Integer): HResult; stdcall;
    function GetAutoComplete(out Value: Integer): HResult; stdcall;
    function SetOnDrawItem(EventID: Integer; const EventHandler: IDymoTBCmbEvent): HResult; stdcall;
    function GetOnDrawItem(out EventID: Integer; out EventHandler: IDymoTBCmbEvent): HResult; stdcall;
    function SetOnKeyPress(EventID: Integer; const EventHandler: IDymoTBCmbEvent): HResult; stdcall;
    function GetOnKeyPress(out EventID: Integer; out EventHandler: IDymoTBCmbEvent): HResult; stdcall;
    function SetOnCloseUp(EventID: Integer; const EventHandler: IDymoNotifyEvent): HResult; stdcall;
    function GetOnCloseUp(out EventID: Integer; out EventHandler: IDymoNotifyEvent): HResult; stdcall;
    function SetOnDropDown(EventID: Integer; const EventHandler: IDymoNotifyEvent): HResult; stdcall;
    function GetOnDropDown(out EventID: Integer; out EventHandler: IDymoNotifyEvent): HResult; stdcall;
    function SetOnEnter(EventID: Integer; const EventHandler: IDymoNotifyEvent): HResult; stdcall;
    function GetOnEnter(out EventID: Integer; out EventHandler: IDymoNotifyEvent): HResult; stdcall;
    function SetOnKeyDown(EventID: Integer; const EventHandler: IDymoTBCmbEvent): HResult; stdcall;
    function GetOnKeyDown(out EventID: Integer; out EventHandler: IDymoTBCmbEvent): HResult; stdcall;
    function GetStyle(out Value: Integer): HResult; stdcall;
    function SetStyle(Value: Integer): HResult; stdcall;
    function GetOnMeasureItem(out EventID: Integer; out EventHandler: IDymoTBCmbEvent): HResult; stdcall;
    function SetOnMeasureItem(EventID: Integer; const EventHandler: IDymoTBCmbEvent): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IDymoTBCmbEvent
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CDF12C32-E2FB-4509-AB83-152E10C72AAF}
// *********************************************************************//
  IDymoTBCmbEvent = interface(IDispatch)
    ['{CDF12C32-E2FB-4509-AB83-152E10C72AAF}']
    procedure OnKeyPressEvent(EventID: Integer; SenderID: Integer; var Key: Integer); safecall;
    procedure OnCmbDrawItemEvent(hDC: Integer; ItemIndex: Integer; ItemState: Integer; x: Integer; 
                                 y: Integer; cx: Integer; cy: Integer); safecall;
    procedure OnKeyDownEvent(EventID: Integer; SenderID: Integer; var Key: Integer; 
                             ShiftState: Integer); safecall;
    procedure OnItemSelectEvent(EventID: Integer; SenderID: Integer; Index: Integer; Data: Integer); safecall;
    procedure OnCmbMeasureItemEvent(EventID: Integer; Index: Integer; var Height: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  IDymoTBCmbEventDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CDF12C32-E2FB-4509-AB83-152E10C72AAF}
// *********************************************************************//
  IDymoTBCmbEventDisp = dispinterface
    ['{CDF12C32-E2FB-4509-AB83-152E10C72AAF}']
    procedure OnKeyPressEvent(EventID: Integer; SenderID: Integer; var Key: Integer); dispid 202;
    procedure OnCmbDrawItemEvent(hDC: Integer; ItemIndex: Integer; ItemState: Integer; x: Integer; 
                                 y: Integer; cx: Integer; cy: Integer); dispid 203;
    procedure OnKeyDownEvent(EventID: Integer; SenderID: Integer; var Key: Integer; 
                             ShiftState: Integer); dispid 201;
    procedure OnItemSelectEvent(EventID: Integer; SenderID: Integer; Index: Integer; Data: Integer); dispid 204;
    procedure OnCmbMeasureItemEvent(EventID: Integer; Index: Integer; var Height: Integer); dispid 205;
  end;

// *********************************************************************//
// Interface: IDymoTBLabel
// Flags:     (256) OleAutomation
// GUID:      {FC9792DB-21B8-4021-965B-5299C4B943A2}
// *********************************************************************//
  IDymoTBLabel = interface(IUnknown)
    ['{FC9792DB-21B8-4021-965B-5299C4B943A2}']
    function SetCaptionFontStyle(Value: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IDymoTBRadioBtnGroup
// Flags:     (256) OleAutomation
// GUID:      {1216DF81-A9B6-4C42-9CAB-F7B20FAB576E}
// *********************************************************************//
  IDymoTBRadioBtnGroup = interface(IUnknown)
    ['{1216DF81-A9B6-4C42-9CAB-F7B20FAB576E}']
    function SetColumns(Value: Integer): HResult; stdcall;
    function AddItem(const Caption: WideString; const Tooltip: WideString; out pItemID: Integer): HResult; stdcall;
    function GetCheckedItem(out ItemID: Integer): HResult; stdcall;
    function GetOnItemClick(out EventID: Integer; out EventHandler: IDymoTBGroupCtrlEvent): HResult; stdcall;
    function SetOnItemClick(EventID: Integer; const EventHandler: IDymoTBGroupCtrlEvent): HResult; stdcall;
    function SetCaptionFontStyle(Value: Integer): HResult; stdcall;
    function GetItemCaption(ItemID: Integer; out Value: WideString): HResult; stdcall;
    function SetItemCaption(ItemID: Integer; const Value: WideString): HResult; stdcall;
    function SetCheckedItem(ItemID: Integer): HResult; stdcall;
    function GetCaptionPos(out Value: EnumDymoCaptionPos): HResult; stdcall;
    function SetCaptionPos(Value: EnumDymoCaptionPos): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IDymoTBGroupCtrlEvent
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A02AC14A-B260-453D-A41D-114ED9F678A5}
// *********************************************************************//
  IDymoTBGroupCtrlEvent = interface(IDispatch)
    ['{A02AC14A-B260-453D-A41D-114ED9F678A5}']
    procedure OnItemEvent(EventID: Integer; SenderID: Integer; SubItemID: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  IDymoTBGroupCtrlEventDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A02AC14A-B260-453D-A41D-114ED9F678A5}
// *********************************************************************//
  IDymoTBGroupCtrlEventDisp = dispinterface
    ['{A02AC14A-B260-453D-A41D-114ED9F678A5}']
    procedure OnItemEvent(EventID: Integer; SenderID: Integer; SubItemID: Integer); dispid 201;
  end;

// *********************************************************************//
// Interface: IDymoTBCheckboxGroup
// Flags:     (256) OleAutomation
// GUID:      {0BE7E366-D4A6-4521-AE82-38CAF35AB0A1}
// *********************************************************************//
  IDymoTBCheckboxGroup = interface(IUnknown)
    ['{0BE7E366-D4A6-4521-AE82-38CAF35AB0A1}']
    function SetColumns(Value: Integer): HResult; stdcall;
    function AddItem(const Caption: WideString; const Tooltip: WideString; out pItemID: Integer): HResult; stdcall;
    function GetItemChecked(ItemID: Integer; out Checked: Integer): HResult; stdcall;
    function SetCaptionFontStyle(Value: Integer): HResult; stdcall;
    function GetItemCaption(ItemID: Integer; out Value: WideString): HResult; stdcall;
    function SetItemCaption(ItemID: Integer; const Value: WideString): HResult; stdcall;
    function SetCheckedItem(ItemID: Integer; Checked: Integer): HResult; stdcall;
    function GetOnItemClick(out EventID: Integer; out EventHandler: IDymoTBGroupCtrlEvent): HResult; stdcall;
    function SetOnItemClick(EventID: Integer; const EventHandler: IDymoTBGroupCtrlEvent): HResult; stdcall;
    function GetItemEnabled(ItemID: Integer; out Enabled: Integer): HResult; stdcall;
    function SetItemChecked(ItemID: Integer; Checked: Integer): HResult; stdcall;
    function SetItemEnabled(ItemID: Integer; Enabled: Integer): HResult; stdcall;
    function GetCaptionPos(out Value: EnumDymoCaptionPos): HResult; stdcall;
    function SetCaptionPos(Value: EnumDymoCaptionPos): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IDymoMeasurementCtrl
// Flags:     (256) OleAutomation
// GUID:      {0554F428-1A4F-4C38-B5BB-222C64D5C279}
// *********************************************************************//
  IDymoMeasurementCtrl = interface(IUnknown)
    ['{0554F428-1A4F-4C38-B5BB-222C64D5C279}']
    function GetValue(out Value: Integer): HResult; stdcall;
    function SetValue(Value: Integer): HResult; stdcall;
    function GetWidth(out Value: Integer): HResult; stdcall;
    function SetWidth(Value: Integer): HResult; stdcall;
    function GetHeight(out Value: Integer): HResult; stdcall;
    function SetHeight(Value: Integer): HResult; stdcall;
    function GetCaptionPos(out Value: EnumDymoCaptionPos): HResult; stdcall;
    function SetCaptionPos(Value: EnumDymoCaptionPos): HResult; stdcall;
    function SetCaptionFontStyle(Value: Integer): HResult; stdcall;
    function GetOnValidEntry(out EventID: Integer; out EventHandler: IDymoNotifyEvent): HResult; stdcall;
    function SetOnValidEntry(EventID: Integer; const EventHandler: IDymoNotifyEvent): HResult; stdcall;
    function GetMeasurementUnit(out Value: EnumDymoMeasurementUnit): HResult; stdcall;
    function SetMeasurementUnit(Value: EnumDymoMeasurementUnit): HResult; stdcall;
    function SetMinValue(Value: Integer): HResult; stdcall;
    function GetMinValue(out Value: Integer): HResult; stdcall;
    function SetMaxValue(Value: Integer): HResult; stdcall;
    function GetMaxValue(out Value: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IDymoTabStopEvent
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0D75F3A-033F-4F47-8F00-A479EA42139D}
// *********************************************************************//
  IDymoTabStopEvent = interface(IDispatch)
    ['{B0D75F3A-033F-4F47-8F00-A479EA42139D}']
    procedure OnTabStopEvent(EventType: EnumDymoTabStopEventType; TabIndex: Integer; 
                             TabPosition: Integer; TabStyle: EnumDymoTabStopStyle); safecall;
  end;

// *********************************************************************//
// DispIntf:  IDymoTabStopEventDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0D75F3A-033F-4F47-8F00-A479EA42139D}
// *********************************************************************//
  IDymoTabStopEventDisp = dispinterface
    ['{B0D75F3A-033F-4F47-8F00-A479EA42139D}']
    procedure OnTabStopEvent(EventType: EnumDymoTabStopEventType; TabIndex: Integer; 
                             TabPosition: Integer; TabStyle: EnumDymoTabStopStyle); dispid 201;
  end;

// *********************************************************************//
// Interface: IDymoTape
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {37F075D4-37FE-43CF-9AE0-BA7F4136B470}
// *********************************************************************//
  IDymoTape = interface(IDispatch)
    ['{37F075D4-37FE-43CF-9AE0-BA7F4136B470}']
    function Get_FileName: WideString; safecall;
    function Get_LabelOrientation: Integer; safecall;
    procedure Set_LabelOrientation(Value: Integer); safecall;
    function Get_TextAlignment: Integer; safecall;
    procedure Set_TextAlignment(Value: Integer); safecall;
    function Get_LabelLength: Integer; safecall;
    procedure Set_LabelLength(Value: Integer); safecall;
    function Get_BorderMode: Integer; safecall;
    procedure Set_BorderMode(Value: Integer); safecall;
    function Get_SysTray: WordBool; safecall;
    procedure Set_SysTray(Value: WordBool); safecall;
    function Open(const FileName: WideString): WordBool; safecall;
    function Save: WordBool; safecall;
    function SaveAs(const FileName: WideString): WordBool; safecall;
    function Print(Copies: Integer): WordBool; safecall;
    procedure Hide; safecall;
    procedure Show; safecall;
    procedure Quit; safecall;
    function GetPrinters: WideString; safecall;
    function SelectPrinter(const PrinterName: WideString): WordBool; safecall;
    function AddText(const TextString: WideString; const FontFormat: WideString; 
                     OutlineEffect: WordBool; ShadowEffect: WordBool): WordBool; safecall;
    function AddBarcode(const Data: WideString; Format: Integer; Size: Integer; 
                        TextPosition: Integer): WordBool; safecall;
    function AddPicture(const FileName: WideString): WordBool; safecall;
    function PasteText: WordBool; safecall;
    function PastePicture: WordBool; safecall;
    function AddTabStop(Position: Integer; Style: Integer): Integer; safecall;
    function DeleteTabStop(TabIndex: Integer): WordBool; safecall;
    function New: WordBool; safecall;
    function IsTapeWidthSupported(Width: Integer): WordBool; safecall;
    function SetTapeWidth(Width: Integer): WordBool; safecall;
    property FileName: WideString read Get_FileName;
    property LabelOrientation: Integer read Get_LabelOrientation write Set_LabelOrientation;
    property TextAlignment: Integer read Get_TextAlignment write Set_TextAlignment;
    property LabelLength: Integer read Get_LabelLength write Set_LabelLength;
    property BorderMode: Integer read Get_BorderMode write Set_BorderMode;
    property SysTray: WordBool read Get_SysTray write Set_SysTray;
  end;

// *********************************************************************//
// DispIntf:  IDymoTapeDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {37F075D4-37FE-43CF-9AE0-BA7F4136B470}
// *********************************************************************//
  IDymoTapeDisp = dispinterface
    ['{37F075D4-37FE-43CF-9AE0-BA7F4136B470}']
    property FileName: WideString readonly dispid 201;
    property LabelOrientation: Integer dispid 202;
    property TextAlignment: Integer dispid 203;
    property LabelLength: Integer dispid 204;
    property BorderMode: Integer dispid 205;
    property SysTray: WordBool dispid 206;
    function Open(const FileName: WideString): WordBool; dispid 207;
    function Save: WordBool; dispid 208;
    function SaveAs(const FileName: WideString): WordBool; dispid 209;
    function Print(Copies: Integer): WordBool; dispid 210;
    procedure Hide; dispid 211;
    procedure Show; dispid 212;
    procedure Quit; dispid 213;
    function GetPrinters: WideString; dispid 214;
    function SelectPrinter(const PrinterName: WideString): WordBool; dispid 215;
    function AddText(const TextString: WideString; const FontFormat: WideString; 
                     OutlineEffect: WordBool; ShadowEffect: WordBool): WordBool; dispid 216;
    function AddBarcode(const Data: WideString; Format: Integer; Size: Integer; 
                        TextPosition: Integer): WordBool; dispid 217;
    function AddPicture(const FileName: WideString): WordBool; dispid 218;
    function PasteText: WordBool; dispid 219;
    function PastePicture: WordBool; dispid 220;
    function AddTabStop(Position: Integer; Style: Integer): Integer; dispid 221;
    function DeleteTabStop(TabIndex: Integer): WordBool; dispid 222;
    function New: WordBool; dispid 223;
    function IsTapeWidthSupported(Width: Integer): WordBool; dispid 224;
    function SetTapeWidth(Width: Integer): WordBool; dispid 225;
  end;

// *********************************************************************//
// Interface: IDymoTape2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {04C956F2-6DCD-46A0-AA58-23120F94E80B}
// *********************************************************************//
  IDymoTape2 = interface(IDymoTape)
    ['{04C956F2-6DCD-46A0-AA58-23120F94E80B}']
    function SmartPasteFromClipboard: WordBool; safecall;
    function SmartPasteFromFile(const FileName: WideString): WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  IDymoTape2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {04C956F2-6DCD-46A0-AA58-23120F94E80B}
// *********************************************************************//
  IDymoTape2Disp = dispinterface
    ['{04C956F2-6DCD-46A0-AA58-23120F94E80B}']
    function SmartPasteFromClipboard: WordBool; dispid 301;
    function SmartPasteFromFile(const FileName: WideString): WordBool; dispid 302;
    property FileName: WideString readonly dispid 201;
    property LabelOrientation: Integer dispid 202;
    property TextAlignment: Integer dispid 203;
    property LabelLength: Integer dispid 204;
    property BorderMode: Integer dispid 205;
    property SysTray: WordBool dispid 206;
    function Open(const FileName: WideString): WordBool; dispid 207;
    function Save: WordBool; dispid 208;
    function SaveAs(const FileName: WideString): WordBool; dispid 209;
    function Print(Copies: Integer): WordBool; dispid 210;
    procedure Hide; dispid 211;
    procedure Show; dispid 212;
    procedure Quit; dispid 213;
    function GetPrinters: WideString; dispid 214;
    function SelectPrinter(const PrinterName: WideString): WordBool; dispid 215;
    function AddText(const TextString: WideString; const FontFormat: WideString; 
                     OutlineEffect: WordBool; ShadowEffect: WordBool): WordBool; dispid 216;
    function AddBarcode(const Data: WideString; Format: Integer; Size: Integer; 
                        TextPosition: Integer): WordBool; dispid 217;
    function AddPicture(const FileName: WideString): WordBool; dispid 218;
    function PasteText: WordBool; dispid 219;
    function PastePicture: WordBool; dispid 220;
    function AddTabStop(Position: Integer; Style: Integer): Integer; dispid 221;
    function DeleteTabStop(TabIndex: Integer): WordBool; dispid 222;
    function New: WordBool; dispid 223;
    function IsTapeWidthSupported(Width: Integer): WordBool; dispid 224;
    function SetTapeWidth(Width: Integer): WordBool; dispid 225;
  end;

// *********************************************************************//
// Interface: IDymoTapeShellExt
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {75AE2960-DD22-47FC-A05D-6731515DFA93}
// *********************************************************************//
  IDymoTapeShellExt = interface(IDispatch)
    ['{75AE2960-DD22-47FC-A05D-6731515DFA93}']
    function GetVerticalLabel: Integer; safecall;
    procedure SetVerticalLabel(Value: Integer); safecall;
    function GetTextAlignment: Integer; safecall;
    procedure SetTextAlignment(Value: Integer); safecall;
    function GetBorderMode: Integer; safecall;
    procedure SetBorderMode(Value: Integer); safecall;
    function AddText(const TextString: WideString; const FontName: WideString; FontSize: Integer; 
                     FontStyle: Integer; cfMask: LongWord; Charset: Integer): Integer; safecall;
    function AddBarcode(const Data: WideString; Format: Integer; Size: Integer; TextPos: Integer): Integer; safecall;
    function AddPicture(const FileName: WideString): Integer; safecall;
    function PasteText: Integer; safecall;
    function PastePicture: Integer; safecall;
    function AddTapStop(Position: Integer): Integer; safecall;
    function DeleteTapStop(TabIndex: Integer): Integer; safecall;
    function IsTapeWidthSupported(Width: Integer): WordBool; safecall;
    function SetTapeWidth(Width: Integer): WordBool; safecall;
    function GetLabelLength: Integer; safecall;
    procedure SetLabelLength(Value: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  IDymoTapeShellExtDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {75AE2960-DD22-47FC-A05D-6731515DFA93}
// *********************************************************************//
  IDymoTapeShellExtDisp = dispinterface
    ['{75AE2960-DD22-47FC-A05D-6731515DFA93}']
    function GetVerticalLabel: Integer; dispid 201;
    procedure SetVerticalLabel(Value: Integer); dispid 202;
    function GetTextAlignment: Integer; dispid 203;
    procedure SetTextAlignment(Value: Integer); dispid 204;
    function GetBorderMode: Integer; dispid 205;
    procedure SetBorderMode(Value: Integer); dispid 206;
    function AddText(const TextString: WideString; const FontName: WideString; FontSize: Integer; 
                     FontStyle: Integer; cfMask: LongWord; Charset: Integer): Integer; dispid 207;
    function AddBarcode(const Data: WideString; Format: Integer; Size: Integer; TextPos: Integer): Integer; dispid 208;
    function AddPicture(const FileName: WideString): Integer; dispid 209;
    function PasteText: Integer; dispid 210;
    function PastePicture: Integer; dispid 211;
    function AddTapStop(Position: Integer): Integer; dispid 212;
    function DeleteTapStop(TabIndex: Integer): Integer; dispid 213;
    function IsTapeWidthSupported(Width: Integer): WordBool; dispid 214;
    function SetTapeWidth(Width: Integer): WordBool; dispid 215;
    function GetLabelLength: Integer; dispid 216;
    procedure SetLabelLength(Value: Integer); dispid 217;
  end;

// *********************************************************************//
// Interface: IDymoAddIn4
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BAEE49F8-741A-4D5F-B807-CD60F938C427}
// *********************************************************************//
  IDymoAddIn4 = interface(IDymoAddIn3)
    ['{BAEE49F8-741A-4D5F-B807-CD60F938C427}']
    procedure StartPrintJob; safecall;
    procedure EndPrintJob; safecall;
    function IsTwinTurboPrinter(const PrinterName: WideString): WordBool; safecall;
    function GetCurrentPrinterName: WideString; safecall;
  end;

// *********************************************************************//
// DispIntf:  IDymoAddIn4Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BAEE49F8-741A-4D5F-B807-CD60F938C427}
// *********************************************************************//
  IDymoAddIn4Disp = dispinterface
    ['{BAEE49F8-741A-4D5F-B807-CD60F938C427}']
    procedure StartPrintJob; dispid 201;
    procedure EndPrintJob; dispid 202;
    function IsTwinTurboPrinter(const PrinterName: WideString): WordBool; dispid 203;
    function GetCurrentPrinterName: WideString; dispid 206;
    function Print2(Copies: Integer; bShowDlg: WordBool; Tray: Integer): WordBool; dispid 401;
    function GetCurrentPaperTray: Integer; dispid 402;
    function GetMRULabelFiles: WideString; dispid 301;
    function Open2(const FileName: WideString): WordBool; dispid 302;
    function GetMRULabelFileCount: Integer; dispid 303;
    function GetMRULabelFileName(Index: Integer): WideString; dispid 304;
    function OpenMRULabelFile(Index: Integer): WordBool; dispid 305;
    function OpenMRULabelFileByName(const FileName: WideString): WordBool; dispid 306;
    function Open(const FileName: WideString): WordBool; dispid 1;
    function Save: WordBool; dispid 2;
    function SaveAs(const FileName: WideString): WordBool; dispid 3;
    function Print(Copies: Integer; bShowDialog: WordBool): WordBool; dispid 4;
    procedure Hide; dispid 5;
    procedure Show; dispid 6;
    procedure SysTray(State: WordBool); dispid 7;
    procedure Quit; dispid 8;
    property FileName: WideString readonly dispid 9;
    function SelectPrinter(const Printer: WideString): WordBool; dispid 10;
    function GetDymoPrinters: WideString; dispid 11;
  end;

// *********************************************************************//
// Interface: IDymoAddIn5
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A1CD66DC-6A1F-4FD6-A7EF-57D00E28E00A}
// *********************************************************************//
  IDymoAddIn5 = interface(IDymoAddIn4)
    ['{A1CD66DC-6A1F-4FD6-A7EF-57D00E28E00A}']
    function SmartPasteFromClipboard: WordBool; safecall;
    function SmartPasteFromFile(const FileName: WideString): WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  IDymoAddIn5Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A1CD66DC-6A1F-4FD6-A7EF-57D00E28E00A}
// *********************************************************************//
  IDymoAddIn5Disp = dispinterface
    ['{A1CD66DC-6A1F-4FD6-A7EF-57D00E28E00A}']
    function SmartPasteFromClipboard: WordBool; dispid 601;
    function SmartPasteFromFile(const FileName: WideString): WordBool; dispid 602;
    procedure StartPrintJob; dispid 201;
    procedure EndPrintJob; dispid 202;
    function IsTwinTurboPrinter(const PrinterName: WideString): WordBool; dispid 203;
    function GetCurrentPrinterName: WideString; dispid 206;
    function Print2(Copies: Integer; bShowDlg: WordBool; Tray: Integer): WordBool; dispid 401;
    function GetCurrentPaperTray: Integer; dispid 402;
    function GetMRULabelFiles: WideString; dispid 301;
    function Open2(const FileName: WideString): WordBool; dispid 302;
    function GetMRULabelFileCount: Integer; dispid 303;
    function GetMRULabelFileName(Index: Integer): WideString; dispid 304;
    function OpenMRULabelFile(Index: Integer): WordBool; dispid 305;
    function OpenMRULabelFileByName(const FileName: WideString): WordBool; dispid 306;
    function Open(const FileName: WideString): WordBool; dispid 1;
    function Save: WordBool; dispid 2;
    function SaveAs(const FileName: WideString): WordBool; dispid 3;
    function Print(Copies: Integer; bShowDialog: WordBool): WordBool; dispid 4;
    procedure Hide; dispid 5;
    procedure Show; dispid 6;
    procedure SysTray(State: WordBool); dispid 7;
    procedure Quit; dispid 8;
    property FileName: WideString readonly dispid 9;
    function SelectPrinter(const Printer: WideString): WordBool; dispid 10;
    function GetDymoPrinters: WideString; dispid 11;
  end;

// *********************************************************************//
// The Class CoDymoLabels provides a Create and CreateRemote method to          
// create instances of the default interface IDymoLabels exposed by              
// the CoClass DymoLabels. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDymoLabels = class
    class function Create: IDymoLabels;
    class function CreateRemote(const MachineName: string): IDymoLabels;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDymoLabels
// Help String      : LabelsObject
// Default Interface: IDymoLabels
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TDymoLabelsProperties= class;
{$ENDIF}
  TDymoLabels = class(TOleServer)
  private
    FIntf:        IDymoLabels;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TDymoLabelsProperties;
    function      GetServerProperties: TDymoLabelsProperties;
{$ENDIF}
    function      GetDefaultInterface: IDymoLabels;
  protected
    procedure InitServerData; override;
    function Get_AddressFieldCount: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDymoLabels);
    procedure Disconnect; override;
    function SetAddress(AddrIdx: Integer; const Address: WideString): WordBool;
    function SetField(const Field: WideString; const Text: WideString): WordBool;
    procedure PostNet(Index: Integer; const Position: WideString);
    function GetText(const Field: WideString): WideString;
    function GetObjectNames(bVariableOnly: WordBool): WideString;
    function PasteFromClipboard(const ObjectName: WideString): WordBool;
    function SetImageFile(const ObjectName: WideString; const FileName: WideString): WordBool;
    property DefaultInterface: IDymoLabels read GetDefaultInterface;
    property AddressFieldCount: Integer read Get_AddressFieldCount;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDymoLabelsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TDymoLabels
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TDymoLabelsProperties = class(TPersistent)
  private
    FServer:    TDymoLabels;
    function    GetDefaultInterface: IDymoLabels;
    constructor Create(AServer: TDymoLabels);
  protected
    function Get_AddressFieldCount: Integer;
  public
    property DefaultInterface: IDymoLabels read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoDymoShell provides a Create and CreateRemote method to          
// create instances of the default interface IDymoShell exposed by              
// the CoClass DymoShell. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDymoShell = class
    class function Create: IDymoShell;
    class function CreateRemote(const MachineName: string): IDymoShell;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDymoShell
// Help String      : DymoShell
// Default Interface: IDymoShell
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TDymoShellProperties= class;
{$ENDIF}
  TDymoShell = class(TOleServer)
  private
    FIntf:        IDymoShell;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TDymoShellProperties;
    function      GetServerProperties: TDymoShellProperties;
{$ENDIF}
    function      GetDefaultInterface: IDymoShell;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDymoShell);
    procedure Disconnect; override;
    function GetExeName(out Value: WideString): HResult;
    function GetAppTitle(out Value: WideString): HResult;
    function SetAppTitle(const Value: WideString): HResult;
    function GetMainMenu(out Value: IDymoShellMenu): HResult;
    function GetStatusbar(out Value: IDymoStatusBar): HResult;
    function GetSidebar(out Value: IDymoSidebar): HResult;
    function OnShellExtensibleResize(cx: Integer; cy: Integer): HResult;
    function GetViewportHandle(out Value: Integer): HResult;
    function SetFontAttributes(const FontName: WideString; FontSize: Integer; FontStyle: Integer; 
                               FontType: Integer; FontRGBColor: Integer; cfMask: LongWord): HResult;
    function EnableFontFormat: HResult;
    function DisableFontFormat: HResult;
    function GetHRuler(out Value: IDymoRuler): HResult;
    function GetVRuler(out Value: IDymoRuler): HResult;
    function GetToolbar(ToolbarID: Integer; out ppToolbar: IDymoToolbar): HResult;
    function AddPrimaryToolbar(out pID: Integer; out ppToolbar: IDymoToolbar): HResult;
    function AddSecondaryToolbar(out pID: Integer; out ppToolbar: IDymoToolbar): HResult;
    function GetMeasurementUnit(out Value: EnumDymoMeasurementUnit): HResult;
    function GetPrefOptLong(PrefOpt: EnumDymoPrefOpt; out Value: Integer): HResult;
    function GetPrefOptBSTR(PrefOpt: EnumDymoPrefOpt; out Value: WideString): HResult;
    function GetShellCtrl(ID: Integer; out ppIUnknown: IUnknown): HResult;
    function GetFolder(FolderType: EnumDymoFolderType; out Path: WideString): HResult;
    function GetNextTabStopPosition(CurrentPosition: Integer; 
                                    out TabStopStyle: EnumDymoTabStopStyle; 
                                    out TabStopPosition: Integer): HResult;
    function GetOnTabStopEventHandler(out EventHandler: IDymoTabStopEvent): HResult;
    function SetOnTabStopEventHandler(const EventHandler: IDymoTabStopEvent): HResult;
    function EnableTabStop: HResult;
    function DisableTabStop: HResult;
    function SetPrefOptLong(PrefOpt: Integer; Value: Integer): HResult;
    function SetPrefOptBSTR(PrefOpt: Integer; const Value: WideString): HResult;
    function AddTabStop(XPos: Integer; Style: EnumDymoTabStopStyle; out Index: Integer): HResult;
    function DeleteTabStop(Index: Integer): HResult;
    function ModifyTabStop(Index: Integer; XPos: Integer; Style: Integer): HResult;
    function ClearAllTabStops: HResult;
    function SetTextHorzTextAlignment(Value: EnumDymoTextHorzAlignment): HResult;
    function OnCaretPositionChange(x: Integer; y: Integer; CaretHeight: Integer): HResult;
    function OnAddInGetFocus: HResult;
    function OnAddInLoseFocus: HResult;
    function AddInRequestFocus: HResult;
    function OnContextHelp(HelpID: Integer): HResult;
    property DefaultInterface: IDymoShell read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDymoShellProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TDymoShell
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TDymoShellProperties = class(TPersistent)
  private
    FServer:    TDymoShell;
    function    GetDefaultInterface: IDymoShell;
    constructor Create(AServer: TDymoShell);
  protected
  public
    property DefaultInterface: IDymoShell read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoDymoShellMenu provides a Create and CreateRemote method to          
// create instances of the default interface IDymoShellMenu exposed by              
// the CoClass DymoShellMenu. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDymoShellMenu = class
    class function Create: IDymoShellMenu;
    class function CreateRemote(const MachineName: string): IDymoShellMenu;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDymoShellMenu
// Help String      : DymoShellMenu
// Default Interface: IDymoShellMenu
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TDymoShellMenuProperties= class;
{$ENDIF}
  TDymoShellMenu = class(TOleServer)
  private
    FIntf:        IDymoShellMenu;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TDymoShellMenuProperties;
    function      GetServerProperties: TDymoShellMenuProperties;
{$ENDIF}
    function      GetDefaultInterface: IDymoShellMenu;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDymoShellMenu);
    procedure Disconnect; override;
    function GetCaption(out Value: WideString): HResult;
    function SetCaption(const Value: WideString): HResult;
    function GetEnabled(out Value: Integer): HResult;
    function SetEnabled(Value: Integer): HResult;
    function GetVisible(out Value: Integer): HResult;
    function SetVisible(Value: Integer): HResult;
    function IsSeparator(out Value: Integer): HResult;
    function GetSubMenu(ID: Integer; out ppMenu: IDymoShellMenu): HResult;
    function GetFirstSubMenuID(out pID: Integer): HResult;
    function GetNextSubMenuID(out pID: Integer): HResult;
    function AddSubMenu(IsSeparator: Integer; out pID: Integer; out ppMenu: IDymoShellMenu): HResult;
    function DeleteSubMenu(ID: Integer): HResult;
    function InsertSubMenu(IsSeparator: Integer; BeforeThisSubMenuID: Integer; out pID: Integer; 
                           out ppMenu: IDymoShellMenu): HResult;
    function GetOnSelect(out EventID: Integer; out EventHandler: IDymoNotifyEvent): HResult;
    function SetOnSelect(EventID: Integer; const EventHandler: IDymoNotifyEvent): HResult;
    function GetChecked(out Value: Integer): HResult;
    function SetChecked(Value: Integer): HResult;
    property DefaultInterface: IDymoShellMenu read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDymoShellMenuProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TDymoShellMenu
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TDymoShellMenuProperties = class(TPersistent)
  private
    FServer:    TDymoShellMenu;
    function    GetDefaultInterface: IDymoShellMenu;
    constructor Create(AServer: TDymoShellMenu);
  protected
  public
    property DefaultInterface: IDymoShellMenu read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoDymoStatusBar provides a Create and CreateRemote method to          
// create instances of the default interface IDymoStatusBar exposed by              
// the CoClass DymoStatusBar. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDymoStatusBar = class
    class function Create: IDymoStatusBar;
    class function CreateRemote(const MachineName: string): IDymoStatusBar;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDymoStatusBar
// Help String      : DymoStatusBar
// Default Interface: IDymoStatusBar
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TDymoStatusBarProperties= class;
{$ENDIF}
  TDymoStatusBar = class(TOleServer)
  private
    FIntf:        IDymoStatusBar;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TDymoStatusBarProperties;
    function      GetServerProperties: TDymoStatusBarProperties;
{$ENDIF}
    function      GetDefaultInterface: IDymoStatusBar;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDymoStatusBar);
    procedure Disconnect; override;
    function GetColumnText(Index: Integer; out Value: WideString): HResult;
    function SetColumnText(Index: Integer; const Value: WideString): HResult;
    property DefaultInterface: IDymoStatusBar read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDymoStatusBarProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TDymoStatusBar
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TDymoStatusBarProperties = class(TPersistent)
  private
    FServer:    TDymoStatusBar;
    function    GetDefaultInterface: IDymoStatusBar;
    constructor Create(AServer: TDymoStatusBar);
  protected
  public
    property DefaultInterface: IDymoStatusBar read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoDymoSidebar provides a Create and CreateRemote method to          
// create instances of the default interface IDymoSidebar exposed by              
// the CoClass DymoSidebar. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDymoSidebar = class
    class function Create: IDymoSidebar;
    class function CreateRemote(const MachineName: string): IDymoSidebar;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDymoSidebar
// Help String      : DymoSidebar
// Default Interface: IDymoSidebar
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TDymoSidebarProperties= class;
{$ENDIF}
  TDymoSidebar = class(TOleServer)
  private
    FIntf:        IDymoSidebar;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TDymoSidebarProperties;
    function      GetServerProperties: TDymoSidebarProperties;
{$ENDIF}
    function      GetDefaultInterface: IDymoSidebar;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDymoSidebar);
    procedure Disconnect; override;
    function GetEnabled(ID: Integer; out Value: Integer): HResult;
    function SetEnabled(ID: Integer; Value: Integer): HResult;
    function GetChecked(ID: Integer; out Value: Integer): HResult;
    function SetChecked(ID: Integer; Value: Integer): HResult;
    function GetVisible(ID: Integer; out Value: Integer): HResult;
    function SetVisible(ID: Integer; Value: Integer): HResult;
    property DefaultInterface: IDymoSidebar read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDymoSidebarProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TDymoSidebar
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TDymoSidebarProperties = class(TPersistent)
  private
    FServer:    TDymoSidebar;
    function    GetDefaultInterface: IDymoSidebar;
    constructor Create(AServer: TDymoSidebar);
  protected
  public
    property DefaultInterface: IDymoSidebar read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoDymoToolbar provides a Create and CreateRemote method to          
// create instances of the default interface IDymoToolbar exposed by              
// the CoClass DymoToolbar. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDymoToolbar = class
    class function Create: IDymoToolbar;
    class function CreateRemote(const MachineName: string): IDymoToolbar;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDymoToolbar
// Help String      : DymoToolbar
// Default Interface: IDymoToolbar
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TDymoToolbarProperties= class;
{$ENDIF}
  TDymoToolbar = class(TOleServer)
  private
    FIntf:        IDymoToolbar;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TDymoToolbarProperties;
    function      GetServerProperties: TDymoToolbarProperties;
{$ENDIF}
    function      GetDefaultInterface: IDymoToolbar;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDymoToolbar);
    procedure Disconnect; override;
    function AddButton(IsSeparator: Integer; out pID: Integer; out ppBtn: IDymoToolBtn): HResult;
    function GetButtonHeight(out Value: Integer): HResult;
    function SetButtonHeight(Value: Integer): HResult;
    function GetButtonWidth(out Value: Integer): HResult;
    function SetButtonWidth(Value: Integer): HResult;
    function AddSpinControl(out pID: Integer; out ppSpinCtrl: IDymoTBSpinCtrl): HResult;
    function GetVisible(out Value: Integer): HResult;
    function SetVisible(Value: Integer): HResult;
    function GetID(out Value: Integer): HResult;
    function AddComboBox(out pID: Integer; out ppCmb: IDymoTBCmb): HResult;
    function AddLabel(out pID: Integer; out ppLbl: IDymoTBLabel): HResult;
    function AddRadioButtonGroup(out pID: Integer; out ppRBGrp: IDymoTBRadioBtnGroup): HResult;
    function AddCheckboxGroup(out pID: Integer; out ppCheckboxGrp: IDymoTBCheckboxGroup): HResult;
    function AddMeasurementCtrl(out pID: Integer; out ppCtrl: IDymoMeasurementCtrl): HResult;
    function GetButton(ID: Integer; out ppBtn: IDymoToolBtn): HResult;
    property DefaultInterface: IDymoToolbar read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDymoToolbarProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TDymoToolbar
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TDymoToolbarProperties = class(TPersistent)
  private
    FServer:    TDymoToolbar;
    function    GetDefaultInterface: IDymoToolbar;
    constructor Create(AServer: TDymoToolbar);
  protected
  public
    property DefaultInterface: IDymoToolbar read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoDymoRuler provides a Create and CreateRemote method to          
// create instances of the default interface IDymoRuler exposed by              
// the CoClass DymoRuler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDymoRuler = class
    class function Create: IDymoRuler;
    class function CreateRemote(const MachineName: string): IDymoRuler;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDymoRuler
// Help String      : DymoRuler
// Default Interface: IDymoRuler
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TDymoRulerProperties= class;
{$ENDIF}
  TDymoRuler = class(TOleServer)
  private
    FIntf:        IDymoRuler;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TDymoRulerProperties;
    function      GetServerProperties: TDymoRulerProperties;
{$ENDIF}
    function      GetDefaultInterface: IDymoRuler;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDymoRuler);
    procedure Disconnect; override;
    function SetRubberBand(StartPos: Integer; EndPos: Integer): HResult;
    function GetRubberBand(out StartPos: Integer; out EndPos: Integer): HResult;
    property DefaultInterface: IDymoRuler read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDymoRulerProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TDymoRuler
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TDymoRulerProperties = class(TPersistent)
  private
    FServer:    TDymoRuler;
    function    GetDefaultInterface: IDymoRuler;
    constructor Create(AServer: TDymoRuler);
  protected
  public
    property DefaultInterface: IDymoRuler read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoDymoToolBtn provides a Create and CreateRemote method to          
// create instances of the default interface IDymoToolBtn exposed by              
// the CoClass DymoToolBtn. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDymoToolBtn = class
    class function Create: IDymoToolBtn;
    class function CreateRemote(const MachineName: string): IDymoToolBtn;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDymoToolBtn
// Help String      : DymoToolBtn
// Default Interface: IDymoToolBtn
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TDymoToolBtnProperties= class;
{$ENDIF}
  TDymoToolBtn = class(TOleServer)
  private
    FIntf:        IDymoToolBtn;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TDymoToolBtnProperties;
    function      GetServerProperties: TDymoToolBtnProperties;
{$ENDIF}
    function      GetDefaultInterface: IDymoToolBtn;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDymoToolBtn);
    procedure Disconnect; override;
    function GetBitmapSize(out Value: Integer): HResult;
    function SetBitmap(hInstanceValue: Integer; BmpResID: Integer): HResult;
    function GetOnClick(out EventID: Integer; out EventHandler: IDymoNotifyEvent): HResult;
    function SetOnClick(EventID: Integer; const EventHandler: IDymoNotifyEvent): HResult;
    property DefaultInterface: IDymoToolBtn read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDymoToolBtnProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TDymoToolBtn
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TDymoToolBtnProperties = class(TPersistent)
  private
    FServer:    TDymoToolBtn;
    function    GetDefaultInterface: IDymoToolBtn;
    constructor Create(AServer: TDymoToolBtn);
  protected
  public
    property DefaultInterface: IDymoToolBtn read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoDymoTBSpinCtrl provides a Create and CreateRemote method to          
// create instances of the default interface IDymoTBSpinCtrl exposed by              
// the CoClass DymoTBSpinCtrl. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDymoTBSpinCtrl = class
    class function Create: IDymoTBSpinCtrl;
    class function CreateRemote(const MachineName: string): IDymoTBSpinCtrl;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDymoTBSpinCtrl
// Help String      : DymoSpinCtrl
// Default Interface: IDymoTBSpinCtrl
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TDymoTBSpinCtrlProperties= class;
{$ENDIF}
  TDymoTBSpinCtrl = class(TOleServer)
  private
    FIntf:        IDymoTBSpinCtrl;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TDymoTBSpinCtrlProperties;
    function      GetServerProperties: TDymoTBSpinCtrlProperties;
{$ENDIF}
    function      GetDefaultInterface: IDymoTBSpinCtrl;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDymoTBSpinCtrl);
    procedure Disconnect; override;
    function GetMinValue(out Value: Double): HResult;
    function SetMinValue(Value: Double): HResult;
    function GetMaxValue(out Value: Double): HResult;
    function SetMaxValue(Value: Double): HResult;
    function GetStepValue(out Value: Double): HResult;
    function SetStepValue(Value: Double): HResult;
    function GetValue(out Value: Double): HResult;
    function SetValue(Value: Double): HResult;
    function GetSpinType(out Value: EnumDymoSpinType): HResult;
    function SetSpinType(Value: EnumDymoSpinType): HResult;
    function GetCaptionPos(out Value: EnumDymoCaptionPos): HResult;
    function SetCaptionPos(Value: EnumDymoCaptionPos): HResult;
    function GetWidth(out Value: Integer): HResult;
    function SetWidth(Value: Integer): HResult;
    function GetHeight(out Value: Integer): HResult;
    function SetHeight(Value: Integer): HResult;
    function SetCaptionFontStyle(Value: Integer): HResult;
    function GetOnSpinUp(out EventID: Integer; out EventHandler: IDymoNotifyEvent): HResult;
    function SetOnSpinUp(EventID: Integer; const EventHandler: IDymoNotifyEvent): HResult;
    function GetOnSpinDn(out EventID: Integer; out EventHandler: IDymoNotifyEvent): HResult;
    function SetOnSpinDn(EventID: Integer; const EventHandler: IDymoNotifyEvent): HResult;
    function GetOnEnterKeyPressed(out EventID: Integer; out EventHandler: IDymoNotifyEvent): HResult;
    function SetOnEnterKeyPressed(EventID: Integer; const EventHandler: IDymoNotifyEvent): HResult;
    property DefaultInterface: IDymoTBSpinCtrl read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDymoTBSpinCtrlProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TDymoTBSpinCtrl
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TDymoTBSpinCtrlProperties = class(TPersistent)
  private
    FServer:    TDymoTBSpinCtrl;
    function    GetDefaultInterface: IDymoTBSpinCtrl;
    constructor Create(AServer: TDymoTBSpinCtrl);
  protected
  public
    property DefaultInterface: IDymoTBSpinCtrl read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoDymoTBCmb provides a Create and CreateRemote method to          
// create instances of the default interface IDymoTBCmb exposed by              
// the CoClass DymoTBCmb. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDymoTBCmb = class
    class function Create: IDymoTBCmb;
    class function CreateRemote(const MachineName: string): IDymoTBCmb;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDymoTBCmb
// Help String      : DymoTBCmb
// Default Interface: IDymoTBCmb
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TDymoTBCmbProperties= class;
{$ENDIF}
  TDymoTBCmb = class(TOleServer)
  private
    FIntf:        IDymoTBCmb;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TDymoTBCmbProperties;
    function      GetServerProperties: TDymoTBCmbProperties;
{$ENDIF}
    function      GetDefaultInterface: IDymoTBCmb;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDymoTBCmb);
    procedure Disconnect; override;
    function GetCaptionPos(out Value: EnumDymoCaptionPos): HResult;
    function SetCaptionPos(Value: EnumDymoCaptionPos): HResult;
    function GetWidth(out Value: Integer): HResult;
    function SetWidth(Value: Integer): HResult;
    function GetHeight(out Value: Integer): HResult;
    function SetHeight(Value: Integer): HResult;
    function SetCaptionFontStyle(Value: Integer): HResult;
    function GetText(out Value: WideString): HResult;
    function SetText(const Value: WideString): HResult;
    function SetDropDownCount(Value: Integer): HResult;
    function GetSelected(out Index: Integer): HResult;
    function SetSelected(Index: Integer): HResult;
    function SetItemAt(Index: Integer; const ItemStr: WideString; Data: Integer): HResult;
    function GetItemAt(Index: Integer; out ItemStr: WideString; out Data: Integer): HResult;
    function ClearItems: HResult;
    function SetOnItemSelect(EventID: Integer; const EventHandler: IDymoTBCmbEvent): HResult;
    function GetOnItemSelect(out EventID: Integer; out EventHandler: IDymoTBCmbEvent): HResult;
    function SetAutoDropDown(Value: Integer): HResult;
    function GetAutoDropDown(out Value: Integer): HResult;
    function SetAutoComplete(Value: Integer): HResult;
    function GetAutoComplete(out Value: Integer): HResult;
    function SetOnDrawItem(EventID: Integer; const EventHandler: IDymoTBCmbEvent): HResult;
    function GetOnDrawItem(out EventID: Integer; out EventHandler: IDymoTBCmbEvent): HResult;
    function SetOnKeyPress(EventID: Integer; const EventHandler: IDymoTBCmbEvent): HResult;
    function GetOnKeyPress(out EventID: Integer; out EventHandler: IDymoTBCmbEvent): HResult;
    function SetOnCloseUp(EventID: Integer; const EventHandler: IDymoNotifyEvent): HResult;
    function GetOnCloseUp(out EventID: Integer; out EventHandler: IDymoNotifyEvent): HResult;
    function SetOnDropDown(EventID: Integer; const EventHandler: IDymoNotifyEvent): HResult;
    function GetOnDropDown(out EventID: Integer; out EventHandler: IDymoNotifyEvent): HResult;
    function SetOnEnter(EventID: Integer; const EventHandler: IDymoNotifyEvent): HResult;
    function GetOnEnter(out EventID: Integer; out EventHandler: IDymoNotifyEvent): HResult;
    function SetOnKeyDown(EventID: Integer; const EventHandler: IDymoTBCmbEvent): HResult;
    function GetOnKeyDown(out EventID: Integer; out EventHandler: IDymoTBCmbEvent): HResult;
    function GetStyle(out Value: Integer): HResult;
    function SetStyle(Value: Integer): HResult;
    function GetOnMeasureItem(out EventID: Integer; out EventHandler: IDymoTBCmbEvent): HResult;
    function SetOnMeasureItem(EventID: Integer; const EventHandler: IDymoTBCmbEvent): HResult;
    property DefaultInterface: IDymoTBCmb read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDymoTBCmbProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TDymoTBCmb
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TDymoTBCmbProperties = class(TPersistent)
  private
    FServer:    TDymoTBCmb;
    function    GetDefaultInterface: IDymoTBCmb;
    constructor Create(AServer: TDymoTBCmb);
  protected
  public
    property DefaultInterface: IDymoTBCmb read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoDymoTBLabel provides a Create and CreateRemote method to          
// create instances of the default interface IDymoTBLabel exposed by              
// the CoClass DymoTBLabel. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDymoTBLabel = class
    class function Create: IDymoTBLabel;
    class function CreateRemote(const MachineName: string): IDymoTBLabel;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDymoTBLabel
// Help String      : DymoTBLabel
// Default Interface: IDymoTBLabel
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TDymoTBLabelProperties= class;
{$ENDIF}
  TDymoTBLabel = class(TOleServer)
  private
    FIntf:        IDymoTBLabel;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TDymoTBLabelProperties;
    function      GetServerProperties: TDymoTBLabelProperties;
{$ENDIF}
    function      GetDefaultInterface: IDymoTBLabel;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDymoTBLabel);
    procedure Disconnect; override;
    function SetCaptionFontStyle(Value: Integer): HResult;
    property DefaultInterface: IDymoTBLabel read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDymoTBLabelProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TDymoTBLabel
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TDymoTBLabelProperties = class(TPersistent)
  private
    FServer:    TDymoTBLabel;
    function    GetDefaultInterface: IDymoTBLabel;
    constructor Create(AServer: TDymoTBLabel);
  protected
  public
    property DefaultInterface: IDymoTBLabel read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoDymoTBRadioBtnGroup provides a Create and CreateRemote method to          
// create instances of the default interface IDymoTBRadioBtnGroup exposed by              
// the CoClass DymoTBRadioBtnGroup. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDymoTBRadioBtnGroup = class
    class function Create: IDymoTBRadioBtnGroup;
    class function CreateRemote(const MachineName: string): IDymoTBRadioBtnGroup;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDymoTBRadioBtnGroup
// Help String      : DymoTBRadioBtnGroup
// Default Interface: IDymoTBRadioBtnGroup
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TDymoTBRadioBtnGroupProperties= class;
{$ENDIF}
  TDymoTBRadioBtnGroup = class(TOleServer)
  private
    FIntf:        IDymoTBRadioBtnGroup;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TDymoTBRadioBtnGroupProperties;
    function      GetServerProperties: TDymoTBRadioBtnGroupProperties;
{$ENDIF}
    function      GetDefaultInterface: IDymoTBRadioBtnGroup;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDymoTBRadioBtnGroup);
    procedure Disconnect; override;
    function SetColumns(Value: Integer): HResult;
    function AddItem(const Caption: WideString; const Tooltip: WideString; out pItemID: Integer): HResult;
    function GetCheckedItem(out ItemID: Integer): HResult;
    function GetOnItemClick(out EventID: Integer; out EventHandler: IDymoTBGroupCtrlEvent): HResult;
    function SetOnItemClick(EventID: Integer; const EventHandler: IDymoTBGroupCtrlEvent): HResult;
    function SetCaptionFontStyle(Value: Integer): HResult;
    function GetItemCaption(ItemID: Integer; out Value: WideString): HResult;
    function SetItemCaption(ItemID: Integer; const Value: WideString): HResult;
    function SetCheckedItem(ItemID: Integer): HResult;
    function GetCaptionPos(out Value: EnumDymoCaptionPos): HResult;
    function SetCaptionPos(Value: EnumDymoCaptionPos): HResult;
    property DefaultInterface: IDymoTBRadioBtnGroup read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDymoTBRadioBtnGroupProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TDymoTBRadioBtnGroup
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TDymoTBRadioBtnGroupProperties = class(TPersistent)
  private
    FServer:    TDymoTBRadioBtnGroup;
    function    GetDefaultInterface: IDymoTBRadioBtnGroup;
    constructor Create(AServer: TDymoTBRadioBtnGroup);
  protected
  public
    property DefaultInterface: IDymoTBRadioBtnGroup read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoDymoTBCheckboxGroup provides a Create and CreateRemote method to          
// create instances of the default interface IDymoTBCheckboxGroup exposed by              
// the CoClass DymoTBCheckboxGroup. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDymoTBCheckboxGroup = class
    class function Create: IDymoTBCheckboxGroup;
    class function CreateRemote(const MachineName: string): IDymoTBCheckboxGroup;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDymoTBCheckboxGroup
// Help String      : DymoTBCheckboxGroup
// Default Interface: IDymoTBCheckboxGroup
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TDymoTBCheckboxGroupProperties= class;
{$ENDIF}
  TDymoTBCheckboxGroup = class(TOleServer)
  private
    FIntf:        IDymoTBCheckboxGroup;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TDymoTBCheckboxGroupProperties;
    function      GetServerProperties: TDymoTBCheckboxGroupProperties;
{$ENDIF}
    function      GetDefaultInterface: IDymoTBCheckboxGroup;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDymoTBCheckboxGroup);
    procedure Disconnect; override;
    function SetColumns(Value: Integer): HResult;
    function AddItem(const Caption: WideString; const Tooltip: WideString; out pItemID: Integer): HResult;
    function GetItemChecked(ItemID: Integer; out Checked: Integer): HResult;
    function SetCaptionFontStyle(Value: Integer): HResult;
    function GetItemCaption(ItemID: Integer; out Value: WideString): HResult;
    function SetItemCaption(ItemID: Integer; const Value: WideString): HResult;
    function SetCheckedItem(ItemID: Integer; Checked: Integer): HResult;
    function GetOnItemClick(out EventID: Integer; out EventHandler: IDymoTBGroupCtrlEvent): HResult;
    function SetOnItemClick(EventID: Integer; const EventHandler: IDymoTBGroupCtrlEvent): HResult;
    function GetItemEnabled(ItemID: Integer; out Enabled: Integer): HResult;
    function SetItemChecked(ItemID: Integer; Checked: Integer): HResult;
    function SetItemEnabled(ItemID: Integer; Enabled: Integer): HResult;
    function GetCaptionPos(out Value: EnumDymoCaptionPos): HResult;
    function SetCaptionPos(Value: EnumDymoCaptionPos): HResult;
    property DefaultInterface: IDymoTBCheckboxGroup read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDymoTBCheckboxGroupProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TDymoTBCheckboxGroup
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TDymoTBCheckboxGroupProperties = class(TPersistent)
  private
    FServer:    TDymoTBCheckboxGroup;
    function    GetDefaultInterface: IDymoTBCheckboxGroup;
    constructor Create(AServer: TDymoTBCheckboxGroup);
  protected
  public
    property DefaultInterface: IDymoTBCheckboxGroup read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoDymoMeasurementCtrl provides a Create and CreateRemote method to          
// create instances of the default interface IDymoMeasurementCtrl exposed by              
// the CoClass DymoMeasurementCtrl. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDymoMeasurementCtrl = class
    class function Create: IDymoMeasurementCtrl;
    class function CreateRemote(const MachineName: string): IDymoMeasurementCtrl;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDymoMeasurementCtrl
// Help String      : DymoMeasurementSpinEditCtrl
// Default Interface: IDymoMeasurementCtrl
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TDymoMeasurementCtrlProperties= class;
{$ENDIF}
  TDymoMeasurementCtrl = class(TOleServer)
  private
    FIntf:        IDymoMeasurementCtrl;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TDymoMeasurementCtrlProperties;
    function      GetServerProperties: TDymoMeasurementCtrlProperties;
{$ENDIF}
    function      GetDefaultInterface: IDymoMeasurementCtrl;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDymoMeasurementCtrl);
    procedure Disconnect; override;
    function GetValue(out Value: Integer): HResult;
    function SetValue(Value: Integer): HResult;
    function GetWidth(out Value: Integer): HResult;
    function SetWidth(Value: Integer): HResult;
    function GetHeight(out Value: Integer): HResult;
    function SetHeight(Value: Integer): HResult;
    function GetCaptionPos(out Value: EnumDymoCaptionPos): HResult;
    function SetCaptionPos(Value: EnumDymoCaptionPos): HResult;
    function SetCaptionFontStyle(Value: Integer): HResult;
    function GetOnValidEntry(out EventID: Integer; out EventHandler: IDymoNotifyEvent): HResult;
    function SetOnValidEntry(EventID: Integer; const EventHandler: IDymoNotifyEvent): HResult;
    function GetMeasurementUnit(out Value: EnumDymoMeasurementUnit): HResult;
    function SetMeasurementUnit(Value: EnumDymoMeasurementUnit): HResult;
    function SetMinValue(Value: Integer): HResult;
    function GetMinValue(out Value: Integer): HResult;
    function SetMaxValue(Value: Integer): HResult;
    function GetMaxValue(out Value: Integer): HResult;
    property DefaultInterface: IDymoMeasurementCtrl read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDymoMeasurementCtrlProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TDymoMeasurementCtrl
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TDymoMeasurementCtrlProperties = class(TPersistent)
  private
    FServer:    TDymoMeasurementCtrl;
    function    GetDefaultInterface: IDymoMeasurementCtrl;
    constructor Create(AServer: TDymoMeasurementCtrl);
  protected
  public
    property DefaultInterface: IDymoMeasurementCtrl read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoDymoAddIn provides a Create and CreateRemote method to          
// create instances of the default interface IDymoAddIn5 exposed by              
// the CoClass DymoAddIn. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDymoAddIn = class
    class function Create: IDymoAddIn5;
    class function CreateRemote(const MachineName: string): IDymoAddIn5;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDymoAddIn
// Help String      : RemoteObject
// Default Interface: IDymoAddIn5
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TDymoAddInProperties= class;
{$ENDIF}
  TDymoAddIn = class(TOleServer)
  private
    FIntf:        IDymoAddIn5;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TDymoAddInProperties;
    function      GetServerProperties: TDymoAddInProperties;
{$ENDIF}
    function      GetDefaultInterface: IDymoAddIn5;
  protected
    procedure InitServerData; override;
    function Get_FileName: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDymoAddIn5);
    procedure Disconnect; override;
    function Open(const FileName: WideString): WordBool;
    function Save: WordBool;
    function SaveAs(const FileName: WideString): WordBool;
    function Print(Copies: Integer; bShowDialog: WordBool): WordBool;
    procedure Hide;
    procedure Show;
    procedure SysTray(State: WordBool);
    procedure Quit;
    function SelectPrinter(const Printer: WideString): WordBool;
    function GetDymoPrinters: WideString;
    function GetMRULabelFiles: WideString;
    function Open2(const FileName: WideString): WordBool;
    function GetMRULabelFileCount: Integer;
    function GetMRULabelFileName(Index: Integer): WideString;
    function OpenMRULabelFile(Index: Integer): WordBool;
    function OpenMRULabelFileByName(const FileName: WideString): WordBool;
    function Print2(Copies: Integer; bShowDlg: WordBool; Tray: Integer): WordBool;
    function GetCurrentPaperTray: Integer;
    procedure StartPrintJob;
    procedure EndPrintJob;
    function IsTwinTurboPrinter(const PrinterName: WideString): WordBool;
    function GetCurrentPrinterName: WideString;
    function SmartPasteFromClipboard: WordBool;
    function SmartPasteFromFile(const FileName: WideString): WordBool;
    property DefaultInterface: IDymoAddIn5 read GetDefaultInterface;
    property FileName: WideString read Get_FileName;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDymoAddInProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TDymoAddIn
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TDymoAddInProperties = class(TPersistent)
  private
    FServer:    TDymoAddIn;
    function    GetDefaultInterface: IDymoAddIn5;
    constructor Create(AServer: TDymoAddIn);
  protected
    function Get_FileName: WideString;
  public
    property DefaultInterface: IDymoAddIn5 read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoDymoTape provides a Create and CreateRemote method to          
// create instances of the default interface IDymoTape2 exposed by              
// the CoClass DymoTape. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDymoTape = class
    class function Create: IDymoTape2;
    class function CreateRemote(const MachineName: string): IDymoTape2;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDymoTape
// Help String      : DymoTapeAddIn Object
// Default Interface: IDymoTape2
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TDymoTapeProperties= class;
{$ENDIF}
  TDymoTape = class(TOleServer)
  private
    FIntf:        IDymoTape2;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TDymoTapeProperties;
    function      GetServerProperties: TDymoTapeProperties;
{$ENDIF}
    function      GetDefaultInterface: IDymoTape2;
  protected
    procedure InitServerData; override;
    function Get_FileName: WideString;
    function Get_LabelOrientation: Integer;
    procedure Set_LabelOrientation(Value: Integer);
    function Get_TextAlignment: Integer;
    procedure Set_TextAlignment(Value: Integer);
    function Get_LabelLength: Integer;
    procedure Set_LabelLength(Value: Integer);
    function Get_BorderMode: Integer;
    procedure Set_BorderMode(Value: Integer);
    function Get_SysTray: WordBool;
    procedure Set_SysTray(Value: WordBool);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDymoTape2);
    procedure Disconnect; override;
    function Open(const FileName: WideString): WordBool;
    function Save: WordBool;
    function SaveAs(const FileName: WideString): WordBool;
    function Print(Copies: Integer): WordBool;
    procedure Hide;
    procedure Show;
    procedure Quit;
    function GetPrinters: WideString;
    function SelectPrinter(const PrinterName: WideString): WordBool;
    function AddText(const TextString: WideString; const FontFormat: WideString; 
                     OutlineEffect: WordBool; ShadowEffect: WordBool): WordBool;
    function AddBarcode(const Data: WideString; Format: Integer; Size: Integer; 
                        TextPosition: Integer): WordBool;
    function AddPicture(const FileName: WideString): WordBool;
    function PasteText: WordBool;
    function PastePicture: WordBool;
    function AddTabStop(Position: Integer; Style: Integer): Integer;
    function DeleteTabStop(TabIndex: Integer): WordBool;
    function New: WordBool;
    function IsTapeWidthSupported(Width: Integer): WordBool;
    function SetTapeWidth(Width: Integer): WordBool;
    function SmartPasteFromClipboard: WordBool;
    function SmartPasteFromFile(const FileName: WideString): WordBool;
    property DefaultInterface: IDymoTape2 read GetDefaultInterface;
    property FileName: WideString read Get_FileName;
    property LabelOrientation: Integer read Get_LabelOrientation write Set_LabelOrientation;
    property TextAlignment: Integer read Get_TextAlignment write Set_TextAlignment;
    property LabelLength: Integer read Get_LabelLength write Set_LabelLength;
    property BorderMode: Integer read Get_BorderMode write Set_BorderMode;
    property SysTray: WordBool read Get_SysTray write Set_SysTray;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDymoTapeProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TDymoTape
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TDymoTapeProperties = class(TPersistent)
  private
    FServer:    TDymoTape;
    function    GetDefaultInterface: IDymoTape2;
    constructor Create(AServer: TDymoTape);
  protected
    function Get_FileName: WideString;
    function Get_LabelOrientation: Integer;
    procedure Set_LabelOrientation(Value: Integer);
    function Get_TextAlignment: Integer;
    procedure Set_TextAlignment(Value: Integer);
    function Get_LabelLength: Integer;
    procedure Set_LabelLength(Value: Integer);
    function Get_BorderMode: Integer;
    procedure Set_BorderMode(Value: Integer);
    function Get_SysTray: WordBool;
    procedure Set_SysTray(Value: WordBool);
  public
    property DefaultInterface: IDymoTape2 read GetDefaultInterface;
  published
    property LabelOrientation: Integer read Get_LabelOrientation write Set_LabelOrientation;
    property TextAlignment: Integer read Get_TextAlignment write Set_TextAlignment;
    property LabelLength: Integer read Get_LabelLength write Set_LabelLength;
    property BorderMode: Integer read Get_BorderMode write Set_BorderMode;
    property SysTray: WordBool read Get_SysTray write Set_SysTray;
  end;
{$ENDIF}


procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses ComObj;

class function CoDymoLabels.Create: IDymoLabels;
begin
  Result := CreateComObject(CLASS_DymoLabels) as IDymoLabels;
end;

class function CoDymoLabels.CreateRemote(const MachineName: string): IDymoLabels;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DymoLabels) as IDymoLabels;
end;

procedure TDymoLabels.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{3AAD7661-8F83-11D2-8E5D-00A02415E90F}';
    IntfIID:   '{3AAD7660-8F83-11D2-8E5D-00A02415E90F}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDymoLabels.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IDymoLabels;
  end;
end;

procedure TDymoLabels.ConnectTo(svrIntf: IDymoLabels);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDymoLabels.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDymoLabels.GetDefaultInterface: IDymoLabels;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TDymoLabels.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDymoLabelsProperties.Create(Self);
{$ENDIF}
end;

destructor TDymoLabels.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TDymoLabels.GetServerProperties: TDymoLabelsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TDymoLabels.Get_AddressFieldCount: Integer;
begin
    Result := DefaultInterface.AddressFieldCount;
end;

function TDymoLabels.SetAddress(AddrIdx: Integer; const Address: WideString): WordBool;
begin
  Result := DefaultInterface.SetAddress(AddrIdx, Address);
end;

function TDymoLabels.SetField(const Field: WideString; const Text: WideString): WordBool;
begin
  Result := DefaultInterface.SetField(Field, Text);
end;

procedure TDymoLabels.PostNet(Index: Integer; const Position: WideString);
begin
  DefaultInterface.PostNet(Index, Position);
end;

function TDymoLabels.GetText(const Field: WideString): WideString;
begin
  Result := DefaultInterface.GetText(Field);
end;

function TDymoLabels.GetObjectNames(bVariableOnly: WordBool): WideString;
begin
  Result := DefaultInterface.GetObjectNames(bVariableOnly);
end;

function TDymoLabels.PasteFromClipboard(const ObjectName: WideString): WordBool;
begin
  Result := DefaultInterface.PasteFromClipboard(ObjectName);
end;

function TDymoLabels.SetImageFile(const ObjectName: WideString; const FileName: WideString): WordBool;
begin
  Result := DefaultInterface.SetImageFile(ObjectName, FileName);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TDymoLabelsProperties.Create(AServer: TDymoLabels);
begin
  inherited Create;
  FServer := AServer;
end;

function TDymoLabelsProperties.GetDefaultInterface: IDymoLabels;
begin
  Result := FServer.DefaultInterface;
end;

function TDymoLabelsProperties.Get_AddressFieldCount: Integer;
begin
    Result := DefaultInterface.AddressFieldCount;
end;

{$ENDIF}

class function CoDymoShell.Create: IDymoShell;
begin
  Result := CreateComObject(CLASS_DymoShell) as IDymoShell;
end;

class function CoDymoShell.CreateRemote(const MachineName: string): IDymoShell;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DymoShell) as IDymoShell;
end;

procedure TDymoShell.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{C6591821-CA09-4EBD-BFAA-B29DB551F363}';
    IntfIID:   '{5E545AB2-7106-4A3D-A398-66319C88595F}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDymoShell.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IDymoShell;
  end;
end;

procedure TDymoShell.ConnectTo(svrIntf: IDymoShell);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDymoShell.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDymoShell.GetDefaultInterface: IDymoShell;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TDymoShell.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDymoShellProperties.Create(Self);
{$ENDIF}
end;

destructor TDymoShell.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TDymoShell.GetServerProperties: TDymoShellProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TDymoShell.GetExeName(out Value: WideString): HResult;
begin
  Result := DefaultInterface.GetExeName(Value);
end;

function TDymoShell.GetAppTitle(out Value: WideString): HResult;
begin
  Result := DefaultInterface.GetAppTitle(Value);
end;

function TDymoShell.SetAppTitle(const Value: WideString): HResult;
begin
  Result := DefaultInterface.SetAppTitle(Value);
end;

function TDymoShell.GetMainMenu(out Value: IDymoShellMenu): HResult;
begin
  Result := DefaultInterface.GetMainMenu(Value);
end;

function TDymoShell.GetStatusbar(out Value: IDymoStatusBar): HResult;
begin
  Result := DefaultInterface.GetStatusbar(Value);
end;

function TDymoShell.GetSidebar(out Value: IDymoSidebar): HResult;
begin
  Result := DefaultInterface.GetSidebar(Value);
end;

function TDymoShell.OnShellExtensibleResize(cx: Integer; cy: Integer): HResult;
begin
  Result := DefaultInterface.OnShellExtensibleResize(cx, cy);
end;

function TDymoShell.GetViewportHandle(out Value: Integer): HResult;
begin
  Result := DefaultInterface.GetViewportHandle(Value);
end;

function TDymoShell.SetFontAttributes(const FontName: WideString; FontSize: Integer; 
                                      FontStyle: Integer; FontType: Integer; FontRGBColor: Integer; 
                                      cfMask: LongWord): HResult;
begin
  Result := DefaultInterface.SetFontAttributes(FontName, FontSize, FontStyle, FontType, 
                                               FontRGBColor, cfMask);
end;

function TDymoShell.EnableFontFormat: HResult;
begin
  Result := DefaultInterface.EnableFontFormat;
end;

function TDymoShell.DisableFontFormat: HResult;
begin
  Result := DefaultInterface.DisableFontFormat;
end;

function TDymoShell.GetHRuler(out Value: IDymoRuler): HResult;
begin
  Result := DefaultInterface.GetHRuler(Value);
end;

function TDymoShell.GetVRuler(out Value: IDymoRuler): HResult;
begin
  Result := DefaultInterface.GetVRuler(Value);
end;

function TDymoShell.GetToolbar(ToolbarID: Integer; out ppToolbar: IDymoToolbar): HResult;
begin
  Result := DefaultInterface.GetToolbar(ToolbarID, ppToolbar);
end;

function TDymoShell.AddPrimaryToolbar(out pID: Integer; out ppToolbar: IDymoToolbar): HResult;
begin
  Result := DefaultInterface.AddPrimaryToolbar(pID, ppToolbar);
end;

function TDymoShell.AddSecondaryToolbar(out pID: Integer; out ppToolbar: IDymoToolbar): HResult;
begin
  Result := DefaultInterface.AddSecondaryToolbar(pID, ppToolbar);
end;

function TDymoShell.GetMeasurementUnit(out Value: EnumDymoMeasurementUnit): HResult;
begin
  Result := DefaultInterface.GetMeasurementUnit(Value);
end;

function TDymoShell.GetPrefOptLong(PrefOpt: EnumDymoPrefOpt; out Value: Integer): HResult;
begin
  Result := DefaultInterface.GetPrefOptLong(PrefOpt, Value);
end;

function TDymoShell.GetPrefOptBSTR(PrefOpt: EnumDymoPrefOpt; out Value: WideString): HResult;
begin
  Result := DefaultInterface.GetPrefOptBSTR(PrefOpt, Value);
end;

function TDymoShell.GetShellCtrl(ID: Integer; out ppIUnknown: IUnknown): HResult;
begin
  Result := DefaultInterface.GetShellCtrl(ID, ppIUnknown);
end;

function TDymoShell.GetFolder(FolderType: EnumDymoFolderType; out Path: WideString): HResult;
begin
  Result := DefaultInterface.GetFolder(FolderType, Path);
end;

function TDymoShell.GetNextTabStopPosition(CurrentPosition: Integer; 
                                           out TabStopStyle: EnumDymoTabStopStyle; 
                                           out TabStopPosition: Integer): HResult;
begin
  Result := DefaultInterface.GetNextTabStopPosition(CurrentPosition, TabStopStyle, TabStopPosition);
end;

function TDymoShell.GetOnTabStopEventHandler(out EventHandler: IDymoTabStopEvent): HResult;
begin
  Result := DefaultInterface.GetOnTabStopEventHandler(EventHandler);
end;

function TDymoShell.SetOnTabStopEventHandler(const EventHandler: IDymoTabStopEvent): HResult;
begin
  Result := DefaultInterface.SetOnTabStopEventHandler(EventHandler);
end;

function TDymoShell.EnableTabStop: HResult;
begin
  Result := DefaultInterface.EnableTabStop;
end;

function TDymoShell.DisableTabStop: HResult;
begin
  Result := DefaultInterface.DisableTabStop;
end;

function TDymoShell.SetPrefOptLong(PrefOpt: Integer; Value: Integer): HResult;
begin
  Result := DefaultInterface.SetPrefOptLong(PrefOpt, Value);
end;

function TDymoShell.SetPrefOptBSTR(PrefOpt: Integer; const Value: WideString): HResult;
begin
  Result := DefaultInterface.SetPrefOptBSTR(PrefOpt, Value);
end;

function TDymoShell.AddTabStop(XPos: Integer; Style: EnumDymoTabStopStyle; out Index: Integer): HResult;
begin
  Result := DefaultInterface.AddTabStop(XPos, Style, Index);
end;

function TDymoShell.DeleteTabStop(Index: Integer): HResult;
begin
  Result := DefaultInterface.DeleteTabStop(Index);
end;

function TDymoShell.ModifyTabStop(Index: Integer; XPos: Integer; Style: Integer): HResult;
begin
  Result := DefaultInterface.ModifyTabStop(Index, XPos, Style);
end;

function TDymoShell.ClearAllTabStops: HResult;
begin
  Result := DefaultInterface.ClearAllTabStops;
end;

function TDymoShell.SetTextHorzTextAlignment(Value: EnumDymoTextHorzAlignment): HResult;
begin
  Result := DefaultInterface.SetTextHorzTextAlignment(Value);
end;

function TDymoShell.OnCaretPositionChange(x: Integer; y: Integer; CaretHeight: Integer): HResult;
begin
  Result := DefaultInterface.OnCaretPositionChange(x, y, CaretHeight);
end;

function TDymoShell.OnAddInGetFocus: HResult;
begin
  Result := DefaultInterface.OnAddInGetFocus;
end;

function TDymoShell.OnAddInLoseFocus: HResult;
begin
  Result := DefaultInterface.OnAddInLoseFocus;
end;

function TDymoShell.AddInRequestFocus: HResult;
begin
  Result := DefaultInterface.AddInRequestFocus;
end;

function TDymoShell.OnContextHelp(HelpID: Integer): HResult;
begin
  Result := DefaultInterface.OnContextHelp(HelpID);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TDymoShellProperties.Create(AServer: TDymoShell);
begin
  inherited Create;
  FServer := AServer;
end;

function TDymoShellProperties.GetDefaultInterface: IDymoShell;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoDymoShellMenu.Create: IDymoShellMenu;
begin
  Result := CreateComObject(CLASS_DymoShellMenu) as IDymoShellMenu;
end;

class function CoDymoShellMenu.CreateRemote(const MachineName: string): IDymoShellMenu;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DymoShellMenu) as IDymoShellMenu;
end;

procedure TDymoShellMenu.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{246B1812-AA66-4B8E-A2B2-35966EB70D8F}';
    IntfIID:   '{58726226-DCDE-41CF-AD79-7F8A89332E20}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDymoShellMenu.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IDymoShellMenu;
  end;
end;

procedure TDymoShellMenu.ConnectTo(svrIntf: IDymoShellMenu);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDymoShellMenu.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDymoShellMenu.GetDefaultInterface: IDymoShellMenu;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TDymoShellMenu.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDymoShellMenuProperties.Create(Self);
{$ENDIF}
end;

destructor TDymoShellMenu.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TDymoShellMenu.GetServerProperties: TDymoShellMenuProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TDymoShellMenu.GetCaption(out Value: WideString): HResult;
begin
  Result := DefaultInterface.GetCaption(Value);
end;

function TDymoShellMenu.SetCaption(const Value: WideString): HResult;
begin
  Result := DefaultInterface.SetCaption(Value);
end;

function TDymoShellMenu.GetEnabled(out Value: Integer): HResult;
begin
  Result := DefaultInterface.GetEnabled(Value);
end;

function TDymoShellMenu.SetEnabled(Value: Integer): HResult;
begin
  Result := DefaultInterface.SetEnabled(Value);
end;

function TDymoShellMenu.GetVisible(out Value: Integer): HResult;
begin
  Result := DefaultInterface.GetVisible(Value);
end;

function TDymoShellMenu.SetVisible(Value: Integer): HResult;
begin
  Result := DefaultInterface.SetVisible(Value);
end;

function TDymoShellMenu.IsSeparator(out Value: Integer): HResult;
begin
  Result := DefaultInterface.IsSeparator(Value);
end;

function TDymoShellMenu.GetSubMenu(ID: Integer; out ppMenu: IDymoShellMenu): HResult;
begin
  Result := DefaultInterface.GetSubMenu(ID, ppMenu);
end;

function TDymoShellMenu.GetFirstSubMenuID(out pID: Integer): HResult;
begin
  Result := DefaultInterface.GetFirstSubMenuID(pID);
end;

function TDymoShellMenu.GetNextSubMenuID(out pID: Integer): HResult;
begin
  Result := DefaultInterface.GetNextSubMenuID(pID);
end;

function TDymoShellMenu.AddSubMenu(IsSeparator: Integer; out pID: Integer; 
                                   out ppMenu: IDymoShellMenu): HResult;
begin
  Result := DefaultInterface.AddSubMenu(IsSeparator, pID, ppMenu);
end;

function TDymoShellMenu.DeleteSubMenu(ID: Integer): HResult;
begin
  Result := DefaultInterface.DeleteSubMenu(ID);
end;

function TDymoShellMenu.InsertSubMenu(IsSeparator: Integer; BeforeThisSubMenuID: Integer; 
                                      out pID: Integer; out ppMenu: IDymoShellMenu): HResult;
begin
  Result := DefaultInterface.InsertSubMenu(IsSeparator, BeforeThisSubMenuID, pID, ppMenu);
end;

function TDymoShellMenu.GetOnSelect(out EventID: Integer; out EventHandler: IDymoNotifyEvent): HResult;
begin
  Result := DefaultInterface.GetOnSelect(EventID, EventHandler);
end;

function TDymoShellMenu.SetOnSelect(EventID: Integer; const EventHandler: IDymoNotifyEvent): HResult;
begin
  Result := DefaultInterface.SetOnSelect(EventID, EventHandler);
end;

function TDymoShellMenu.GetChecked(out Value: Integer): HResult;
begin
  Result := DefaultInterface.GetChecked(Value);
end;

function TDymoShellMenu.SetChecked(Value: Integer): HResult;
begin
  Result := DefaultInterface.SetChecked(Value);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TDymoShellMenuProperties.Create(AServer: TDymoShellMenu);
begin
  inherited Create;
  FServer := AServer;
end;

function TDymoShellMenuProperties.GetDefaultInterface: IDymoShellMenu;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoDymoStatusBar.Create: IDymoStatusBar;
begin
  Result := CreateComObject(CLASS_DymoStatusBar) as IDymoStatusBar;
end;

class function CoDymoStatusBar.CreateRemote(const MachineName: string): IDymoStatusBar;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DymoStatusBar) as IDymoStatusBar;
end;

procedure TDymoStatusBar.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{5265B5F9-E1B3-4BBE-B0B7-02660BEA94FA}';
    IntfIID:   '{8B361F44-1EFC-4FF3-B64B-DBDDC1B2291B}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDymoStatusBar.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IDymoStatusBar;
  end;
end;

procedure TDymoStatusBar.ConnectTo(svrIntf: IDymoStatusBar);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDymoStatusBar.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDymoStatusBar.GetDefaultInterface: IDymoStatusBar;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TDymoStatusBar.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDymoStatusBarProperties.Create(Self);
{$ENDIF}
end;

destructor TDymoStatusBar.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TDymoStatusBar.GetServerProperties: TDymoStatusBarProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TDymoStatusBar.GetColumnText(Index: Integer; out Value: WideString): HResult;
begin
  Result := DefaultInterface.GetColumnText(Index, Value);
end;

function TDymoStatusBar.SetColumnText(Index: Integer; const Value: WideString): HResult;
begin
  Result := DefaultInterface.SetColumnText(Index, Value);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TDymoStatusBarProperties.Create(AServer: TDymoStatusBar);
begin
  inherited Create;
  FServer := AServer;
end;

function TDymoStatusBarProperties.GetDefaultInterface: IDymoStatusBar;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoDymoSidebar.Create: IDymoSidebar;
begin
  Result := CreateComObject(CLASS_DymoSidebar) as IDymoSidebar;
end;

class function CoDymoSidebar.CreateRemote(const MachineName: string): IDymoSidebar;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DymoSidebar) as IDymoSidebar;
end;

procedure TDymoSidebar.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{A68F6412-6CD4-476F-A67C-F31A9900FCB6}';
    IntfIID:   '{437B2CF0-DFF1-41B5-8056-7C120C32D857}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDymoSidebar.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IDymoSidebar;
  end;
end;

procedure TDymoSidebar.ConnectTo(svrIntf: IDymoSidebar);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDymoSidebar.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDymoSidebar.GetDefaultInterface: IDymoSidebar;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TDymoSidebar.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDymoSidebarProperties.Create(Self);
{$ENDIF}
end;

destructor TDymoSidebar.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TDymoSidebar.GetServerProperties: TDymoSidebarProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TDymoSidebar.GetEnabled(ID: Integer; out Value: Integer): HResult;
begin
  Result := DefaultInterface.GetEnabled(ID, Value);
end;

function TDymoSidebar.SetEnabled(ID: Integer; Value: Integer): HResult;
begin
  Result := DefaultInterface.SetEnabled(ID, Value);
end;

function TDymoSidebar.GetChecked(ID: Integer; out Value: Integer): HResult;
begin
  Result := DefaultInterface.GetChecked(ID, Value);
end;

function TDymoSidebar.SetChecked(ID: Integer; Value: Integer): HResult;
begin
  Result := DefaultInterface.SetChecked(ID, Value);
end;

function TDymoSidebar.GetVisible(ID: Integer; out Value: Integer): HResult;
begin
  Result := DefaultInterface.GetVisible(ID, Value);
end;

function TDymoSidebar.SetVisible(ID: Integer; Value: Integer): HResult;
begin
  Result := DefaultInterface.SetVisible(ID, Value);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TDymoSidebarProperties.Create(AServer: TDymoSidebar);
begin
  inherited Create;
  FServer := AServer;
end;

function TDymoSidebarProperties.GetDefaultInterface: IDymoSidebar;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoDymoToolbar.Create: IDymoToolbar;
begin
  Result := CreateComObject(CLASS_DymoToolbar) as IDymoToolbar;
end;

class function CoDymoToolbar.CreateRemote(const MachineName: string): IDymoToolbar;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DymoToolbar) as IDymoToolbar;
end;

procedure TDymoToolbar.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{890A5062-F1E9-4449-A036-4493E815BD80}';
    IntfIID:   '{3CBE571E-4291-4C11-A5DB-D08D9C73F6D5}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDymoToolbar.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IDymoToolbar;
  end;
end;

procedure TDymoToolbar.ConnectTo(svrIntf: IDymoToolbar);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDymoToolbar.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDymoToolbar.GetDefaultInterface: IDymoToolbar;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TDymoToolbar.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDymoToolbarProperties.Create(Self);
{$ENDIF}
end;

destructor TDymoToolbar.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TDymoToolbar.GetServerProperties: TDymoToolbarProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TDymoToolbar.AddButton(IsSeparator: Integer; out pID: Integer; out ppBtn: IDymoToolBtn): HResult;
begin
  Result := DefaultInterface.AddButton(IsSeparator, pID, ppBtn);
end;

function TDymoToolbar.GetButtonHeight(out Value: Integer): HResult;
begin
  Result := DefaultInterface.GetButtonHeight(Value);
end;

function TDymoToolbar.SetButtonHeight(Value: Integer): HResult;
begin
  Result := DefaultInterface.SetButtonHeight(Value);
end;

function TDymoToolbar.GetButtonWidth(out Value: Integer): HResult;
begin
  Result := DefaultInterface.GetButtonWidth(Value);
end;

function TDymoToolbar.SetButtonWidth(Value: Integer): HResult;
begin
  Result := DefaultInterface.SetButtonWidth(Value);
end;

function TDymoToolbar.AddSpinControl(out pID: Integer; out ppSpinCtrl: IDymoTBSpinCtrl): HResult;
begin
  Result := DefaultInterface.AddSpinControl(pID, ppSpinCtrl);
end;

function TDymoToolbar.GetVisible(out Value: Integer): HResult;
begin
  Result := DefaultInterface.GetVisible(Value);
end;

function TDymoToolbar.SetVisible(Value: Integer): HResult;
begin
  Result := DefaultInterface.SetVisible(Value);
end;

function TDymoToolbar.GetID(out Value: Integer): HResult;
begin
  Result := DefaultInterface.GetID(Value);
end;

function TDymoToolbar.AddComboBox(out pID: Integer; out ppCmb: IDymoTBCmb): HResult;
begin
  Result := DefaultInterface.AddComboBox(pID, ppCmb);
end;

function TDymoToolbar.AddLabel(out pID: Integer; out ppLbl: IDymoTBLabel): HResult;
begin
  Result := DefaultInterface.AddLabel(pID, ppLbl);
end;

function TDymoToolbar.AddRadioButtonGroup(out pID: Integer; out ppRBGrp: IDymoTBRadioBtnGroup): HResult;
begin
  Result := DefaultInterface.AddRadioButtonGroup(pID, ppRBGrp);
end;

function TDymoToolbar.AddCheckboxGroup(out pID: Integer; out ppCheckboxGrp: IDymoTBCheckboxGroup): HResult;
begin
  Result := DefaultInterface.AddCheckboxGroup(pID, ppCheckboxGrp);
end;

function TDymoToolbar.AddMeasurementCtrl(out pID: Integer; out ppCtrl: IDymoMeasurementCtrl): HResult;
begin
  Result := DefaultInterface.AddMeasurementCtrl(pID, ppCtrl);
end;

function TDymoToolbar.GetButton(ID: Integer; out ppBtn: IDymoToolBtn): HResult;
begin
  Result := DefaultInterface.GetButton(ID, ppBtn);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TDymoToolbarProperties.Create(AServer: TDymoToolbar);
begin
  inherited Create;
  FServer := AServer;
end;

function TDymoToolbarProperties.GetDefaultInterface: IDymoToolbar;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoDymoRuler.Create: IDymoRuler;
begin
  Result := CreateComObject(CLASS_DymoRuler) as IDymoRuler;
end;

class function CoDymoRuler.CreateRemote(const MachineName: string): IDymoRuler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DymoRuler) as IDymoRuler;
end;

procedure TDymoRuler.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{D0A06FFD-38BD-4CCC-8554-696A69AC7A5C}';
    IntfIID:   '{47386F50-AF0B-4AA5-B11D-574D27B4EC88}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDymoRuler.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IDymoRuler;
  end;
end;

procedure TDymoRuler.ConnectTo(svrIntf: IDymoRuler);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDymoRuler.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDymoRuler.GetDefaultInterface: IDymoRuler;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TDymoRuler.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDymoRulerProperties.Create(Self);
{$ENDIF}
end;

destructor TDymoRuler.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TDymoRuler.GetServerProperties: TDymoRulerProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TDymoRuler.SetRubberBand(StartPos: Integer; EndPos: Integer): HResult;
begin
  Result := DefaultInterface.SetRubberBand(StartPos, EndPos);
end;

function TDymoRuler.GetRubberBand(out StartPos: Integer; out EndPos: Integer): HResult;
begin
  Result := DefaultInterface.GetRubberBand(StartPos, EndPos);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TDymoRulerProperties.Create(AServer: TDymoRuler);
begin
  inherited Create;
  FServer := AServer;
end;

function TDymoRulerProperties.GetDefaultInterface: IDymoRuler;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoDymoToolBtn.Create: IDymoToolBtn;
begin
  Result := CreateComObject(CLASS_DymoToolBtn) as IDymoToolBtn;
end;

class function CoDymoToolBtn.CreateRemote(const MachineName: string): IDymoToolBtn;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DymoToolBtn) as IDymoToolBtn;
end;

procedure TDymoToolBtn.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{1F629C2B-88B0-46AE-8E01-BB24F6F87B8F}';
    IntfIID:   '{5BC61055-2CBC-4725-A1E8-0E401114FB64}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDymoToolBtn.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IDymoToolBtn;
  end;
end;

procedure TDymoToolBtn.ConnectTo(svrIntf: IDymoToolBtn);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDymoToolBtn.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDymoToolBtn.GetDefaultInterface: IDymoToolBtn;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TDymoToolBtn.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDymoToolBtnProperties.Create(Self);
{$ENDIF}
end;

destructor TDymoToolBtn.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TDymoToolBtn.GetServerProperties: TDymoToolBtnProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TDymoToolBtn.GetBitmapSize(out Value: Integer): HResult;
begin
  Result := DefaultInterface.GetBitmapSize(Value);
end;

function TDymoToolBtn.SetBitmap(hInstanceValue: Integer; BmpResID: Integer): HResult;
begin
  Result := DefaultInterface.SetBitmap(hInstanceValue, BmpResID);
end;

function TDymoToolBtn.GetOnClick(out EventID: Integer; out EventHandler: IDymoNotifyEvent): HResult;
begin
  Result := DefaultInterface.GetOnClick(EventID, EventHandler);
end;

function TDymoToolBtn.SetOnClick(EventID: Integer; const EventHandler: IDymoNotifyEvent): HResult;
begin
  Result := DefaultInterface.SetOnClick(EventID, EventHandler);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TDymoToolBtnProperties.Create(AServer: TDymoToolBtn);
begin
  inherited Create;
  FServer := AServer;
end;

function TDymoToolBtnProperties.GetDefaultInterface: IDymoToolBtn;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoDymoTBSpinCtrl.Create: IDymoTBSpinCtrl;
begin
  Result := CreateComObject(CLASS_DymoTBSpinCtrl) as IDymoTBSpinCtrl;
end;

class function CoDymoTBSpinCtrl.CreateRemote(const MachineName: string): IDymoTBSpinCtrl;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DymoTBSpinCtrl) as IDymoTBSpinCtrl;
end;

procedure TDymoTBSpinCtrl.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{D6FC6B23-0196-4183-876F-E603FE87DA05}';
    IntfIID:   '{41D47E64-5388-4DCE-8C41-F8112EB1520F}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDymoTBSpinCtrl.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IDymoTBSpinCtrl;
  end;
end;

procedure TDymoTBSpinCtrl.ConnectTo(svrIntf: IDymoTBSpinCtrl);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDymoTBSpinCtrl.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDymoTBSpinCtrl.GetDefaultInterface: IDymoTBSpinCtrl;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TDymoTBSpinCtrl.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDymoTBSpinCtrlProperties.Create(Self);
{$ENDIF}
end;

destructor TDymoTBSpinCtrl.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TDymoTBSpinCtrl.GetServerProperties: TDymoTBSpinCtrlProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TDymoTBSpinCtrl.GetMinValue(out Value: Double): HResult;
begin
  Result := DefaultInterface.GetMinValue(Value);
end;

function TDymoTBSpinCtrl.SetMinValue(Value: Double): HResult;
begin
  Result := DefaultInterface.SetMinValue(Value);
end;

function TDymoTBSpinCtrl.GetMaxValue(out Value: Double): HResult;
begin
  Result := DefaultInterface.GetMaxValue(Value);
end;

function TDymoTBSpinCtrl.SetMaxValue(Value: Double): HResult;
begin
  Result := DefaultInterface.SetMaxValue(Value);
end;

function TDymoTBSpinCtrl.GetStepValue(out Value: Double): HResult;
begin
  Result := DefaultInterface.GetStepValue(Value);
end;

function TDymoTBSpinCtrl.SetStepValue(Value: Double): HResult;
begin
  Result := DefaultInterface.SetStepValue(Value);
end;

function TDymoTBSpinCtrl.GetValue(out Value: Double): HResult;
begin
  Result := DefaultInterface.GetValue(Value);
end;

function TDymoTBSpinCtrl.SetValue(Value: Double): HResult;
begin
  Result := DefaultInterface.SetValue(Value);
end;

function TDymoTBSpinCtrl.GetSpinType(out Value: EnumDymoSpinType): HResult;
begin
  Result := DefaultInterface.GetSpinType(Value);
end;

function TDymoTBSpinCtrl.SetSpinType(Value: EnumDymoSpinType): HResult;
begin
  Result := DefaultInterface.SetSpinType(Value);
end;

function TDymoTBSpinCtrl.GetCaptionPos(out Value: EnumDymoCaptionPos): HResult;
begin
  Result := DefaultInterface.GetCaptionPos(Value);
end;

function TDymoTBSpinCtrl.SetCaptionPos(Value: EnumDymoCaptionPos): HResult;
begin
  Result := DefaultInterface.SetCaptionPos(Value);
end;

function TDymoTBSpinCtrl.GetWidth(out Value: Integer): HResult;
begin
  Result := DefaultInterface.GetWidth(Value);
end;

function TDymoTBSpinCtrl.SetWidth(Value: Integer): HResult;
begin
  Result := DefaultInterface.SetWidth(Value);
end;

function TDymoTBSpinCtrl.GetHeight(out Value: Integer): HResult;
begin
  Result := DefaultInterface.GetHeight(Value);
end;

function TDymoTBSpinCtrl.SetHeight(Value: Integer): HResult;
begin
  Result := DefaultInterface.SetHeight(Value);
end;

function TDymoTBSpinCtrl.SetCaptionFontStyle(Value: Integer): HResult;
begin
  Result := DefaultInterface.SetCaptionFontStyle(Value);
end;

function TDymoTBSpinCtrl.GetOnSpinUp(out EventID: Integer; out EventHandler: IDymoNotifyEvent): HResult;
begin
  Result := DefaultInterface.GetOnSpinUp(EventID, EventHandler);
end;

function TDymoTBSpinCtrl.SetOnSpinUp(EventID: Integer; const EventHandler: IDymoNotifyEvent): HResult;
begin
  Result := DefaultInterface.SetOnSpinUp(EventID, EventHandler);
end;

function TDymoTBSpinCtrl.GetOnSpinDn(out EventID: Integer; out EventHandler: IDymoNotifyEvent): HResult;
begin
  Result := DefaultInterface.GetOnSpinDn(EventID, EventHandler);
end;

function TDymoTBSpinCtrl.SetOnSpinDn(EventID: Integer; const EventHandler: IDymoNotifyEvent): HResult;
begin
  Result := DefaultInterface.SetOnSpinDn(EventID, EventHandler);
end;

function TDymoTBSpinCtrl.GetOnEnterKeyPressed(out EventID: Integer; 
                                              out EventHandler: IDymoNotifyEvent): HResult;
begin
  Result := DefaultInterface.GetOnEnterKeyPressed(EventID, EventHandler);
end;

function TDymoTBSpinCtrl.SetOnEnterKeyPressed(EventID: Integer; const EventHandler: IDymoNotifyEvent): HResult;
begin
  Result := DefaultInterface.SetOnEnterKeyPressed(EventID, EventHandler);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TDymoTBSpinCtrlProperties.Create(AServer: TDymoTBSpinCtrl);
begin
  inherited Create;
  FServer := AServer;
end;

function TDymoTBSpinCtrlProperties.GetDefaultInterface: IDymoTBSpinCtrl;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoDymoTBCmb.Create: IDymoTBCmb;
begin
  Result := CreateComObject(CLASS_DymoTBCmb) as IDymoTBCmb;
end;

class function CoDymoTBCmb.CreateRemote(const MachineName: string): IDymoTBCmb;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DymoTBCmb) as IDymoTBCmb;
end;

procedure TDymoTBCmb.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{09B185EA-3FA8-402F-88E9-CAEBDDA22EDB}';
    IntfIID:   '{B6F71C16-4927-404D-BC5E-6A6F146A530C}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDymoTBCmb.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IDymoTBCmb;
  end;
end;

procedure TDymoTBCmb.ConnectTo(svrIntf: IDymoTBCmb);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDymoTBCmb.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDymoTBCmb.GetDefaultInterface: IDymoTBCmb;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TDymoTBCmb.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDymoTBCmbProperties.Create(Self);
{$ENDIF}
end;

destructor TDymoTBCmb.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TDymoTBCmb.GetServerProperties: TDymoTBCmbProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TDymoTBCmb.GetCaptionPos(out Value: EnumDymoCaptionPos): HResult;
begin
  Result := DefaultInterface.GetCaptionPos(Value);
end;

function TDymoTBCmb.SetCaptionPos(Value: EnumDymoCaptionPos): HResult;
begin
  Result := DefaultInterface.SetCaptionPos(Value);
end;

function TDymoTBCmb.GetWidth(out Value: Integer): HResult;
begin
  Result := DefaultInterface.GetWidth(Value);
end;

function TDymoTBCmb.SetWidth(Value: Integer): HResult;
begin
  Result := DefaultInterface.SetWidth(Value);
end;

function TDymoTBCmb.GetHeight(out Value: Integer): HResult;
begin
  Result := DefaultInterface.GetHeight(Value);
end;

function TDymoTBCmb.SetHeight(Value: Integer): HResult;
begin
  Result := DefaultInterface.SetHeight(Value);
end;

function TDymoTBCmb.SetCaptionFontStyle(Value: Integer): HResult;
begin
  Result := DefaultInterface.SetCaptionFontStyle(Value);
end;

function TDymoTBCmb.GetText(out Value: WideString): HResult;
begin
  Result := DefaultInterface.GetText(Value);
end;

function TDymoTBCmb.SetText(const Value: WideString): HResult;
begin
  Result := DefaultInterface.SetText(Value);
end;

function TDymoTBCmb.SetDropDownCount(Value: Integer): HResult;
begin
  Result := DefaultInterface.SetDropDownCount(Value);
end;

function TDymoTBCmb.GetSelected(out Index: Integer): HResult;
begin
  Result := DefaultInterface.GetSelected(Index);
end;

function TDymoTBCmb.SetSelected(Index: Integer): HResult;
begin
  Result := DefaultInterface.SetSelected(Index);
end;

function TDymoTBCmb.SetItemAt(Index: Integer; const ItemStr: WideString; Data: Integer): HResult;
begin
  Result := DefaultInterface.SetItemAt(Index, ItemStr, Data);
end;

function TDymoTBCmb.GetItemAt(Index: Integer; out ItemStr: WideString; out Data: Integer): HResult;
begin
  Result := DefaultInterface.GetItemAt(Index, ItemStr, Data);
end;

function TDymoTBCmb.ClearItems: HResult;
begin
  Result := DefaultInterface.ClearItems;
end;

function TDymoTBCmb.SetOnItemSelect(EventID: Integer; const EventHandler: IDymoTBCmbEvent): HResult;
begin
  Result := DefaultInterface.SetOnItemSelect(EventID, EventHandler);
end;

function TDymoTBCmb.GetOnItemSelect(out EventID: Integer; out EventHandler: IDymoTBCmbEvent): HResult;
begin
  Result := DefaultInterface.GetOnItemSelect(EventID, EventHandler);
end;

function TDymoTBCmb.SetAutoDropDown(Value: Integer): HResult;
begin
  Result := DefaultInterface.SetAutoDropDown(Value);
end;

function TDymoTBCmb.GetAutoDropDown(out Value: Integer): HResult;
begin
  Result := DefaultInterface.GetAutoDropDown(Value);
end;

function TDymoTBCmb.SetAutoComplete(Value: Integer): HResult;
begin
  Result := DefaultInterface.SetAutoComplete(Value);
end;

function TDymoTBCmb.GetAutoComplete(out Value: Integer): HResult;
begin
  Result := DefaultInterface.GetAutoComplete(Value);
end;

function TDymoTBCmb.SetOnDrawItem(EventID: Integer; const EventHandler: IDymoTBCmbEvent): HResult;
begin
  Result := DefaultInterface.SetOnDrawItem(EventID, EventHandler);
end;

function TDymoTBCmb.GetOnDrawItem(out EventID: Integer; out EventHandler: IDymoTBCmbEvent): HResult;
begin
  Result := DefaultInterface.GetOnDrawItem(EventID, EventHandler);
end;

function TDymoTBCmb.SetOnKeyPress(EventID: Integer; const EventHandler: IDymoTBCmbEvent): HResult;
begin
  Result := DefaultInterface.SetOnKeyPress(EventID, EventHandler);
end;

function TDymoTBCmb.GetOnKeyPress(out EventID: Integer; out EventHandler: IDymoTBCmbEvent): HResult;
begin
  Result := DefaultInterface.GetOnKeyPress(EventID, EventHandler);
end;

function TDymoTBCmb.SetOnCloseUp(EventID: Integer; const EventHandler: IDymoNotifyEvent): HResult;
begin
  Result := DefaultInterface.SetOnCloseUp(EventID, EventHandler);
end;

function TDymoTBCmb.GetOnCloseUp(out EventID: Integer; out EventHandler: IDymoNotifyEvent): HResult;
begin
  Result := DefaultInterface.GetOnCloseUp(EventID, EventHandler);
end;

function TDymoTBCmb.SetOnDropDown(EventID: Integer; const EventHandler: IDymoNotifyEvent): HResult;
begin
  Result := DefaultInterface.SetOnDropDown(EventID, EventHandler);
end;

function TDymoTBCmb.GetOnDropDown(out EventID: Integer; out EventHandler: IDymoNotifyEvent): HResult;
begin
  Result := DefaultInterface.GetOnDropDown(EventID, EventHandler);
end;

function TDymoTBCmb.SetOnEnter(EventID: Integer; const EventHandler: IDymoNotifyEvent): HResult;
begin
  Result := DefaultInterface.SetOnEnter(EventID, EventHandler);
end;

function TDymoTBCmb.GetOnEnter(out EventID: Integer; out EventHandler: IDymoNotifyEvent): HResult;
begin
  Result := DefaultInterface.GetOnEnter(EventID, EventHandler);
end;

function TDymoTBCmb.SetOnKeyDown(EventID: Integer; const EventHandler: IDymoTBCmbEvent): HResult;
begin
  Result := DefaultInterface.SetOnKeyDown(EventID, EventHandler);
end;

function TDymoTBCmb.GetOnKeyDown(out EventID: Integer; out EventHandler: IDymoTBCmbEvent): HResult;
begin
  Result := DefaultInterface.GetOnKeyDown(EventID, EventHandler);
end;

function TDymoTBCmb.GetStyle(out Value: Integer): HResult;
begin
  Result := DefaultInterface.GetStyle(Value);
end;

function TDymoTBCmb.SetStyle(Value: Integer): HResult;
begin
  Result := DefaultInterface.SetStyle(Value);
end;

function TDymoTBCmb.GetOnMeasureItem(out EventID: Integer; out EventHandler: IDymoTBCmbEvent): HResult;
begin
  Result := DefaultInterface.GetOnMeasureItem(EventID, EventHandler);
end;

function TDymoTBCmb.SetOnMeasureItem(EventID: Integer; const EventHandler: IDymoTBCmbEvent): HResult;
begin
  Result := DefaultInterface.SetOnMeasureItem(EventID, EventHandler);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TDymoTBCmbProperties.Create(AServer: TDymoTBCmb);
begin
  inherited Create;
  FServer := AServer;
end;

function TDymoTBCmbProperties.GetDefaultInterface: IDymoTBCmb;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoDymoTBLabel.Create: IDymoTBLabel;
begin
  Result := CreateComObject(CLASS_DymoTBLabel) as IDymoTBLabel;
end;

class function CoDymoTBLabel.CreateRemote(const MachineName: string): IDymoTBLabel;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DymoTBLabel) as IDymoTBLabel;
end;

procedure TDymoTBLabel.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{F9E9D00E-63E1-45D2-96A5-E671D188F33A}';
    IntfIID:   '{FC9792DB-21B8-4021-965B-5299C4B943A2}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDymoTBLabel.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IDymoTBLabel;
  end;
end;

procedure TDymoTBLabel.ConnectTo(svrIntf: IDymoTBLabel);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDymoTBLabel.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDymoTBLabel.GetDefaultInterface: IDymoTBLabel;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TDymoTBLabel.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDymoTBLabelProperties.Create(Self);
{$ENDIF}
end;

destructor TDymoTBLabel.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TDymoTBLabel.GetServerProperties: TDymoTBLabelProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TDymoTBLabel.SetCaptionFontStyle(Value: Integer): HResult;
begin
  Result := DefaultInterface.SetCaptionFontStyle(Value);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TDymoTBLabelProperties.Create(AServer: TDymoTBLabel);
begin
  inherited Create;
  FServer := AServer;
end;

function TDymoTBLabelProperties.GetDefaultInterface: IDymoTBLabel;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoDymoTBRadioBtnGroup.Create: IDymoTBRadioBtnGroup;
begin
  Result := CreateComObject(CLASS_DymoTBRadioBtnGroup) as IDymoTBRadioBtnGroup;
end;

class function CoDymoTBRadioBtnGroup.CreateRemote(const MachineName: string): IDymoTBRadioBtnGroup;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DymoTBRadioBtnGroup) as IDymoTBRadioBtnGroup;
end;

procedure TDymoTBRadioBtnGroup.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{2D7FF4A4-D646-4C70-9403-80A5D189B794}';
    IntfIID:   '{1216DF81-A9B6-4C42-9CAB-F7B20FAB576E}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDymoTBRadioBtnGroup.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IDymoTBRadioBtnGroup;
  end;
end;

procedure TDymoTBRadioBtnGroup.ConnectTo(svrIntf: IDymoTBRadioBtnGroup);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDymoTBRadioBtnGroup.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDymoTBRadioBtnGroup.GetDefaultInterface: IDymoTBRadioBtnGroup;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TDymoTBRadioBtnGroup.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDymoTBRadioBtnGroupProperties.Create(Self);
{$ENDIF}
end;

destructor TDymoTBRadioBtnGroup.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TDymoTBRadioBtnGroup.GetServerProperties: TDymoTBRadioBtnGroupProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TDymoTBRadioBtnGroup.SetColumns(Value: Integer): HResult;
begin
  Result := DefaultInterface.SetColumns(Value);
end;

function TDymoTBRadioBtnGroup.AddItem(const Caption: WideString; const Tooltip: WideString; 
                                      out pItemID: Integer): HResult;
begin
  Result := DefaultInterface.AddItem(Caption, Tooltip, pItemID);
end;

function TDymoTBRadioBtnGroup.GetCheckedItem(out ItemID: Integer): HResult;
begin
  Result := DefaultInterface.GetCheckedItem(ItemID);
end;

function TDymoTBRadioBtnGroup.GetOnItemClick(out EventID: Integer; 
                                             out EventHandler: IDymoTBGroupCtrlEvent): HResult;
begin
  Result := DefaultInterface.GetOnItemClick(EventID, EventHandler);
end;

function TDymoTBRadioBtnGroup.SetOnItemClick(EventID: Integer; 
                                             const EventHandler: IDymoTBGroupCtrlEvent): HResult;
begin
  Result := DefaultInterface.SetOnItemClick(EventID, EventHandler);
end;

function TDymoTBRadioBtnGroup.SetCaptionFontStyle(Value: Integer): HResult;
begin
  Result := DefaultInterface.SetCaptionFontStyle(Value);
end;

function TDymoTBRadioBtnGroup.GetItemCaption(ItemID: Integer; out Value: WideString): HResult;
begin
  Result := DefaultInterface.GetItemCaption(ItemID, Value);
end;

function TDymoTBRadioBtnGroup.SetItemCaption(ItemID: Integer; const Value: WideString): HResult;
begin
  Result := DefaultInterface.SetItemCaption(ItemID, Value);
end;

function TDymoTBRadioBtnGroup.SetCheckedItem(ItemID: Integer): HResult;
begin
  Result := DefaultInterface.SetCheckedItem(ItemID);
end;

function TDymoTBRadioBtnGroup.GetCaptionPos(out Value: EnumDymoCaptionPos): HResult;
begin
  Result := DefaultInterface.GetCaptionPos(Value);
end;

function TDymoTBRadioBtnGroup.SetCaptionPos(Value: EnumDymoCaptionPos): HResult;
begin
  Result := DefaultInterface.SetCaptionPos(Value);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TDymoTBRadioBtnGroupProperties.Create(AServer: TDymoTBRadioBtnGroup);
begin
  inherited Create;
  FServer := AServer;
end;

function TDymoTBRadioBtnGroupProperties.GetDefaultInterface: IDymoTBRadioBtnGroup;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoDymoTBCheckboxGroup.Create: IDymoTBCheckboxGroup;
begin
  Result := CreateComObject(CLASS_DymoTBCheckboxGroup) as IDymoTBCheckboxGroup;
end;

class function CoDymoTBCheckboxGroup.CreateRemote(const MachineName: string): IDymoTBCheckboxGroup;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DymoTBCheckboxGroup) as IDymoTBCheckboxGroup;
end;

procedure TDymoTBCheckboxGroup.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{2796DC2A-82F2-42F4-A93B-E68B9950765A}';
    IntfIID:   '{0BE7E366-D4A6-4521-AE82-38CAF35AB0A1}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDymoTBCheckboxGroup.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IDymoTBCheckboxGroup;
  end;
end;

procedure TDymoTBCheckboxGroup.ConnectTo(svrIntf: IDymoTBCheckboxGroup);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDymoTBCheckboxGroup.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDymoTBCheckboxGroup.GetDefaultInterface: IDymoTBCheckboxGroup;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TDymoTBCheckboxGroup.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDymoTBCheckboxGroupProperties.Create(Self);
{$ENDIF}
end;

destructor TDymoTBCheckboxGroup.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TDymoTBCheckboxGroup.GetServerProperties: TDymoTBCheckboxGroupProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TDymoTBCheckboxGroup.SetColumns(Value: Integer): HResult;
begin
  Result := DefaultInterface.SetColumns(Value);
end;

function TDymoTBCheckboxGroup.AddItem(const Caption: WideString; const Tooltip: WideString; 
                                      out pItemID: Integer): HResult;
begin
  Result := DefaultInterface.AddItem(Caption, Tooltip, pItemID);
end;

function TDymoTBCheckboxGroup.GetItemChecked(ItemID: Integer; out Checked: Integer): HResult;
begin
  Result := DefaultInterface.GetItemChecked(ItemID, Checked);
end;

function TDymoTBCheckboxGroup.SetCaptionFontStyle(Value: Integer): HResult;
begin
  Result := DefaultInterface.SetCaptionFontStyle(Value);
end;

function TDymoTBCheckboxGroup.GetItemCaption(ItemID: Integer; out Value: WideString): HResult;
begin
  Result := DefaultInterface.GetItemCaption(ItemID, Value);
end;

function TDymoTBCheckboxGroup.SetItemCaption(ItemID: Integer; const Value: WideString): HResult;
begin
  Result := DefaultInterface.SetItemCaption(ItemID, Value);
end;

function TDymoTBCheckboxGroup.SetCheckedItem(ItemID: Integer; Checked: Integer): HResult;
begin
  Result := DefaultInterface.SetCheckedItem(ItemID, Checked);
end;

function TDymoTBCheckboxGroup.GetOnItemClick(out EventID: Integer; 
                                             out EventHandler: IDymoTBGroupCtrlEvent): HResult;
begin
  Result := DefaultInterface.GetOnItemClick(EventID, EventHandler);
end;

function TDymoTBCheckboxGroup.SetOnItemClick(EventID: Integer; 
                                             const EventHandler: IDymoTBGroupCtrlEvent): HResult;
begin
  Result := DefaultInterface.SetOnItemClick(EventID, EventHandler);
end;

function TDymoTBCheckboxGroup.GetItemEnabled(ItemID: Integer; out Enabled: Integer): HResult;
begin
  Result := DefaultInterface.GetItemEnabled(ItemID, Enabled);
end;

function TDymoTBCheckboxGroup.SetItemChecked(ItemID: Integer; Checked: Integer): HResult;
begin
  Result := DefaultInterface.SetItemChecked(ItemID, Checked);
end;

function TDymoTBCheckboxGroup.SetItemEnabled(ItemID: Integer; Enabled: Integer): HResult;
begin
  Result := DefaultInterface.SetItemEnabled(ItemID, Enabled);
end;

function TDymoTBCheckboxGroup.GetCaptionPos(out Value: EnumDymoCaptionPos): HResult;
begin
  Result := DefaultInterface.GetCaptionPos(Value);
end;

function TDymoTBCheckboxGroup.SetCaptionPos(Value: EnumDymoCaptionPos): HResult;
begin
  Result := DefaultInterface.SetCaptionPos(Value);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TDymoTBCheckboxGroupProperties.Create(AServer: TDymoTBCheckboxGroup);
begin
  inherited Create;
  FServer := AServer;
end;

function TDymoTBCheckboxGroupProperties.GetDefaultInterface: IDymoTBCheckboxGroup;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoDymoMeasurementCtrl.Create: IDymoMeasurementCtrl;
begin
  Result := CreateComObject(CLASS_DymoMeasurementCtrl) as IDymoMeasurementCtrl;
end;

class function CoDymoMeasurementCtrl.CreateRemote(const MachineName: string): IDymoMeasurementCtrl;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DymoMeasurementCtrl) as IDymoMeasurementCtrl;
end;

procedure TDymoMeasurementCtrl.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{722740A1-1D7D-49EF-8E80-89BFF88F4F79}';
    IntfIID:   '{0554F428-1A4F-4C38-B5BB-222C64D5C279}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDymoMeasurementCtrl.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IDymoMeasurementCtrl;
  end;
end;

procedure TDymoMeasurementCtrl.ConnectTo(svrIntf: IDymoMeasurementCtrl);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDymoMeasurementCtrl.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDymoMeasurementCtrl.GetDefaultInterface: IDymoMeasurementCtrl;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TDymoMeasurementCtrl.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDymoMeasurementCtrlProperties.Create(Self);
{$ENDIF}
end;

destructor TDymoMeasurementCtrl.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TDymoMeasurementCtrl.GetServerProperties: TDymoMeasurementCtrlProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TDymoMeasurementCtrl.GetValue(out Value: Integer): HResult;
begin
  Result := DefaultInterface.GetValue(Value);
end;

function TDymoMeasurementCtrl.SetValue(Value: Integer): HResult;
begin
  Result := DefaultInterface.SetValue(Value);
end;

function TDymoMeasurementCtrl.GetWidth(out Value: Integer): HResult;
begin
  Result := DefaultInterface.GetWidth(Value);
end;

function TDymoMeasurementCtrl.SetWidth(Value: Integer): HResult;
begin
  Result := DefaultInterface.SetWidth(Value);
end;

function TDymoMeasurementCtrl.GetHeight(out Value: Integer): HResult;
begin
  Result := DefaultInterface.GetHeight(Value);
end;

function TDymoMeasurementCtrl.SetHeight(Value: Integer): HResult;
begin
  Result := DefaultInterface.SetHeight(Value);
end;

function TDymoMeasurementCtrl.GetCaptionPos(out Value: EnumDymoCaptionPos): HResult;
begin
  Result := DefaultInterface.GetCaptionPos(Value);
end;

function TDymoMeasurementCtrl.SetCaptionPos(Value: EnumDymoCaptionPos): HResult;
begin
  Result := DefaultInterface.SetCaptionPos(Value);
end;

function TDymoMeasurementCtrl.SetCaptionFontStyle(Value: Integer): HResult;
begin
  Result := DefaultInterface.SetCaptionFontStyle(Value);
end;

function TDymoMeasurementCtrl.GetOnValidEntry(out EventID: Integer; 
                                              out EventHandler: IDymoNotifyEvent): HResult;
begin
  Result := DefaultInterface.GetOnValidEntry(EventID, EventHandler);
end;

function TDymoMeasurementCtrl.SetOnValidEntry(EventID: Integer; const EventHandler: IDymoNotifyEvent): HResult;
begin
  Result := DefaultInterface.SetOnValidEntry(EventID, EventHandler);
end;

function TDymoMeasurementCtrl.GetMeasurementUnit(out Value: EnumDymoMeasurementUnit): HResult;
begin
  Result := DefaultInterface.GetMeasurementUnit(Value);
end;

function TDymoMeasurementCtrl.SetMeasurementUnit(Value: EnumDymoMeasurementUnit): HResult;
begin
  Result := DefaultInterface.SetMeasurementUnit(Value);
end;

function TDymoMeasurementCtrl.SetMinValue(Value: Integer): HResult;
begin
  Result := DefaultInterface.SetMinValue(Value);
end;

function TDymoMeasurementCtrl.GetMinValue(out Value: Integer): HResult;
begin
  Result := DefaultInterface.GetMinValue(Value);
end;

function TDymoMeasurementCtrl.SetMaxValue(Value: Integer): HResult;
begin
  Result := DefaultInterface.SetMaxValue(Value);
end;

function TDymoMeasurementCtrl.GetMaxValue(out Value: Integer): HResult;
begin
  Result := DefaultInterface.GetMaxValue(Value);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TDymoMeasurementCtrlProperties.Create(AServer: TDymoMeasurementCtrl);
begin
  inherited Create;
  FServer := AServer;
end;

function TDymoMeasurementCtrlProperties.GetDefaultInterface: IDymoMeasurementCtrl;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoDymoAddIn.Create: IDymoAddIn5;
begin
  Result := CreateComObject(CLASS_DymoAddIn) as IDymoAddIn5;
end;

class function CoDymoAddIn.CreateRemote(const MachineName: string): IDymoAddIn5;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DymoAddIn) as IDymoAddIn5;
end;

procedure TDymoAddIn.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{09DAFAE2-8EB0-11D2-8E5D-00A02415E90F}';
    IntfIID:   '{A1CD66DC-6A1F-4FD6-A7EF-57D00E28E00A}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDymoAddIn.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IDymoAddIn5;
  end;
end;

procedure TDymoAddIn.ConnectTo(svrIntf: IDymoAddIn5);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDymoAddIn.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDymoAddIn.GetDefaultInterface: IDymoAddIn5;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TDymoAddIn.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDymoAddInProperties.Create(Self);
{$ENDIF}
end;

destructor TDymoAddIn.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TDymoAddIn.GetServerProperties: TDymoAddInProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TDymoAddIn.Get_FileName: WideString;
begin
    Result := DefaultInterface.FileName;
end;

function TDymoAddIn.Open(const FileName: WideString): WordBool;
begin
  Result := DefaultInterface.Open(FileName);
end;

function TDymoAddIn.Save: WordBool;
begin
  Result := DefaultInterface.Save;
end;

function TDymoAddIn.SaveAs(const FileName: WideString): WordBool;
begin
  Result := DefaultInterface.SaveAs(FileName);
end;

function TDymoAddIn.Print(Copies: Integer; bShowDialog: WordBool): WordBool;
begin
  Result := DefaultInterface.Print(Copies, bShowDialog);
end;

procedure TDymoAddIn.Hide;
begin
  DefaultInterface.Hide;
end;

procedure TDymoAddIn.Show;
begin
  DefaultInterface.Show;
end;

procedure TDymoAddIn.SysTray(State: WordBool);
begin
  DefaultInterface.SysTray(State);
end;

procedure TDymoAddIn.Quit;
begin
  DefaultInterface.Quit;
end;

function TDymoAddIn.SelectPrinter(const Printer: WideString): WordBool;
begin
  Result := DefaultInterface.SelectPrinter(Printer);
end;

function TDymoAddIn.GetDymoPrinters: WideString;
begin
  Result := DefaultInterface.GetDymoPrinters;
end;

function TDymoAddIn.GetMRULabelFiles: WideString;
begin
  Result := DefaultInterface.GetMRULabelFiles;
end;

function TDymoAddIn.Open2(const FileName: WideString): WordBool;
begin
  Result := DefaultInterface.Open2(FileName);
end;

function TDymoAddIn.GetMRULabelFileCount: Integer;
begin
  Result := DefaultInterface.GetMRULabelFileCount;
end;

function TDymoAddIn.GetMRULabelFileName(Index: Integer): WideString;
begin
  Result := DefaultInterface.GetMRULabelFileName(Index);
end;

function TDymoAddIn.OpenMRULabelFile(Index: Integer): WordBool;
begin
  Result := DefaultInterface.OpenMRULabelFile(Index);
end;

function TDymoAddIn.OpenMRULabelFileByName(const FileName: WideString): WordBool;
begin
  Result := DefaultInterface.OpenMRULabelFileByName(FileName);
end;

function TDymoAddIn.Print2(Copies: Integer; bShowDlg: WordBool; Tray: Integer): WordBool;
begin
  Result := DefaultInterface.Print2(Copies, bShowDlg, Tray);
end;

function TDymoAddIn.GetCurrentPaperTray: Integer;
begin
  Result := DefaultInterface.GetCurrentPaperTray;
end;

procedure TDymoAddIn.StartPrintJob;
begin
  DefaultInterface.StartPrintJob;
end;

procedure TDymoAddIn.EndPrintJob;
begin
  DefaultInterface.EndPrintJob;
end;

function TDymoAddIn.IsTwinTurboPrinter(const PrinterName: WideString): WordBool;
begin
  Result := DefaultInterface.IsTwinTurboPrinter(PrinterName);
end;

function TDymoAddIn.GetCurrentPrinterName: WideString;
begin
  Result := DefaultInterface.GetCurrentPrinterName;
end;

function TDymoAddIn.SmartPasteFromClipboard: WordBool;
begin
  Result := DefaultInterface.SmartPasteFromClipboard;
end;

function TDymoAddIn.SmartPasteFromFile(const FileName: WideString): WordBool;
begin
  Result := DefaultInterface.SmartPasteFromFile(FileName);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TDymoAddInProperties.Create(AServer: TDymoAddIn);
begin
  inherited Create;
  FServer := AServer;
end;

function TDymoAddInProperties.GetDefaultInterface: IDymoAddIn5;
begin
  Result := FServer.DefaultInterface;
end;

function TDymoAddInProperties.Get_FileName: WideString;
begin
    Result := DefaultInterface.FileName;
end;

{$ENDIF}

class function CoDymoTape.Create: IDymoTape2;
begin
  Result := CreateComObject(CLASS_DymoTape) as IDymoTape2;
end;

class function CoDymoTape.CreateRemote(const MachineName: string): IDymoTape2;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DymoTape) as IDymoTape2;
end;

procedure TDymoTape.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{4F776706-065B-41CF-915E-73EEBE3A1F39}';
    IntfIID:   '{04C956F2-6DCD-46A0-AA58-23120F94E80B}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDymoTape.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IDymoTape2;
  end;
end;

procedure TDymoTape.ConnectTo(svrIntf: IDymoTape2);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDymoTape.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDymoTape.GetDefaultInterface: IDymoTape2;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TDymoTape.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDymoTapeProperties.Create(Self);
{$ENDIF}
end;

destructor TDymoTape.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TDymoTape.GetServerProperties: TDymoTapeProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TDymoTape.Get_FileName: WideString;
begin
    Result := DefaultInterface.FileName;
end;

function TDymoTape.Get_LabelOrientation: Integer;
begin
    Result := DefaultInterface.LabelOrientation;
end;

procedure TDymoTape.Set_LabelOrientation(Value: Integer);
begin
  DefaultInterface.Set_LabelOrientation(Value);
end;

function TDymoTape.Get_TextAlignment: Integer;
begin
    Result := DefaultInterface.TextAlignment;
end;

procedure TDymoTape.Set_TextAlignment(Value: Integer);
begin
  DefaultInterface.Set_TextAlignment(Value);
end;

function TDymoTape.Get_LabelLength: Integer;
begin
    Result := DefaultInterface.LabelLength;
end;

procedure TDymoTape.Set_LabelLength(Value: Integer);
begin
  DefaultInterface.Set_LabelLength(Value);
end;

function TDymoTape.Get_BorderMode: Integer;
begin
    Result := DefaultInterface.BorderMode;
end;

procedure TDymoTape.Set_BorderMode(Value: Integer);
begin
  DefaultInterface.Set_BorderMode(Value);
end;

function TDymoTape.Get_SysTray: WordBool;
begin
    Result := DefaultInterface.SysTray;
end;

procedure TDymoTape.Set_SysTray(Value: WordBool);
begin
  DefaultInterface.Set_SysTray(Value);
end;

function TDymoTape.Open(const FileName: WideString): WordBool;
begin
  Result := DefaultInterface.Open(FileName);
end;

function TDymoTape.Save: WordBool;
begin
  Result := DefaultInterface.Save;
end;

function TDymoTape.SaveAs(const FileName: WideString): WordBool;
begin
  Result := DefaultInterface.SaveAs(FileName);
end;

function TDymoTape.Print(Copies: Integer): WordBool;
begin
  Result := DefaultInterface.Print(Copies);
end;

procedure TDymoTape.Hide;
begin
  DefaultInterface.Hide;
end;

procedure TDymoTape.Show;
begin
  DefaultInterface.Show;
end;

procedure TDymoTape.Quit;
begin
  DefaultInterface.Quit;
end;

function TDymoTape.GetPrinters: WideString;
begin
  Result := DefaultInterface.GetPrinters;
end;

function TDymoTape.SelectPrinter(const PrinterName: WideString): WordBool;
begin
  Result := DefaultInterface.SelectPrinter(PrinterName);
end;

function TDymoTape.AddText(const TextString: WideString; const FontFormat: WideString; 
                           OutlineEffect: WordBool; ShadowEffect: WordBool): WordBool;
begin
  Result := DefaultInterface.AddText(TextString, FontFormat, OutlineEffect, ShadowEffect);
end;

function TDymoTape.AddBarcode(const Data: WideString; Format: Integer; Size: Integer; 
                              TextPosition: Integer): WordBool;
begin
  Result := DefaultInterface.AddBarcode(Data, Format, Size, TextPosition);
end;

function TDymoTape.AddPicture(const FileName: WideString): WordBool;
begin
  Result := DefaultInterface.AddPicture(FileName);
end;

function TDymoTape.PasteText: WordBool;
begin
  Result := DefaultInterface.PasteText;
end;

function TDymoTape.PastePicture: WordBool;
begin
  Result := DefaultInterface.PastePicture;
end;

function TDymoTape.AddTabStop(Position: Integer; Style: Integer): Integer;
begin
  Result := DefaultInterface.AddTabStop(Position, Style);
end;

function TDymoTape.DeleteTabStop(TabIndex: Integer): WordBool;
begin
  Result := DefaultInterface.DeleteTabStop(TabIndex);
end;

function TDymoTape.New: WordBool;
begin
  Result := DefaultInterface.New;
end;

function TDymoTape.IsTapeWidthSupported(Width: Integer): WordBool;
begin
  Result := DefaultInterface.IsTapeWidthSupported(Width);
end;

function TDymoTape.SetTapeWidth(Width: Integer): WordBool;
begin
  Result := DefaultInterface.SetTapeWidth(Width);
end;

function TDymoTape.SmartPasteFromClipboard: WordBool;
begin
  Result := DefaultInterface.SmartPasteFromClipboard;
end;

function TDymoTape.SmartPasteFromFile(const FileName: WideString): WordBool;
begin
  Result := DefaultInterface.SmartPasteFromFile(FileName);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TDymoTapeProperties.Create(AServer: TDymoTape);
begin
  inherited Create;
  FServer := AServer;
end;

function TDymoTapeProperties.GetDefaultInterface: IDymoTape2;
begin
  Result := FServer.DefaultInterface;
end;

function TDymoTapeProperties.Get_FileName: WideString;
begin
    Result := DefaultInterface.FileName;
end;

function TDymoTapeProperties.Get_LabelOrientation: Integer;
begin
    Result := DefaultInterface.LabelOrientation;
end;

procedure TDymoTapeProperties.Set_LabelOrientation(Value: Integer);
begin
  DefaultInterface.Set_LabelOrientation(Value);
end;

function TDymoTapeProperties.Get_TextAlignment: Integer;
begin
    Result := DefaultInterface.TextAlignment;
end;

procedure TDymoTapeProperties.Set_TextAlignment(Value: Integer);
begin
  DefaultInterface.Set_TextAlignment(Value);
end;

function TDymoTapeProperties.Get_LabelLength: Integer;
begin
    Result := DefaultInterface.LabelLength;
end;

procedure TDymoTapeProperties.Set_LabelLength(Value: Integer);
begin
  DefaultInterface.Set_LabelLength(Value);
end;

function TDymoTapeProperties.Get_BorderMode: Integer;
begin
    Result := DefaultInterface.BorderMode;
end;

procedure TDymoTapeProperties.Set_BorderMode(Value: Integer);
begin
  DefaultInterface.Set_BorderMode(Value);
end;

function TDymoTapeProperties.Get_SysTray: WordBool;
begin
    Result := DefaultInterface.SysTray;
end;

procedure TDymoTapeProperties.Set_SysTray(Value: WordBool);
begin
  DefaultInterface.Set_SysTray(Value);
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TDymoLabels, TDymoShell, TDymoShellMenu, TDymoStatusBar, 
    TDymoSidebar, TDymoToolbar, TDymoRuler, TDymoToolBtn, TDymoTBSpinCtrl, 
    TDymoTBCmb, TDymoTBLabel, TDymoTBRadioBtnGroup, TDymoTBCheckboxGroup, TDymoMeasurementCtrl, 
    TDymoAddIn, TDymoTape]);
end;

end.
