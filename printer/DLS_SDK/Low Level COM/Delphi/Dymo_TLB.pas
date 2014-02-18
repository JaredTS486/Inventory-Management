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
// File generated on 9/16/2003 3:04:58 PM from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files\DYMO Label\labels.dll (1)
// LIBID: {1CE3FE80-8EBE-11D2-A3BA-0000E8D57653}
// LCID: 0
// Helpfile: 
// HelpString: Dymo Library
// DepndLst: 
//   (1) v1.0 stdole, (C:\WINDOWS\System32\stdole32.tlb)
// Errors:
//   Hint: Parameter 'FileName' of ILabelEngine.OpenFile changed to 'FileName_'
//   Hint: Parameter 'FileName' of ILabelEngine.SaveFile changed to 'FileName_'
//   Hint: Parameter 'bShowDialog' of ILabelEngine.PrintLabel changed to 'bShowDialog_'
//   Hint: Parameter 'DC' of ILabelEngine.Output changed to 'DC_'
//   Hint: Parameter 'Y' of ILabelEngine.OutputXY changed to 'Y_'
//   Hint: Parameter 'BCType' of ILabelEngine.ValidateBarCode changed to 'BCType_'
//   Hint: Parameter 'Y' of IPrintObject.ObjectsAt changed to 'Y_'
//   Hint: Parameter 'Obj' of IPrintObject.LabelObject changed to 'Obj_'
//   Hint: Parameter 'Y' of IPrintObject.ObjectAt changed to 'Y_'
//   Hint: Parameter 'Name' of IPrintObject.FindObj changed to 'Name_'
//   Hint: Parameter 'Rotation' of IPrintObject.AddObject changed to 'Rotation_'
//   Hint: Parameter 'Buf' of IPrintObject.CopyToClipboard changed to 'Buf_'
//   Hint: Parameter 'Index' of IObjectsAtEnum.Item changed to 'Index_'
//   Hint: Parameter 'Index' of IObjectList.Item changed to 'Index_'
//   Hint: Parameter 'Index' of IVarObjectList.Item changed to 'Index_'
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
  DymoMajorVersion = 1;
  DymoMinorVersion = 0;

  LIBID_Dymo: TGUID = '{1CE3FE80-8EBE-11D2-A3BA-0000E8D57653}';

  IID_ILabelEngine: TGUID = '{1CE3FE81-8EBE-11D2-A3BA-0000E8D57653}';
  CLASS_LabelEngine: TGUID = '{1CE3FE82-8EBE-11D2-A3BA-0000E8D57653}';
  IID_ILabelList: TGUID = '{1CE3FE83-8EBE-11D2-A3BA-0000E8D57653}';
  CLASS_LabelList: TGUID = '{1CE3FE84-8EBE-11D2-A3BA-0000E8D57653}';
  IID_ILblInfo: TGUID = '{9603C362-8ECB-11D2-A3BA-0000E8D57653}';
  CLASS_LblInfo: TGUID = '{9603C363-8ECB-11D2-A3BA-0000E8D57653}';
  IID_IPrintObject: TGUID = '{B0ADDB03-943F-11D2-A3BA-0000E8D57653}';
  CLASS_PrintObject: TGUID = '{B0ADDB04-943F-11D2-A3BA-0000E8D57653}';
  IID_IObjectsAtEnum: TGUID = '{B0ADDB05-943F-11D2-A3BA-0000E8D57653}';
  CLASS_ObjectsAtEnum: TGUID = '{B0ADDB06-943F-11D2-A3BA-0000E8D57653}';
  IID_IObjectList: TGUID = '{F1BE4600-A012-11D2-BE58-0000E8D4216C}';
  CLASS_ObjectList: TGUID = '{F1BE4601-A012-11D2-BE58-0000E8D4216C}';
  IID_IVarObjectList: TGUID = '{F1BE4602-A012-11D2-BE58-0000E8D4216C}';
  CLASS_VarObjectList: TGUID = '{F1BE4603-A012-11D2-BE58-0000E8D4216C}';
  IID_ILabelObject: TGUID = '{5A2D8040-A8A4-11D2-A5D4-0040054349AF}';
  CLASS_LabelObject: TGUID = '{5A2D8041-A8A4-11D2-A5D4-0040054349AF}';
  IID_ITextAttributes: TGUID = '{5A2D8042-A8A4-11D2-A5D4-0040054349AF}';
  IID_ITextAttributes2: TGUID = '{5FCCEB09-361D-42A4-B692-A657961E294A}';
  IID_ITextObj: TGUID = '{5A2D8044-A8A4-11D2-A5D4-0040054349AF}';
  CLASS_TextObj: TGUID = '{5A2D8045-A8A4-11D2-A5D4-0040054349AF}';
  IID_IRectObj: TGUID = '{708E2FC0-A975-11D2-A5D4-0040054349AF}';
  CLASS_RectObj: TGUID = '{708E2FC1-A975-11D2-A5D4-0040054349AF}';
  IID_ILineObj: TGUID = '{247905C0-AA37-11D2-A5D4-0040054349AF}';
  CLASS_LineObj: TGUID = '{247905C1-AA37-11D2-A5D4-0040054349AF}';
  IID_IBarCodeObj: TGUID = '{247905C2-AA37-11D2-A5D4-0040054349AF}';
  CLASS_BarCodeObj: TGUID = '{247905C3-AA37-11D2-A5D4-0040054349AF}';
  IID_IGraphicObj: TGUID = '{247905C4-AA37-11D2-A5D4-0040054349AF}';
  CLASS_GraphicObj: TGUID = '{247905C5-AA37-11D2-A5D4-0040054349AF}';
  IID_IAddressObj: TGUID = '{247905C6-AA37-11D2-A5D4-0040054349AF}';
  CLASS_AddressObj: TGUID = '{247905C7-AA37-11D2-A5D4-0040054349AF}';
  IID_ICounterObj: TGUID = '{247905C8-AA37-11D2-A5D4-0040054349AF}';
  CLASS_CounterObj: TGUID = '{247905C9-AA37-11D2-A5D4-0040054349AF}';
  IID_IDateTimeObj: TGUID = '{247905CA-AA37-11D2-A5D4-0040054349AF}';
  CLASS_DateTimeObj: TGUID = '{247905CB-AA37-11D2-A5D4-0040054349AF}';
  IID_ICircularTextAttributes: TGUID = '{46972731-A540-4602-A0F6-8EFB98F5C82B}';
  IID_ICircularTextAttributes2: TGUID = '{08948F61-3396-42C9-9ACD-1D828D40BB14}';
  IID_ICircularTextObj: TGUID = '{C7FE305D-A385-4491-8100-08541970D37F}';
  CLASS_CircularTextObj: TGUID = '{4A10B7D2-B9DF-498F-882F-5B7EF553E3EE}';
  CLASS_TextAttributes: TGUID = '{5A2D8043-A8A4-11D2-A5D4-0040054349AF}';
  CLASS_CircularTextAttributes: TGUID = '{DFCE4DD9-6B9B-4CCF-9EA6-7CD5B324435B}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  ILabelEngine = interface;
  ILabelEngineDisp = dispinterface;
  ILabelList = interface;
  ILabelListDisp = dispinterface;
  ILblInfo = interface;
  ILblInfoDisp = dispinterface;
  IPrintObject = interface;
  IPrintObjectDisp = dispinterface;
  IObjectsAtEnum = interface;
  IObjectsAtEnumDisp = dispinterface;
  IObjectList = interface;
  IObjectListDisp = dispinterface;
  IVarObjectList = interface;
  IVarObjectListDisp = dispinterface;
  ILabelObject = interface;
  ILabelObjectDisp = dispinterface;
  ITextAttributes = interface;
  ITextAttributesDisp = dispinterface;
  ITextAttributes2 = interface;
  ITextAttributes2Disp = dispinterface;
  ITextObj = interface;
  ITextObjDisp = dispinterface;
  IRectObj = interface;
  IRectObjDisp = dispinterface;
  ILineObj = interface;
  ILineObjDisp = dispinterface;
  IBarCodeObj = interface;
  IBarCodeObjDisp = dispinterface;
  IGraphicObj = interface;
  IGraphicObjDisp = dispinterface;
  IAddressObj = interface;
  IAddressObjDisp = dispinterface;
  ICounterObj = interface;
  ICounterObjDisp = dispinterface;
  IDateTimeObj = interface;
  IDateTimeObjDisp = dispinterface;
  ICircularTextAttributes = interface;
  ICircularTextAttributesDisp = dispinterface;
  ICircularTextAttributes2 = interface;
  ICircularTextAttributes2Disp = dispinterface;
  ICircularTextObj = interface;
  ICircularTextObjDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  LabelEngine = ILabelEngine;
  LabelList = ILabelList;
  LblInfo = ILblInfo;
  PrintObject = IPrintObject;
  ObjectsAtEnum = IObjectsAtEnum;
  ObjectList = IObjectList;
  VarObjectList = IVarObjectList;
  LabelObject = ILabelObject;
  TextObj = ITextObj;
  RectObj = IRectObj;
  LineObj = ILineObj;
  BarCodeObj = IBarCodeObj;
  GraphicObj = IGraphicObj;
  AddressObj = IAddressObj;
  CounterObj = ICounterObj;
  DateTimeObj = IDateTimeObj;
  CircularTextObj = ICircularTextObj;
  TextAttributes = ITextAttributes2;
  CircularTextAttributes = ICircularTextAttributes2;


// *********************************************************************//
// Interface: ILabelEngine
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {1CE3FE81-8EBE-11D2-A3BA-0000E8D57653}
// *********************************************************************//
  ILabelEngine = interface(IDispatch)
    ['{1CE3FE81-8EBE-11D2-A3BA-0000E8D57653}']
    function LabelNames: ILabelList; safecall;
    function LabelInfo: ILblInfo; safecall;
    function PrintObject: IPrintObject; safecall;
    procedure NewLabel(const LabelType: WideString); safecall;
    function OpenFile(const FileName: WideString): WordBool; safecall;
    function SaveFile(const FileName: WideString): WordBool; safecall;
    function PrintLabel(const DeviceName: WideString; const Port: WideString; Quantity: Integer; 
                        bShowDialog: WordBool): WordBool; safecall;
    function Output(DC: Integer): WordBool; safecall;
    function OutputXY(DC: Integer; X: Integer; Y: Integer): WordBool; safecall;
    procedure DrawLabel(DC: Integer); safecall;
    procedure Set_Zoom(Param1: Integer); safecall;
    procedure Set_Shadow(Param1: WordBool); safecall;
    function ValidateBarCode(const Text: WideString; BCType: Integer): Integer; safecall;
    property Zoom: Integer write Set_Zoom;
    property Shadow: WordBool write Set_Shadow;
  end;

// *********************************************************************//
// DispIntf:  ILabelEngineDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {1CE3FE81-8EBE-11D2-A3BA-0000E8D57653}
// *********************************************************************//
  ILabelEngineDisp = dispinterface
    ['{1CE3FE81-8EBE-11D2-A3BA-0000E8D57653}']
    function LabelNames: ILabelList; dispid 1;
    function LabelInfo: ILblInfo; dispid 2;
    function PrintObject: IPrintObject; dispid 3;
    procedure NewLabel(const LabelType: WideString); dispid 4;
    function OpenFile(const FileName: WideString): WordBool; dispid 5;
    function SaveFile(const FileName: WideString): WordBool; dispid 6;
    function PrintLabel(const DeviceName: WideString; const Port: WideString; Quantity: Integer; 
                        bShowDialog: WordBool): WordBool; dispid 7;
    function Output(DC: Integer): WordBool; dispid 8;
    function OutputXY(DC: Integer; X: Integer; Y: Integer): WordBool; dispid 9;
    procedure DrawLabel(DC: Integer); dispid 10;
    property Zoom: Integer writeonly dispid 11;
    property Shadow: WordBool writeonly dispid 12;
    function ValidateBarCode(const Text: WideString; BCType: Integer): Integer; dispid 13;
  end;

// *********************************************************************//
// Interface: ILabelList
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {1CE3FE83-8EBE-11D2-A3BA-0000E8D57653}
// *********************************************************************//
  ILabelList = interface(IDispatch)
    ['{1CE3FE83-8EBE-11D2-A3BA-0000E8D57653}']
    function Get_Count: Integer; safecall;
    function Get_Item(Index: Integer): WideString; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Count: Integer read Get_Count;
    property Item[Index: Integer]: WideString read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  ILabelListDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {1CE3FE83-8EBE-11D2-A3BA-0000E8D57653}
// *********************************************************************//
  ILabelListDisp = dispinterface
    ['{1CE3FE83-8EBE-11D2-A3BA-0000E8D57653}']
    property Count: Integer readonly dispid 1;
    property Item[Index: Integer]: WideString readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: ILblInfo
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {9603C362-8ECB-11D2-A3BA-0000E8D57653}
// *********************************************************************//
  ILblInfo = interface(IDispatch)
    ['{9603C362-8ECB-11D2-A3BA-0000E8D57653}']
    function Get_LabelName: WideString; safecall;
    function Get_PaperName: WideString; safecall;
    function Get_PaperWidth: Integer; safecall;
    function Get_PaperHeight: Integer; safecall;
    function Get_BitmapWidth: Integer; safecall;
    function Get_BitmapHeight: Integer; safecall;
    function Get_LabelCount: Integer; safecall;
    function Get_LabelWidth: Integer; safecall;
    function Get_LabelHeight: Integer; safecall;
    function Get_Modified: WordBool; safecall;
    property LabelName: WideString read Get_LabelName;
    property PaperName: WideString read Get_PaperName;
    property PaperWidth: Integer read Get_PaperWidth;
    property PaperHeight: Integer read Get_PaperHeight;
    property BitmapWidth: Integer read Get_BitmapWidth;
    property BitmapHeight: Integer read Get_BitmapHeight;
    property LabelCount: Integer read Get_LabelCount;
    property LabelWidth: Integer read Get_LabelWidth;
    property LabelHeight: Integer read Get_LabelHeight;
    property Modified: WordBool read Get_Modified;
  end;

// *********************************************************************//
// DispIntf:  ILblInfoDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {9603C362-8ECB-11D2-A3BA-0000E8D57653}
// *********************************************************************//
  ILblInfoDisp = dispinterface
    ['{9603C362-8ECB-11D2-A3BA-0000E8D57653}']
    property LabelName: WideString readonly dispid 1;
    property PaperName: WideString readonly dispid 2;
    property PaperWidth: Integer readonly dispid 3;
    property PaperHeight: Integer readonly dispid 4;
    property BitmapWidth: Integer readonly dispid 5;
    property BitmapHeight: Integer readonly dispid 6;
    property LabelCount: Integer readonly dispid 7;
    property LabelWidth: Integer readonly dispid 8;
    property LabelHeight: Integer readonly dispid 9;
    property Modified: WordBool readonly dispid 10;
  end;

// *********************************************************************//
// Interface: IPrintObject
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {B0ADDB03-943F-11D2-A3BA-0000E8D57653}
// *********************************************************************//
  IPrintObject = interface(IDispatch)
    ['{B0ADDB03-943F-11D2-A3BA-0000E8D57653}']
    function ObjectsAt(X: Integer; Y: Integer): IObjectsAtEnum; safecall;
    function Objects: IObjectList; safecall;
    function LabelObject(Obj: Integer): ILabelObject; safecall;
    function ObjectAt(X: Integer; Y: Integer): Integer; safecall;
    function VarObjects: IVarObjectList; safecall;
    function FindObj(const Name: WideString): Integer; safecall;
    procedure BringToFront(Obj: Integer); safecall;
    procedure SendToBack(Obj: Integer); safecall;
    procedure Delete(Obj: Integer); safecall;
    function AddObject(ObjType: Integer; const Name: WideString; X: Integer; Y: Integer; 
                       Width: Integer; Height: Integer; Rotation: Integer): Integer; safecall;
    function CopyToClipboard(var Buf: Integer): WordBool; safecall;
    function PasteFromClipboard: WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  IPrintObjectDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {B0ADDB03-943F-11D2-A3BA-0000E8D57653}
// *********************************************************************//
  IPrintObjectDisp = dispinterface
    ['{B0ADDB03-943F-11D2-A3BA-0000E8D57653}']
    function ObjectsAt(X: Integer; Y: Integer): IObjectsAtEnum; dispid 1;
    function Objects: IObjectList; dispid 2;
    function LabelObject(Obj: Integer): ILabelObject; dispid 3;
    function ObjectAt(X: Integer; Y: Integer): Integer; dispid 4;
    function VarObjects: IVarObjectList; dispid 5;
    function FindObj(const Name: WideString): Integer; dispid 6;
    procedure BringToFront(Obj: Integer); dispid 7;
    procedure SendToBack(Obj: Integer); dispid 8;
    procedure Delete(Obj: Integer); dispid 9;
    function AddObject(ObjType: Integer; const Name: WideString; X: Integer; Y: Integer; 
                       Width: Integer; Height: Integer; Rotation: Integer): Integer; dispid 10;
    function CopyToClipboard(var Buf: Integer): WordBool; dispid 11;
    function PasteFromClipboard: WordBool; dispid 12;
  end;

// *********************************************************************//
// Interface: IObjectsAtEnum
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {B0ADDB05-943F-11D2-A3BA-0000E8D57653}
// *********************************************************************//
  IObjectsAtEnum = interface(IDispatch)
    ['{B0ADDB05-943F-11D2-A3BA-0000E8D57653}']
    function Get_Count: Integer; safecall;
    function Get_Item(Index: Integer): Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Count: Integer read Get_Count;
    property Item[Index: Integer]: Integer read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  IObjectsAtEnumDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {B0ADDB05-943F-11D2-A3BA-0000E8D57653}
// *********************************************************************//
  IObjectsAtEnumDisp = dispinterface
    ['{B0ADDB05-943F-11D2-A3BA-0000E8D57653}']
    property Count: Integer readonly dispid 1;
    property Item[Index: Integer]: Integer readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: IObjectList
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {F1BE4600-A012-11D2-BE58-0000E8D4216C}
// *********************************************************************//
  IObjectList = interface(IDispatch)
    ['{F1BE4600-A012-11D2-BE58-0000E8D4216C}']
    function Get_Item(Index: Integer): Integer; safecall;
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Item[Index: Integer]: Integer read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  IObjectListDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {F1BE4600-A012-11D2-BE58-0000E8D4216C}
// *********************************************************************//
  IObjectListDisp = dispinterface
    ['{F1BE4600-A012-11D2-BE58-0000E8D4216C}']
    property Item[Index: Integer]: Integer readonly dispid 0; default;
    property Count: Integer readonly dispid 1;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: IVarObjectList
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {F1BE4602-A012-11D2-BE58-0000E8D4216C}
// *********************************************************************//
  IVarObjectList = interface(IDispatch)
    ['{F1BE4602-A012-11D2-BE58-0000E8D4216C}']
    function Get_Item(Index: Integer): Integer; safecall;
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Item[Index: Integer]: Integer read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  IVarObjectListDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {F1BE4602-A012-11D2-BE58-0000E8D4216C}
// *********************************************************************//
  IVarObjectListDisp = dispinterface
    ['{F1BE4602-A012-11D2-BE58-0000E8D4216C}']
    property Item[Index: Integer]: Integer readonly dispid 0; default;
    property Count: Integer readonly dispid 1;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: ILabelObject
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5A2D8040-A8A4-11D2-A5D4-0040054349AF}
// *********************************************************************//
  ILabelObject = interface(IDispatch)
    ['{5A2D8040-A8A4-11D2-A5D4-0040054349AF}']
    function Get_ObjType: Integer; safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const Name: WideString); safecall;
    function Get_X: Integer; safecall;
    procedure Set_X(X: Integer); safecall;
    function Get_Y: Integer; safecall;
    procedure Set_Y(Y: Integer); safecall;
    function Get_Width: Integer; safecall;
    procedure Set_Width(Width: Integer); safecall;
    function Get_Height: Integer; safecall;
    procedure Set_Height(Height: Integer); safecall;
    function Get_Rotation: Integer; safecall;
    procedure Set_Rotation(Rotation: Integer); safecall;
    property ObjType: Integer read Get_ObjType;
    property Name: WideString read Get_Name write Set_Name;
    property X: Integer read Get_X write Set_X;
    property Y: Integer read Get_Y write Set_Y;
    property Width: Integer read Get_Width write Set_Width;
    property Height: Integer read Get_Height write Set_Height;
    property Rotation: Integer read Get_Rotation write Set_Rotation;
  end;

// *********************************************************************//
// DispIntf:  ILabelObjectDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5A2D8040-A8A4-11D2-A5D4-0040054349AF}
// *********************************************************************//
  ILabelObjectDisp = dispinterface
    ['{5A2D8040-A8A4-11D2-A5D4-0040054349AF}']
    property ObjType: Integer readonly dispid 1;
    property Name: WideString dispid 2;
    property X: Integer dispid 3;
    property Y: Integer dispid 4;
    property Width: Integer dispid 5;
    property Height: Integer dispid 6;
    property Rotation: Integer dispid 7;
  end;

// *********************************************************************//
// Interface: ITextAttributes
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5A2D8042-A8A4-11D2-A5D4-0040054349AF}
// *********************************************************************//
  ITextAttributes = interface(IDispatch)
    ['{5A2D8042-A8A4-11D2-A5D4-0040054349AF}']
    function Get_Text: WideString; safecall;
    procedure Set_Text(const Value: WideString); safecall;
    function Get_Font_1: WideString; safecall;
    procedure Set_Font_1(const Value: WideString); safecall;
    function Get_Font_2: WideString; safecall;
    procedure Set_Font_2(const Value: WideString); safecall;
    function Get_Justify: Integer; safecall;
    procedure Set_Justify(Value: Integer); safecall;
    function Get_VJustify: Integer; safecall;
    procedure Set_VJustify(Value: Integer); safecall;
    function Get_Mirrored: WordBool; safecall;
    procedure Set_Mirrored(Value: WordBool); safecall;
    function Get_Vertical: WordBool; safecall;
    procedure Set_Vertical(Value: WordBool); safecall;
    function Get_TextColor: Integer; safecall;
    procedure Set_TextColor(Value: Integer); safecall;
    function Get_BackGroundColor: Integer; safecall;
    procedure Set_BackGroundColor(Value: Integer); safecall;
    property Text: WideString read Get_Text write Set_Text;
    property Font_1: WideString read Get_Font_1 write Set_Font_1;
    property Font_2: WideString read Get_Font_2 write Set_Font_2;
    property Justify: Integer read Get_Justify write Set_Justify;
    property VJustify: Integer read Get_VJustify write Set_VJustify;
    property Mirrored: WordBool read Get_Mirrored write Set_Mirrored;
    property Vertical: WordBool read Get_Vertical write Set_Vertical;
    property TextColor: Integer read Get_TextColor write Set_TextColor;
    property BackGroundColor: Integer read Get_BackGroundColor write Set_BackGroundColor;
  end;

// *********************************************************************//
// DispIntf:  ITextAttributesDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5A2D8042-A8A4-11D2-A5D4-0040054349AF}
// *********************************************************************//
  ITextAttributesDisp = dispinterface
    ['{5A2D8042-A8A4-11D2-A5D4-0040054349AF}']
    property Text: WideString dispid 1;
    property Font_1: WideString dispid 2;
    property Font_2: WideString dispid 3;
    property Justify: Integer dispid 4;
    property VJustify: Integer dispid 5;
    property Mirrored: WordBool dispid 6;
    property Vertical: WordBool dispid 7;
    property TextColor: Integer dispid 8;
    property BackGroundColor: Integer dispid 9;
  end;

// *********************************************************************//
// Interface: ITextAttributes2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5FCCEB09-361D-42A4-B692-A657961E294A}
// *********************************************************************//
  ITextAttributes2 = interface(ITextAttributes)
    ['{5FCCEB09-361D-42A4-B692-A657961E294A}']
    function Get_RichText: WideString; safecall;
    procedure Set_RichText(const Value: WideString); safecall;
    function Get_ShadowEffect: WordBool; safecall;
    procedure Set_ShadowEffect(Value: WordBool); safecall;
    function Get_OutlineEffect: WordBool; safecall;
    procedure Set_OutlineEffect(Value: WordBool); safecall;
    property RichText: WideString read Get_RichText write Set_RichText;
    property ShadowEffect: WordBool read Get_ShadowEffect write Set_ShadowEffect;
    property OutlineEffect: WordBool read Get_OutlineEffect write Set_OutlineEffect;
  end;

// *********************************************************************//
// DispIntf:  ITextAttributes2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5FCCEB09-361D-42A4-B692-A657961E294A}
// *********************************************************************//
  ITextAttributes2Disp = dispinterface
    ['{5FCCEB09-361D-42A4-B692-A657961E294A}']
    property RichText: WideString dispid 201;
    property ShadowEffect: WordBool dispid 202;
    property OutlineEffect: WordBool dispid 203;
    property Text: WideString dispid 1;
    property Font_1: WideString dispid 2;
    property Font_2: WideString dispid 3;
    property Justify: Integer dispid 4;
    property VJustify: Integer dispid 5;
    property Mirrored: WordBool dispid 6;
    property Vertical: WordBool dispid 7;
    property TextColor: Integer dispid 8;
    property BackGroundColor: Integer dispid 9;
  end;

// *********************************************************************//
// Interface: ITextObj
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5A2D8044-A8A4-11D2-A5D4-0040054349AF}
// *********************************************************************//
  ITextObj = interface(ILabelObject)
    ['{5A2D8044-A8A4-11D2-A5D4-0040054349AF}']
    function Get_IsVariable: WordBool; safecall;
    procedure Set_IsVariable(IsVariable: WordBool); safecall;
    function TextAttributes: ITextAttributes; safecall;
    property IsVariable: WordBool read Get_IsVariable write Set_IsVariable;
  end;

// *********************************************************************//
// DispIntf:  ITextObjDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5A2D8044-A8A4-11D2-A5D4-0040054349AF}
// *********************************************************************//
  ITextObjDisp = dispinterface
    ['{5A2D8044-A8A4-11D2-A5D4-0040054349AF}']
    property IsVariable: WordBool dispid 8;
    function TextAttributes: ITextAttributes; dispid 9;
    property ObjType: Integer readonly dispid 1;
    property Name: WideString dispid 2;
    property X: Integer dispid 3;
    property Y: Integer dispid 4;
    property Width: Integer dispid 5;
    property Height: Integer dispid 6;
    property Rotation: Integer dispid 7;
  end;

// *********************************************************************//
// Interface: IRectObj
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {708E2FC0-A975-11D2-A5D4-0040054349AF}
// *********************************************************************//
  IRectObj = interface(ILabelObject)
    ['{708E2FC0-A975-11D2-A5D4-0040054349AF}']
    function Get_bFilled: WordBool; safecall;
    procedure Set_bFilled(Value: WordBool); safecall;
    function Get_Border: Integer; safecall;
    procedure Set_Border(Value: Integer); safecall;
    function Get_BorderColor: Integer; safecall;
    procedure Set_BorderColor(Value: Integer); safecall;
    function Get_FillColor: Integer; safecall;
    procedure Set_FillColor(Value: Integer); safecall;
    property bFilled: WordBool read Get_bFilled write Set_bFilled;
    property Border: Integer read Get_Border write Set_Border;
    property BorderColor: Integer read Get_BorderColor write Set_BorderColor;
    property FillColor: Integer read Get_FillColor write Set_FillColor;
  end;

// *********************************************************************//
// DispIntf:  IRectObjDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {708E2FC0-A975-11D2-A5D4-0040054349AF}
// *********************************************************************//
  IRectObjDisp = dispinterface
    ['{708E2FC0-A975-11D2-A5D4-0040054349AF}']
    property bFilled: WordBool dispid 8;
    property Border: Integer dispid 9;
    property BorderColor: Integer dispid 10;
    property FillColor: Integer dispid 11;
    property ObjType: Integer readonly dispid 1;
    property Name: WideString dispid 2;
    property X: Integer dispid 3;
    property Y: Integer dispid 4;
    property Width: Integer dispid 5;
    property Height: Integer dispid 6;
    property Rotation: Integer dispid 7;
  end;

// *********************************************************************//
// Interface: ILineObj
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {247905C0-AA37-11D2-A5D4-0040054349AF}
// *********************************************************************//
  ILineObj = interface(ILabelObject)
    ['{247905C0-AA37-11D2-A5D4-0040054349AF}']
    function Get_Length: Integer; safecall;
    procedure Set_Length(Value: Integer); safecall;
    function Get_Orientation: Integer; safecall;
    procedure Set_Orientation(Value: Integer); safecall;
    function Get_Thickness: Integer; safecall;
    procedure Set_Thickness(Value: Integer); safecall;
    function Get_LineColor: Integer; safecall;
    procedure Set_LineColor(Value: Integer); safecall;
    property Length: Integer read Get_Length write Set_Length;
    property Orientation: Integer read Get_Orientation write Set_Orientation;
    property Thickness: Integer read Get_Thickness write Set_Thickness;
    property LineColor: Integer read Get_LineColor write Set_LineColor;
  end;

// *********************************************************************//
// DispIntf:  ILineObjDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {247905C0-AA37-11D2-A5D4-0040054349AF}
// *********************************************************************//
  ILineObjDisp = dispinterface
    ['{247905C0-AA37-11D2-A5D4-0040054349AF}']
    property Length: Integer dispid 8;
    property Orientation: Integer dispid 9;
    property Thickness: Integer dispid 10;
    property LineColor: Integer dispid 11;
    property ObjType: Integer readonly dispid 1;
    property Name: WideString dispid 2;
    property X: Integer dispid 3;
    property Y: Integer dispid 4;
    property Width: Integer dispid 5;
    property Height: Integer dispid 6;
    property Rotation: Integer dispid 7;
  end;

// *********************************************************************//
// Interface: IBarCodeObj
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {247905C2-AA37-11D2-A5D4-0040054349AF}
// *********************************************************************//
  IBarCodeObj = interface(ILabelObject)
    ['{247905C2-AA37-11D2-A5D4-0040054349AF}']
    function Get_Text: WideString; safecall;
    procedure Set_Text(const Text: WideString); safecall;
    function Get_Font: WideString; safecall;
    procedure Set_Font(const Font: WideString); safecall;
    function Get_TextPos: Integer; safecall;
    procedure Set_TextPos(TextPos: Integer); safecall;
    function Get_BCType: Integer; safecall;
    procedure Set_BCType(BCType: Integer); safecall;
    function Get_Size: Integer; safecall;
    procedure Set_Size(Size: Integer); safecall;
    function Get_Justify: Integer; safecall;
    procedure Set_Justify(Justify: Integer); safecall;
    function Get_Link: Integer; safecall;
    procedure Set_Link(Link: Integer); safecall;
    property Text: WideString read Get_Text write Set_Text;
    property Font: WideString read Get_Font write Set_Font;
    property TextPos: Integer read Get_TextPos write Set_TextPos;
    property BCType: Integer read Get_BCType write Set_BCType;
    property Size: Integer read Get_Size write Set_Size;
    property Justify: Integer read Get_Justify write Set_Justify;
    property Link: Integer read Get_Link write Set_Link;
  end;

// *********************************************************************//
// DispIntf:  IBarCodeObjDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {247905C2-AA37-11D2-A5D4-0040054349AF}
// *********************************************************************//
  IBarCodeObjDisp = dispinterface
    ['{247905C2-AA37-11D2-A5D4-0040054349AF}']
    property Text: WideString dispid 8;
    property Font: WideString dispid 9;
    property TextPos: Integer dispid 10;
    property BCType: Integer dispid 11;
    property Size: Integer dispid 12;
    property Justify: Integer dispid 13;
    property Link: Integer dispid 14;
    property ObjType: Integer readonly dispid 1;
    property Name: WideString dispid 2;
    property X: Integer dispid 3;
    property Y: Integer dispid 4;
    property Width: Integer dispid 5;
    property Height: Integer dispid 6;
    property Rotation: Integer dispid 7;
  end;

// *********************************************************************//
// Interface: IGraphicObj
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {247905C4-AA37-11D2-A5D4-0040054349AF}
// *********************************************************************//
  IGraphicObj = interface(ILabelObject)
    ['{247905C4-AA37-11D2-A5D4-0040054349AF}']
    function Get_GraphicSource: Integer; safecall;
    procedure Set_GraphicSource(Value: Integer); safecall;
    function Get_FileName: WideString; safecall;
    procedure Set_FileName(const Value: WideString); safecall;
    function Get_BitmapHandle: Integer; safecall;
    procedure Set_BitmapHandle(Value: Integer); safecall;
    function Get_PaletteHandle: Integer; safecall;
    procedure Set_PaletteHandle(Value: Integer); safecall;
    procedure Set_WindowHandle(Param1: Integer); safecall;
    function Get_Border: Integer; safecall;
    procedure Set_Border(Value: Integer); safecall;
    function Get_BorderColor: Integer; safecall;
    procedure Set_BorderColor(Value: Integer); safecall;
    procedure GrabClipboard; safecall;
    property GraphicSource: Integer read Get_GraphicSource write Set_GraphicSource;
    property FileName: WideString read Get_FileName write Set_FileName;
    property BitmapHandle: Integer read Get_BitmapHandle write Set_BitmapHandle;
    property PaletteHandle: Integer read Get_PaletteHandle write Set_PaletteHandle;
    property WindowHandle: Integer write Set_WindowHandle;
    property Border: Integer read Get_Border write Set_Border;
    property BorderColor: Integer read Get_BorderColor write Set_BorderColor;
  end;

// *********************************************************************//
// DispIntf:  IGraphicObjDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {247905C4-AA37-11D2-A5D4-0040054349AF}
// *********************************************************************//
  IGraphicObjDisp = dispinterface
    ['{247905C4-AA37-11D2-A5D4-0040054349AF}']
    property GraphicSource: Integer dispid 8;
    property FileName: WideString dispid 9;
    property BitmapHandle: Integer dispid 10;
    property PaletteHandle: Integer dispid 11;
    property WindowHandle: Integer writeonly dispid 12;
    property Border: Integer dispid 13;
    property BorderColor: Integer dispid 14;
    procedure GrabClipboard; dispid 15;
    property ObjType: Integer readonly dispid 1;
    property Name: WideString dispid 2;
    property X: Integer dispid 3;
    property Y: Integer dispid 4;
    property Width: Integer dispid 5;
    property Height: Integer dispid 6;
    property Rotation: Integer dispid 7;
  end;

// *********************************************************************//
// Interface: IAddressObj
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {247905C6-AA37-11D2-A5D4-0040054349AF}
// *********************************************************************//
  IAddressObj = interface(ILabelObject)
    ['{247905C6-AA37-11D2-A5D4-0040054349AF}']
    function Get_BarCodePosition: Integer; safecall;
    procedure Set_BarCodePosition(BarCodePosition: Integer); safecall;
    function Get_b9DigitOnly: WordBool; safecall;
    procedure Set_b9DigitOnly(b9DigitOnly: WordBool); safecall;
    function TextAttributes: ITextAttributes; safecall;
    property BarCodePosition: Integer read Get_BarCodePosition write Set_BarCodePosition;
    property b9DigitOnly: WordBool read Get_b9DigitOnly write Set_b9DigitOnly;
  end;

// *********************************************************************//
// DispIntf:  IAddressObjDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {247905C6-AA37-11D2-A5D4-0040054349AF}
// *********************************************************************//
  IAddressObjDisp = dispinterface
    ['{247905C6-AA37-11D2-A5D4-0040054349AF}']
    property BarCodePosition: Integer dispid 8;
    property b9DigitOnly: WordBool dispid 9;
    function TextAttributes: ITextAttributes; dispid 10;
    property ObjType: Integer readonly dispid 1;
    property Name: WideString dispid 2;
    property X: Integer dispid 3;
    property Y: Integer dispid 4;
    property Width: Integer dispid 5;
    property Height: Integer dispid 6;
    property Rotation: Integer dispid 7;
  end;

// *********************************************************************//
// Interface: ICounterObj
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {247905C8-AA37-11D2-A5D4-0040054349AF}
// *********************************************************************//
  ICounterObj = interface(ILabelObject)
    ['{247905C8-AA37-11D2-A5D4-0040054349AF}']
    function Get_PreText: WideString; safecall;
    procedure Set_PreText(const PreText: WideString); safecall;
    function Get_PostText: WideString; safecall;
    procedure Set_PostText(const PostText: WideString); safecall;
    function Get_Start: Integer; safecall;
    procedure Set_Start(Start: Integer); safecall;
    function Get_Current: Integer; safecall;
    procedure Set_Current(Current: Integer); safecall;
    function Get_MinWidth: Integer; safecall;
    procedure Set_MinWidth(MinWidth: Integer); safecall;
    function Get_Increment: Integer; safecall;
    procedure Set_Increment(Increment: Integer); safecall;
    function Get_UseLeadingZeros: WordBool; safecall;
    procedure Set_UseLeadingZeros(UseLeadingZeros: WordBool); safecall;
    function TextAttributes: ITextAttributes; safecall;
    property PreText: WideString read Get_PreText write Set_PreText;
    property PostText: WideString read Get_PostText write Set_PostText;
    property Start: Integer read Get_Start write Set_Start;
    property Current: Integer read Get_Current write Set_Current;
    property MinWidth: Integer read Get_MinWidth write Set_MinWidth;
    property Increment: Integer read Get_Increment write Set_Increment;
    property UseLeadingZeros: WordBool read Get_UseLeadingZeros write Set_UseLeadingZeros;
  end;

// *********************************************************************//
// DispIntf:  ICounterObjDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {247905C8-AA37-11D2-A5D4-0040054349AF}
// *********************************************************************//
  ICounterObjDisp = dispinterface
    ['{247905C8-AA37-11D2-A5D4-0040054349AF}']
    property PreText: WideString dispid 8;
    property PostText: WideString dispid 9;
    property Start: Integer dispid 11;
    property Current: Integer dispid 12;
    property MinWidth: Integer dispid 13;
    property Increment: Integer dispid 14;
    property UseLeadingZeros: WordBool dispid 15;
    function TextAttributes: ITextAttributes; dispid 10;
    property ObjType: Integer readonly dispid 1;
    property Name: WideString dispid 2;
    property X: Integer dispid 3;
    property Y: Integer dispid 4;
    property Width: Integer dispid 5;
    property Height: Integer dispid 6;
    property Rotation: Integer dispid 7;
  end;

// *********************************************************************//
// Interface: IDateTimeObj
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {247905CA-AA37-11D2-A5D4-0040054349AF}
// *********************************************************************//
  IDateTimeObj = interface(ILabelObject)
    ['{247905CA-AA37-11D2-A5D4-0040054349AF}']
    function Get_PreText: WideString; safecall;
    procedure Set_PreText(const PreText: WideString); safecall;
    function Get_PostText: WideString; safecall;
    procedure Set_PostText(const PostText: WideString); safecall;
    function Get_Format: Integer; safecall;
    procedure Set_Format(Format: Integer); safecall;
    function Get_IncludeTime: WordBool; safecall;
    procedure Set_IncludeTime(IncludeTime: WordBool); safecall;
    function Get_b24Hour: WordBool; safecall;
    procedure Set_b24Hour(b24Hour: WordBool); safecall;
    function TextAttributes: ITextAttributes; safecall;
    property PreText: WideString read Get_PreText write Set_PreText;
    property PostText: WideString read Get_PostText write Set_PostText;
    property Format: Integer read Get_Format write Set_Format;
    property IncludeTime: WordBool read Get_IncludeTime write Set_IncludeTime;
    property b24Hour: WordBool read Get_b24Hour write Set_b24Hour;
  end;

// *********************************************************************//
// DispIntf:  IDateTimeObjDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {247905CA-AA37-11D2-A5D4-0040054349AF}
// *********************************************************************//
  IDateTimeObjDisp = dispinterface
    ['{247905CA-AA37-11D2-A5D4-0040054349AF}']
    property PreText: WideString dispid 8;
    property PostText: WideString dispid 9;
    property Format: Integer dispid 11;
    property IncludeTime: WordBool dispid 12;
    property b24Hour: WordBool dispid 13;
    function TextAttributes: ITextAttributes; dispid 10;
    property ObjType: Integer readonly dispid 1;
    property Name: WideString dispid 2;
    property X: Integer dispid 3;
    property Y: Integer dispid 4;
    property Width: Integer dispid 5;
    property Height: Integer dispid 6;
    property Rotation: Integer dispid 7;
  end;

// *********************************************************************//
// Interface: ICircularTextAttributes
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {46972731-A540-4602-A0F6-8EFB98F5C82B}
// *********************************************************************//
  ICircularTextAttributes = interface(IDispatch)
    ['{46972731-A540-4602-A0F6-8EFB98F5C82B}']
    function Get_Text: WideString; safecall;
    procedure Set_Text(const Value: WideString); safecall;
    function Get_Font: WideString; safecall;
    procedure Set_Font(const Value: WideString); safecall;
    function Get_Mirrored: WordBool; safecall;
    procedure Set_Mirrored(Value: WordBool); safecall;
    function Get_DisplayMode: Integer; safecall;
    procedure Set_DisplayMode(Value: Integer); safecall;
    function Get_TextColor: Integer; safecall;
    procedure Set_TextColor(Value: Integer); safecall;
    function Get_BackGroundColor: Integer; safecall;
    procedure Set_BackGroundColor(Value: Integer); safecall;
    property Text: WideString read Get_Text write Set_Text;
    property Font: WideString read Get_Font write Set_Font;
    property Mirrored: WordBool read Get_Mirrored write Set_Mirrored;
    property DisplayMode: Integer read Get_DisplayMode write Set_DisplayMode;
    property TextColor: Integer read Get_TextColor write Set_TextColor;
    property BackGroundColor: Integer read Get_BackGroundColor write Set_BackGroundColor;
  end;

// *********************************************************************//
// DispIntf:  ICircularTextAttributesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {46972731-A540-4602-A0F6-8EFB98F5C82B}
// *********************************************************************//
  ICircularTextAttributesDisp = dispinterface
    ['{46972731-A540-4602-A0F6-8EFB98F5C82B}']
    property Text: WideString dispid 1;
    property Font: WideString dispid 2;
    property Mirrored: WordBool dispid 3;
    property DisplayMode: Integer dispid 4;
    property TextColor: Integer dispid 5;
    property BackGroundColor: Integer dispid 6;
  end;

// *********************************************************************//
// Interface: ICircularTextAttributes2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {08948F61-3396-42C9-9ACD-1D828D40BB14}
// *********************************************************************//
  ICircularTextAttributes2 = interface(ICircularTextAttributes)
    ['{08948F61-3396-42C9-9ACD-1D828D40BB14}']
    function Get_CenteredOnLabel: WordBool; safecall;
    procedure Set_CenteredOnLabel(Value: WordBool); safecall;
    property CenteredOnLabel: WordBool read Get_CenteredOnLabel write Set_CenteredOnLabel;
  end;

// *********************************************************************//
// DispIntf:  ICircularTextAttributes2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {08948F61-3396-42C9-9ACD-1D828D40BB14}
// *********************************************************************//
  ICircularTextAttributes2Disp = dispinterface
    ['{08948F61-3396-42C9-9ACD-1D828D40BB14}']
    property CenteredOnLabel: WordBool dispid 201;
    property Text: WideString dispid 1;
    property Font: WideString dispid 2;
    property Mirrored: WordBool dispid 3;
    property DisplayMode: Integer dispid 4;
    property TextColor: Integer dispid 5;
    property BackGroundColor: Integer dispid 6;
  end;

// *********************************************************************//
// Interface: ICircularTextObj
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C7FE305D-A385-4491-8100-08541970D37F}
// *********************************************************************//
  ICircularTextObj = interface(IDispatch)
    ['{C7FE305D-A385-4491-8100-08541970D37F}']
    function TextAttributes: ICircularTextAttributes; safecall;
    function Get_IsVariable: WordBool; safecall;
    procedure Set_IsVariable(Value: WordBool); safecall;
    property IsVariable: WordBool read Get_IsVariable write Set_IsVariable;
  end;

// *********************************************************************//
// DispIntf:  ICircularTextObjDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C7FE305D-A385-4491-8100-08541970D37F}
// *********************************************************************//
  ICircularTextObjDisp = dispinterface
    ['{C7FE305D-A385-4491-8100-08541970D37F}']
    function TextAttributes: ICircularTextAttributes; dispid 2;
    property IsVariable: WordBool dispid 3;
  end;

// *********************************************************************//
// The Class CoLabelEngine provides a Create and CreateRemote method to          
// create instances of the default interface ILabelEngine exposed by              
// the CoClass LabelEngine. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLabelEngine = class
    class function Create: ILabelEngine;
    class function CreateRemote(const MachineName: string): ILabelEngine;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TLabelEngine
// Help String      : LabelEngineObject
// Default Interface: ILabelEngine
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TLabelEngineProperties= class;
{$ENDIF}
  TLabelEngine = class(TOleServer)
  private
    FIntf:        ILabelEngine;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TLabelEngineProperties;
    function      GetServerProperties: TLabelEngineProperties;
{$ENDIF}
    function      GetDefaultInterface: ILabelEngine;
  protected
    procedure InitServerData; override;
    procedure Set_Zoom(Param1: Integer);
    procedure Set_Shadow(Param1: WordBool);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ILabelEngine);
    procedure Disconnect; override;
    function LabelNames: ILabelList;
    function LabelInfo: ILblInfo;
    function PrintObject: IPrintObject;
    procedure NewLabel(const LabelType: WideString);
    function OpenFile(const FileName: WideString): WordBool;
    function SaveFile(const FileName: WideString): WordBool;
    function PrintLabel(const DeviceName: WideString; const Port: WideString; Quantity: Integer; 
                        bShowDialog: WordBool): WordBool;
    function Output(DC: Integer): WordBool;
    function OutputXY(DC: Integer; X: Integer; Y: Integer): WordBool;
    procedure DrawLabel(DC: Integer);
    function ValidateBarCode(const Text: WideString; BCType: Integer): Integer;
    property DefaultInterface: ILabelEngine read GetDefaultInterface;
    property Zoom: Integer write Set_Zoom;
    property Shadow: WordBool write Set_Shadow;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TLabelEngineProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TLabelEngine
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TLabelEngineProperties = class(TPersistent)
  private
    FServer:    TLabelEngine;
    function    GetDefaultInterface: ILabelEngine;
    constructor Create(AServer: TLabelEngine);
  protected
    procedure Set_Zoom(Param1: Integer);
    procedure Set_Shadow(Param1: WordBool);
  public
    property DefaultInterface: ILabelEngine read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoLabelList provides a Create and CreateRemote method to          
// create instances of the default interface ILabelList exposed by              
// the CoClass LabelList. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLabelList = class
    class function Create: ILabelList;
    class function CreateRemote(const MachineName: string): ILabelList;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TLabelList
// Help String      : LabelListObject
// Default Interface: ILabelList
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TLabelListProperties= class;
{$ENDIF}
  TLabelList = class(TOleServer)
  private
    FIntf:        ILabelList;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TLabelListProperties;
    function      GetServerProperties: TLabelListProperties;
{$ENDIF}
    function      GetDefaultInterface: ILabelList;
  protected
    procedure InitServerData; override;
    function Get_Count: Integer;
    function Get_Item(Index: Integer): WideString;
    function Get__NewEnum: IUnknown;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ILabelList);
    procedure Disconnect; override;
    property DefaultInterface: ILabelList read GetDefaultInterface;
    property Count: Integer read Get_Count;
    property Item[Index: Integer]: WideString read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TLabelListProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TLabelList
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TLabelListProperties = class(TPersistent)
  private
    FServer:    TLabelList;
    function    GetDefaultInterface: ILabelList;
    constructor Create(AServer: TLabelList);
  protected
    function Get_Count: Integer;
    function Get_Item(Index: Integer): WideString;
    function Get__NewEnum: IUnknown;
  public
    property DefaultInterface: ILabelList read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoLblInfo provides a Create and CreateRemote method to          
// create instances of the default interface ILblInfo exposed by              
// the CoClass LblInfo. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLblInfo = class
    class function Create: ILblInfo;
    class function CreateRemote(const MachineName: string): ILblInfo;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TLblInfo
// Help String      : LabelInfoObject
// Default Interface: ILblInfo
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TLblInfoProperties= class;
{$ENDIF}
  TLblInfo = class(TOleServer)
  private
    FIntf:        ILblInfo;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TLblInfoProperties;
    function      GetServerProperties: TLblInfoProperties;
{$ENDIF}
    function      GetDefaultInterface: ILblInfo;
  protected
    procedure InitServerData; override;
    function Get_LabelName: WideString;
    function Get_PaperName: WideString;
    function Get_PaperWidth: Integer;
    function Get_PaperHeight: Integer;
    function Get_BitmapWidth: Integer;
    function Get_BitmapHeight: Integer;
    function Get_LabelCount: Integer;
    function Get_LabelWidth: Integer;
    function Get_LabelHeight: Integer;
    function Get_Modified: WordBool;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ILblInfo);
    procedure Disconnect; override;
    property DefaultInterface: ILblInfo read GetDefaultInterface;
    property LabelName: WideString read Get_LabelName;
    property PaperName: WideString read Get_PaperName;
    property PaperWidth: Integer read Get_PaperWidth;
    property PaperHeight: Integer read Get_PaperHeight;
    property BitmapWidth: Integer read Get_BitmapWidth;
    property BitmapHeight: Integer read Get_BitmapHeight;
    property LabelCount: Integer read Get_LabelCount;
    property LabelWidth: Integer read Get_LabelWidth;
    property LabelHeight: Integer read Get_LabelHeight;
    property Modified: WordBool read Get_Modified;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TLblInfoProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TLblInfo
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TLblInfoProperties = class(TPersistent)
  private
    FServer:    TLblInfo;
    function    GetDefaultInterface: ILblInfo;
    constructor Create(AServer: TLblInfo);
  protected
    function Get_LabelName: WideString;
    function Get_PaperName: WideString;
    function Get_PaperWidth: Integer;
    function Get_PaperHeight: Integer;
    function Get_BitmapWidth: Integer;
    function Get_BitmapHeight: Integer;
    function Get_LabelCount: Integer;
    function Get_LabelWidth: Integer;
    function Get_LabelHeight: Integer;
    function Get_Modified: WordBool;
  public
    property DefaultInterface: ILblInfo read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoPrintObject provides a Create and CreateRemote method to          
// create instances of the default interface IPrintObject exposed by              
// the CoClass PrintObject. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPrintObject = class
    class function Create: IPrintObject;
    class function CreateRemote(const MachineName: string): IPrintObject;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TPrintObject
// Help String      : PrintObjectObject
// Default Interface: IPrintObject
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TPrintObjectProperties= class;
{$ENDIF}
  TPrintObject = class(TOleServer)
  private
    FIntf:        IPrintObject;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TPrintObjectProperties;
    function      GetServerProperties: TPrintObjectProperties;
{$ENDIF}
    function      GetDefaultInterface: IPrintObject;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IPrintObject);
    procedure Disconnect; override;
    function ObjectsAt(X: Integer; Y: Integer): IObjectsAtEnum;
    function Objects: IObjectList;
    function LabelObject(Obj: Integer): ILabelObject;
    function ObjectAt(X: Integer; Y: Integer): Integer;
    function VarObjects: IVarObjectList;
    function FindObj(const Name: WideString): Integer;
    procedure BringToFront(Obj: Integer);
    procedure SendToBack(Obj: Integer);
    procedure Delete(Obj: Integer);
    function AddObject(ObjType: Integer; const Name: WideString; X: Integer; Y: Integer; 
                       Width: Integer; Height: Integer; Rotation: Integer): Integer;
    function CopyToClipboard(var Buf: Integer): WordBool;
    function PasteFromClipboard: WordBool;
    property DefaultInterface: IPrintObject read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TPrintObjectProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TPrintObject
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TPrintObjectProperties = class(TPersistent)
  private
    FServer:    TPrintObject;
    function    GetDefaultInterface: IPrintObject;
    constructor Create(AServer: TPrintObject);
  protected
  public
    property DefaultInterface: IPrintObject read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoObjectsAtEnum provides a Create and CreateRemote method to          
// create instances of the default interface IObjectsAtEnum exposed by              
// the CoClass ObjectsAtEnum. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoObjectsAtEnum = class
    class function Create: IObjectsAtEnum;
    class function CreateRemote(const MachineName: string): IObjectsAtEnum;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TObjectsAtEnum
// Help String      : ObjectsAtEnumObject
// Default Interface: IObjectsAtEnum
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TObjectsAtEnumProperties= class;
{$ENDIF}
  TObjectsAtEnum = class(TOleServer)
  private
    FIntf:        IObjectsAtEnum;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TObjectsAtEnumProperties;
    function      GetServerProperties: TObjectsAtEnumProperties;
{$ENDIF}
    function      GetDefaultInterface: IObjectsAtEnum;
  protected
    procedure InitServerData; override;
    function Get_Count: Integer;
    function Get_Item(Index: Integer): Integer;
    function Get__NewEnum: IUnknown;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IObjectsAtEnum);
    procedure Disconnect; override;
    property DefaultInterface: IObjectsAtEnum read GetDefaultInterface;
    property Count: Integer read Get_Count;
    property Item[Index: Integer]: Integer read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TObjectsAtEnumProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TObjectsAtEnum
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TObjectsAtEnumProperties = class(TPersistent)
  private
    FServer:    TObjectsAtEnum;
    function    GetDefaultInterface: IObjectsAtEnum;
    constructor Create(AServer: TObjectsAtEnum);
  protected
    function Get_Count: Integer;
    function Get_Item(Index: Integer): Integer;
    function Get__NewEnum: IUnknown;
  public
    property DefaultInterface: IObjectsAtEnum read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoObjectList provides a Create and CreateRemote method to          
// create instances of the default interface IObjectList exposed by              
// the CoClass ObjectList. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoObjectList = class
    class function Create: IObjectList;
    class function CreateRemote(const MachineName: string): IObjectList;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TObjectList
// Help String      : ObjectListObject
// Default Interface: IObjectList
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TObjectListProperties= class;
{$ENDIF}
  TObjectList = class(TOleServer)
  private
    FIntf:        IObjectList;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TObjectListProperties;
    function      GetServerProperties: TObjectListProperties;
{$ENDIF}
    function      GetDefaultInterface: IObjectList;
  protected
    procedure InitServerData; override;
    function Get_Item(Index: Integer): Integer;
    function Get_Count: Integer;
    function Get__NewEnum: IUnknown;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IObjectList);
    procedure Disconnect; override;
    property DefaultInterface: IObjectList read GetDefaultInterface;
    property Item[Index: Integer]: Integer read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TObjectListProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TObjectList
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TObjectListProperties = class(TPersistent)
  private
    FServer:    TObjectList;
    function    GetDefaultInterface: IObjectList;
    constructor Create(AServer: TObjectList);
  protected
    function Get_Item(Index: Integer): Integer;
    function Get_Count: Integer;
    function Get__NewEnum: IUnknown;
  public
    property DefaultInterface: IObjectList read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoVarObjectList provides a Create and CreateRemote method to          
// create instances of the default interface IVarObjectList exposed by              
// the CoClass VarObjectList. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoVarObjectList = class
    class function Create: IVarObjectList;
    class function CreateRemote(const MachineName: string): IVarObjectList;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TVarObjectList
// Help String      : VarObjectListObject
// Default Interface: IVarObjectList
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TVarObjectListProperties= class;
{$ENDIF}
  TVarObjectList = class(TOleServer)
  private
    FIntf:        IVarObjectList;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TVarObjectListProperties;
    function      GetServerProperties: TVarObjectListProperties;
{$ENDIF}
    function      GetDefaultInterface: IVarObjectList;
  protected
    procedure InitServerData; override;
    function Get_Item(Index: Integer): Integer;
    function Get_Count: Integer;
    function Get__NewEnum: IUnknown;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IVarObjectList);
    procedure Disconnect; override;
    property DefaultInterface: IVarObjectList read GetDefaultInterface;
    property Item[Index: Integer]: Integer read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TVarObjectListProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TVarObjectList
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TVarObjectListProperties = class(TPersistent)
  private
    FServer:    TVarObjectList;
    function    GetDefaultInterface: IVarObjectList;
    constructor Create(AServer: TVarObjectList);
  protected
    function Get_Item(Index: Integer): Integer;
    function Get_Count: Integer;
    function Get__NewEnum: IUnknown;
  public
    property DefaultInterface: IVarObjectList read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoLabelObject provides a Create and CreateRemote method to          
// create instances of the default interface ILabelObject exposed by              
// the CoClass LabelObject. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLabelObject = class
    class function Create: ILabelObject;
    class function CreateRemote(const MachineName: string): ILabelObject;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TLabelObject
// Help String      : LabelObjectObject
// Default Interface: ILabelObject
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TLabelObjectProperties= class;
{$ENDIF}
  TLabelObject = class(TOleServer)
  private
    FIntf:        ILabelObject;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TLabelObjectProperties;
    function      GetServerProperties: TLabelObjectProperties;
{$ENDIF}
    function      GetDefaultInterface: ILabelObject;
  protected
    procedure InitServerData; override;
    function Get_ObjType: Integer;
    function Get_Name: WideString;
    procedure Set_Name(const Name: WideString);
    function Get_X: Integer;
    procedure Set_X(X: Integer);
    function Get_Y: Integer;
    procedure Set_Y(Y: Integer);
    function Get_Width: Integer;
    procedure Set_Width(Width: Integer);
    function Get_Height: Integer;
    procedure Set_Height(Height: Integer);
    function Get_Rotation: Integer;
    procedure Set_Rotation(Rotation: Integer);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ILabelObject);
    procedure Disconnect; override;
    property DefaultInterface: ILabelObject read GetDefaultInterface;
    property ObjType: Integer read Get_ObjType;
    property Name: WideString read Get_Name write Set_Name;
    property X: Integer read Get_X write Set_X;
    property Y: Integer read Get_Y write Set_Y;
    property Width: Integer read Get_Width write Set_Width;
    property Height: Integer read Get_Height write Set_Height;
    property Rotation: Integer read Get_Rotation write Set_Rotation;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TLabelObjectProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TLabelObject
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TLabelObjectProperties = class(TPersistent)
  private
    FServer:    TLabelObject;
    function    GetDefaultInterface: ILabelObject;
    constructor Create(AServer: TLabelObject);
  protected
    function Get_ObjType: Integer;
    function Get_Name: WideString;
    procedure Set_Name(const Name: WideString);
    function Get_X: Integer;
    procedure Set_X(X: Integer);
    function Get_Y: Integer;
    procedure Set_Y(Y: Integer);
    function Get_Width: Integer;
    procedure Set_Width(Width: Integer);
    function Get_Height: Integer;
    procedure Set_Height(Height: Integer);
    function Get_Rotation: Integer;
    procedure Set_Rotation(Rotation: Integer);
  public
    property DefaultInterface: ILabelObject read GetDefaultInterface;
  published
    property Name: WideString read Get_Name write Set_Name;
    property X: Integer read Get_X write Set_X;
    property Y: Integer read Get_Y write Set_Y;
    property Width: Integer read Get_Width write Set_Width;
    property Height: Integer read Get_Height write Set_Height;
    property Rotation: Integer read Get_Rotation write Set_Rotation;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoTextObj provides a Create and CreateRemote method to          
// create instances of the default interface ITextObj exposed by              
// the CoClass TextObj. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTextObj = class
    class function Create: ITextObj;
    class function CreateRemote(const MachineName: string): ITextObj;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TTextObj
// Help String      : TextObjObject
// Default Interface: ITextObj
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TTextObjProperties= class;
{$ENDIF}
  TTextObj = class(TOleServer)
  private
    FIntf:        ITextObj;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TTextObjProperties;
    function      GetServerProperties: TTextObjProperties;
{$ENDIF}
    function      GetDefaultInterface: ITextObj;
  protected
    procedure InitServerData; override;
    function Get_ObjType: Integer;
    function Get_Name: WideString;
    procedure Set_Name(const Name: WideString);
    function Get_X: Integer;
    procedure Set_X(X: Integer);
    function Get_Y: Integer;
    procedure Set_Y(Y: Integer);
    function Get_Width: Integer;
    procedure Set_Width(Width: Integer);
    function Get_Height: Integer;
    procedure Set_Height(Height: Integer);
    function Get_Rotation: Integer;
    procedure Set_Rotation(Rotation: Integer);
    function Get_IsVariable: WordBool;
    procedure Set_IsVariable(IsVariable: WordBool);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ITextObj);
    procedure Disconnect; override;
    function TextAttributes: ITextAttributes;
    property DefaultInterface: ITextObj read GetDefaultInterface;
    property ObjType: Integer read Get_ObjType;
    property Name: WideString read Get_Name write Set_Name;
    property X: Integer read Get_X write Set_X;
    property Y: Integer read Get_Y write Set_Y;
    property Width: Integer read Get_Width write Set_Width;
    property Height: Integer read Get_Height write Set_Height;
    property Rotation: Integer read Get_Rotation write Set_Rotation;
    property IsVariable: WordBool read Get_IsVariable write Set_IsVariable;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TTextObjProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TTextObj
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TTextObjProperties = class(TPersistent)
  private
    FServer:    TTextObj;
    function    GetDefaultInterface: ITextObj;
    constructor Create(AServer: TTextObj);
  protected
    function Get_ObjType: Integer;
    function Get_Name: WideString;
    procedure Set_Name(const Name: WideString);
    function Get_X: Integer;
    procedure Set_X(X: Integer);
    function Get_Y: Integer;
    procedure Set_Y(Y: Integer);
    function Get_Width: Integer;
    procedure Set_Width(Width: Integer);
    function Get_Height: Integer;
    procedure Set_Height(Height: Integer);
    function Get_Rotation: Integer;
    procedure Set_Rotation(Rotation: Integer);
    function Get_IsVariable: WordBool;
    procedure Set_IsVariable(IsVariable: WordBool);
  public
    property DefaultInterface: ITextObj read GetDefaultInterface;
  published
    property Name: WideString read Get_Name write Set_Name;
    property X: Integer read Get_X write Set_X;
    property Y: Integer read Get_Y write Set_Y;
    property Width: Integer read Get_Width write Set_Width;
    property Height: Integer read Get_Height write Set_Height;
    property Rotation: Integer read Get_Rotation write Set_Rotation;
    property IsVariable: WordBool read Get_IsVariable write Set_IsVariable;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoRectObj provides a Create and CreateRemote method to          
// create instances of the default interface IRectObj exposed by              
// the CoClass RectObj. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRectObj = class
    class function Create: IRectObj;
    class function CreateRemote(const MachineName: string): IRectObj;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TRectObj
// Help String      : RectObjObject
// Default Interface: IRectObj
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TRectObjProperties= class;
{$ENDIF}
  TRectObj = class(TOleServer)
  private
    FIntf:        IRectObj;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TRectObjProperties;
    function      GetServerProperties: TRectObjProperties;
{$ENDIF}
    function      GetDefaultInterface: IRectObj;
  protected
    procedure InitServerData; override;
    function Get_ObjType: Integer;
    function Get_Name: WideString;
    procedure Set_Name(const Name: WideString);
    function Get_X: Integer;
    procedure Set_X(X: Integer);
    function Get_Y: Integer;
    procedure Set_Y(Y: Integer);
    function Get_Width: Integer;
    procedure Set_Width(Width: Integer);
    function Get_Height: Integer;
    procedure Set_Height(Height: Integer);
    function Get_Rotation: Integer;
    procedure Set_Rotation(Rotation: Integer);
    function Get_bFilled: WordBool;
    procedure Set_bFilled(Value: WordBool);
    function Get_Border: Integer;
    procedure Set_Border(Value: Integer);
    function Get_BorderColor: Integer;
    procedure Set_BorderColor(Value: Integer);
    function Get_FillColor: Integer;
    procedure Set_FillColor(Value: Integer);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IRectObj);
    procedure Disconnect; override;
    property DefaultInterface: IRectObj read GetDefaultInterface;
    property ObjType: Integer read Get_ObjType;
    property Name: WideString read Get_Name write Set_Name;
    property X: Integer read Get_X write Set_X;
    property Y: Integer read Get_Y write Set_Y;
    property Width: Integer read Get_Width write Set_Width;
    property Height: Integer read Get_Height write Set_Height;
    property Rotation: Integer read Get_Rotation write Set_Rotation;
    property bFilled: WordBool read Get_bFilled write Set_bFilled;
    property Border: Integer read Get_Border write Set_Border;
    property BorderColor: Integer read Get_BorderColor write Set_BorderColor;
    property FillColor: Integer read Get_FillColor write Set_FillColor;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TRectObjProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TRectObj
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TRectObjProperties = class(TPersistent)
  private
    FServer:    TRectObj;
    function    GetDefaultInterface: IRectObj;
    constructor Create(AServer: TRectObj);
  protected
    function Get_ObjType: Integer;
    function Get_Name: WideString;
    procedure Set_Name(const Name: WideString);
    function Get_X: Integer;
    procedure Set_X(X: Integer);
    function Get_Y: Integer;
    procedure Set_Y(Y: Integer);
    function Get_Width: Integer;
    procedure Set_Width(Width: Integer);
    function Get_Height: Integer;
    procedure Set_Height(Height: Integer);
    function Get_Rotation: Integer;
    procedure Set_Rotation(Rotation: Integer);
    function Get_bFilled: WordBool;
    procedure Set_bFilled(Value: WordBool);
    function Get_Border: Integer;
    procedure Set_Border(Value: Integer);
    function Get_BorderColor: Integer;
    procedure Set_BorderColor(Value: Integer);
    function Get_FillColor: Integer;
    procedure Set_FillColor(Value: Integer);
  public
    property DefaultInterface: IRectObj read GetDefaultInterface;
  published
    property Name: WideString read Get_Name write Set_Name;
    property X: Integer read Get_X write Set_X;
    property Y: Integer read Get_Y write Set_Y;
    property Width: Integer read Get_Width write Set_Width;
    property Height: Integer read Get_Height write Set_Height;
    property Rotation: Integer read Get_Rotation write Set_Rotation;
    property bFilled: WordBool read Get_bFilled write Set_bFilled;
    property Border: Integer read Get_Border write Set_Border;
    property BorderColor: Integer read Get_BorderColor write Set_BorderColor;
    property FillColor: Integer read Get_FillColor write Set_FillColor;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoLineObj provides a Create and CreateRemote method to          
// create instances of the default interface ILineObj exposed by              
// the CoClass LineObj. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLineObj = class
    class function Create: ILineObj;
    class function CreateRemote(const MachineName: string): ILineObj;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TLineObj
// Help String      : LineObjObject
// Default Interface: ILineObj
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TLineObjProperties= class;
{$ENDIF}
  TLineObj = class(TOleServer)
  private
    FIntf:        ILineObj;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TLineObjProperties;
    function      GetServerProperties: TLineObjProperties;
{$ENDIF}
    function      GetDefaultInterface: ILineObj;
  protected
    procedure InitServerData; override;
    function Get_ObjType: Integer;
    function Get_Name: WideString;
    procedure Set_Name(const Name: WideString);
    function Get_X: Integer;
    procedure Set_X(X: Integer);
    function Get_Y: Integer;
    procedure Set_Y(Y: Integer);
    function Get_Width: Integer;
    procedure Set_Width(Width: Integer);
    function Get_Height: Integer;
    procedure Set_Height(Height: Integer);
    function Get_Rotation: Integer;
    procedure Set_Rotation(Rotation: Integer);
    function Get_Length: Integer;
    procedure Set_Length(Value: Integer);
    function Get_Orientation: Integer;
    procedure Set_Orientation(Value: Integer);
    function Get_Thickness: Integer;
    procedure Set_Thickness(Value: Integer);
    function Get_LineColor: Integer;
    procedure Set_LineColor(Value: Integer);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ILineObj);
    procedure Disconnect; override;
    property DefaultInterface: ILineObj read GetDefaultInterface;
    property ObjType: Integer read Get_ObjType;
    property Name: WideString read Get_Name write Set_Name;
    property X: Integer read Get_X write Set_X;
    property Y: Integer read Get_Y write Set_Y;
    property Width: Integer read Get_Width write Set_Width;
    property Height: Integer read Get_Height write Set_Height;
    property Rotation: Integer read Get_Rotation write Set_Rotation;
    property Length: Integer read Get_Length write Set_Length;
    property Orientation: Integer read Get_Orientation write Set_Orientation;
    property Thickness: Integer read Get_Thickness write Set_Thickness;
    property LineColor: Integer read Get_LineColor write Set_LineColor;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TLineObjProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TLineObj
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TLineObjProperties = class(TPersistent)
  private
    FServer:    TLineObj;
    function    GetDefaultInterface: ILineObj;
    constructor Create(AServer: TLineObj);
  protected
    function Get_ObjType: Integer;
    function Get_Name: WideString;
    procedure Set_Name(const Name: WideString);
    function Get_X: Integer;
    procedure Set_X(X: Integer);
    function Get_Y: Integer;
    procedure Set_Y(Y: Integer);
    function Get_Width: Integer;
    procedure Set_Width(Width: Integer);
    function Get_Height: Integer;
    procedure Set_Height(Height: Integer);
    function Get_Rotation: Integer;
    procedure Set_Rotation(Rotation: Integer);
    function Get_Length: Integer;
    procedure Set_Length(Value: Integer);
    function Get_Orientation: Integer;
    procedure Set_Orientation(Value: Integer);
    function Get_Thickness: Integer;
    procedure Set_Thickness(Value: Integer);
    function Get_LineColor: Integer;
    procedure Set_LineColor(Value: Integer);
  public
    property DefaultInterface: ILineObj read GetDefaultInterface;
  published
    property Name: WideString read Get_Name write Set_Name;
    property X: Integer read Get_X write Set_X;
    property Y: Integer read Get_Y write Set_Y;
    property Width: Integer read Get_Width write Set_Width;
    property Height: Integer read Get_Height write Set_Height;
    property Rotation: Integer read Get_Rotation write Set_Rotation;
    property Length: Integer read Get_Length write Set_Length;
    property Orientation: Integer read Get_Orientation write Set_Orientation;
    property Thickness: Integer read Get_Thickness write Set_Thickness;
    property LineColor: Integer read Get_LineColor write Set_LineColor;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoBarCodeObj provides a Create and CreateRemote method to          
// create instances of the default interface IBarCodeObj exposed by              
// the CoClass BarCodeObj. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBarCodeObj = class
    class function Create: IBarCodeObj;
    class function CreateRemote(const MachineName: string): IBarCodeObj;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TBarCodeObj
// Help String      : BarCodeObjObject
// Default Interface: IBarCodeObj
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TBarCodeObjProperties= class;
{$ENDIF}
  TBarCodeObj = class(TOleServer)
  private
    FIntf:        IBarCodeObj;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TBarCodeObjProperties;
    function      GetServerProperties: TBarCodeObjProperties;
{$ENDIF}
    function      GetDefaultInterface: IBarCodeObj;
  protected
    procedure InitServerData; override;
    function Get_ObjType: Integer;
    function Get_Name: WideString;
    procedure Set_Name(const Name: WideString);
    function Get_X: Integer;
    procedure Set_X(X: Integer);
    function Get_Y: Integer;
    procedure Set_Y(Y: Integer);
    function Get_Width: Integer;
    procedure Set_Width(Width: Integer);
    function Get_Height: Integer;
    procedure Set_Height(Height: Integer);
    function Get_Rotation: Integer;
    procedure Set_Rotation(Rotation: Integer);
    function Get_Text: WideString;
    procedure Set_Text(const Text: WideString);
    function Get_Font: WideString;
    procedure Set_Font(const Font: WideString);
    function Get_TextPos: Integer;
    procedure Set_TextPos(TextPos: Integer);
    function Get_BCType: Integer;
    procedure Set_BCType(BCType: Integer);
    function Get_Size: Integer;
    procedure Set_Size(Size: Integer);
    function Get_Justify: Integer;
    procedure Set_Justify(Justify: Integer);
    function Get_Link: Integer;
    procedure Set_Link(Link: Integer);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBarCodeObj);
    procedure Disconnect; override;
    property DefaultInterface: IBarCodeObj read GetDefaultInterface;
    property ObjType: Integer read Get_ObjType;
    property Name: WideString read Get_Name write Set_Name;
    property X: Integer read Get_X write Set_X;
    property Y: Integer read Get_Y write Set_Y;
    property Width: Integer read Get_Width write Set_Width;
    property Height: Integer read Get_Height write Set_Height;
    property Rotation: Integer read Get_Rotation write Set_Rotation;
    property Text: WideString read Get_Text write Set_Text;
    property Font: WideString read Get_Font write Set_Font;
    property TextPos: Integer read Get_TextPos write Set_TextPos;
    property BCType: Integer read Get_BCType write Set_BCType;
    property Size: Integer read Get_Size write Set_Size;
    property Justify: Integer read Get_Justify write Set_Justify;
    property Link: Integer read Get_Link write Set_Link;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TBarCodeObjProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TBarCodeObj
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TBarCodeObjProperties = class(TPersistent)
  private
    FServer:    TBarCodeObj;
    function    GetDefaultInterface: IBarCodeObj;
    constructor Create(AServer: TBarCodeObj);
  protected
    function Get_ObjType: Integer;
    function Get_Name: WideString;
    procedure Set_Name(const Name: WideString);
    function Get_X: Integer;
    procedure Set_X(X: Integer);
    function Get_Y: Integer;
    procedure Set_Y(Y: Integer);
    function Get_Width: Integer;
    procedure Set_Width(Width: Integer);
    function Get_Height: Integer;
    procedure Set_Height(Height: Integer);
    function Get_Rotation: Integer;
    procedure Set_Rotation(Rotation: Integer);
    function Get_Text: WideString;
    procedure Set_Text(const Text: WideString);
    function Get_Font: WideString;
    procedure Set_Font(const Font: WideString);
    function Get_TextPos: Integer;
    procedure Set_TextPos(TextPos: Integer);
    function Get_BCType: Integer;
    procedure Set_BCType(BCType: Integer);
    function Get_Size: Integer;
    procedure Set_Size(Size: Integer);
    function Get_Justify: Integer;
    procedure Set_Justify(Justify: Integer);
    function Get_Link: Integer;
    procedure Set_Link(Link: Integer);
  public
    property DefaultInterface: IBarCodeObj read GetDefaultInterface;
  published
    property Name: WideString read Get_Name write Set_Name;
    property X: Integer read Get_X write Set_X;
    property Y: Integer read Get_Y write Set_Y;
    property Width: Integer read Get_Width write Set_Width;
    property Height: Integer read Get_Height write Set_Height;
    property Rotation: Integer read Get_Rotation write Set_Rotation;
    property Text: WideString read Get_Text write Set_Text;
    property Font: WideString read Get_Font write Set_Font;
    property TextPos: Integer read Get_TextPos write Set_TextPos;
    property BCType: Integer read Get_BCType write Set_BCType;
    property Size: Integer read Get_Size write Set_Size;
    property Justify: Integer read Get_Justify write Set_Justify;
    property Link: Integer read Get_Link write Set_Link;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoGraphicObj provides a Create and CreateRemote method to          
// create instances of the default interface IGraphicObj exposed by              
// the CoClass GraphicObj. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoGraphicObj = class
    class function Create: IGraphicObj;
    class function CreateRemote(const MachineName: string): IGraphicObj;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TGraphicObj
// Help String      : GraphicObjObject
// Default Interface: IGraphicObj
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TGraphicObjProperties= class;
{$ENDIF}
  TGraphicObj = class(TOleServer)
  private
    FIntf:        IGraphicObj;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TGraphicObjProperties;
    function      GetServerProperties: TGraphicObjProperties;
{$ENDIF}
    function      GetDefaultInterface: IGraphicObj;
  protected
    procedure InitServerData; override;
    function Get_ObjType: Integer;
    function Get_Name: WideString;
    procedure Set_Name(const Name: WideString);
    function Get_X: Integer;
    procedure Set_X(X: Integer);
    function Get_Y: Integer;
    procedure Set_Y(Y: Integer);
    function Get_Width: Integer;
    procedure Set_Width(Width: Integer);
    function Get_Height: Integer;
    procedure Set_Height(Height: Integer);
    function Get_Rotation: Integer;
    procedure Set_Rotation(Rotation: Integer);
    function Get_GraphicSource: Integer;
    procedure Set_GraphicSource(Value: Integer);
    function Get_FileName: WideString;
    procedure Set_FileName(const Value: WideString);
    function Get_BitmapHandle: Integer;
    procedure Set_BitmapHandle(Value: Integer);
    function Get_PaletteHandle: Integer;
    procedure Set_PaletteHandle(Value: Integer);
    procedure Set_WindowHandle(Param1: Integer);
    function Get_Border: Integer;
    procedure Set_Border(Value: Integer);
    function Get_BorderColor: Integer;
    procedure Set_BorderColor(Value: Integer);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IGraphicObj);
    procedure Disconnect; override;
    procedure GrabClipboard;
    property DefaultInterface: IGraphicObj read GetDefaultInterface;
    property ObjType: Integer read Get_ObjType;
    property WindowHandle: Integer write Set_WindowHandle;
    property Name: WideString read Get_Name write Set_Name;
    property X: Integer read Get_X write Set_X;
    property Y: Integer read Get_Y write Set_Y;
    property Width: Integer read Get_Width write Set_Width;
    property Height: Integer read Get_Height write Set_Height;
    property Rotation: Integer read Get_Rotation write Set_Rotation;
    property GraphicSource: Integer read Get_GraphicSource write Set_GraphicSource;
    property FileName: WideString read Get_FileName write Set_FileName;
    property BitmapHandle: Integer read Get_BitmapHandle write Set_BitmapHandle;
    property PaletteHandle: Integer read Get_PaletteHandle write Set_PaletteHandle;
    property Border: Integer read Get_Border write Set_Border;
    property BorderColor: Integer read Get_BorderColor write Set_BorderColor;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TGraphicObjProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TGraphicObj
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TGraphicObjProperties = class(TPersistent)
  private
    FServer:    TGraphicObj;
    function    GetDefaultInterface: IGraphicObj;
    constructor Create(AServer: TGraphicObj);
  protected
    function Get_ObjType: Integer;
    function Get_Name: WideString;
    procedure Set_Name(const Name: WideString);
    function Get_X: Integer;
    procedure Set_X(X: Integer);
    function Get_Y: Integer;
    procedure Set_Y(Y: Integer);
    function Get_Width: Integer;
    procedure Set_Width(Width: Integer);
    function Get_Height: Integer;
    procedure Set_Height(Height: Integer);
    function Get_Rotation: Integer;
    procedure Set_Rotation(Rotation: Integer);
    function Get_GraphicSource: Integer;
    procedure Set_GraphicSource(Value: Integer);
    function Get_FileName: WideString;
    procedure Set_FileName(const Value: WideString);
    function Get_BitmapHandle: Integer;
    procedure Set_BitmapHandle(Value: Integer);
    function Get_PaletteHandle: Integer;
    procedure Set_PaletteHandle(Value: Integer);
    procedure Set_WindowHandle(Param1: Integer);
    function Get_Border: Integer;
    procedure Set_Border(Value: Integer);
    function Get_BorderColor: Integer;
    procedure Set_BorderColor(Value: Integer);
  public
    property DefaultInterface: IGraphicObj read GetDefaultInterface;
  published
    property Name: WideString read Get_Name write Set_Name;
    property X: Integer read Get_X write Set_X;
    property Y: Integer read Get_Y write Set_Y;
    property Width: Integer read Get_Width write Set_Width;
    property Height: Integer read Get_Height write Set_Height;
    property Rotation: Integer read Get_Rotation write Set_Rotation;
    property GraphicSource: Integer read Get_GraphicSource write Set_GraphicSource;
    property FileName: WideString read Get_FileName write Set_FileName;
    property BitmapHandle: Integer read Get_BitmapHandle write Set_BitmapHandle;
    property PaletteHandle: Integer read Get_PaletteHandle write Set_PaletteHandle;
    property Border: Integer read Get_Border write Set_Border;
    property BorderColor: Integer read Get_BorderColor write Set_BorderColor;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoAddressObj provides a Create and CreateRemote method to          
// create instances of the default interface IAddressObj exposed by              
// the CoClass AddressObj. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAddressObj = class
    class function Create: IAddressObj;
    class function CreateRemote(const MachineName: string): IAddressObj;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TAddressObj
// Help String      : AddressObjObject
// Default Interface: IAddressObj
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TAddressObjProperties= class;
{$ENDIF}
  TAddressObj = class(TOleServer)
  private
    FIntf:        IAddressObj;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TAddressObjProperties;
    function      GetServerProperties: TAddressObjProperties;
{$ENDIF}
    function      GetDefaultInterface: IAddressObj;
  protected
    procedure InitServerData; override;
    function Get_ObjType: Integer;
    function Get_Name: WideString;
    procedure Set_Name(const Name: WideString);
    function Get_X: Integer;
    procedure Set_X(X: Integer);
    function Get_Y: Integer;
    procedure Set_Y(Y: Integer);
    function Get_Width: Integer;
    procedure Set_Width(Width: Integer);
    function Get_Height: Integer;
    procedure Set_Height(Height: Integer);
    function Get_Rotation: Integer;
    procedure Set_Rotation(Rotation: Integer);
    function Get_BarCodePosition: Integer;
    procedure Set_BarCodePosition(BarCodePosition: Integer);
    function Get_b9DigitOnly: WordBool;
    procedure Set_b9DigitOnly(b9DigitOnly: WordBool);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IAddressObj);
    procedure Disconnect; override;
    function TextAttributes: ITextAttributes;
    property DefaultInterface: IAddressObj read GetDefaultInterface;
    property ObjType: Integer read Get_ObjType;
    property Name: WideString read Get_Name write Set_Name;
    property X: Integer read Get_X write Set_X;
    property Y: Integer read Get_Y write Set_Y;
    property Width: Integer read Get_Width write Set_Width;
    property Height: Integer read Get_Height write Set_Height;
    property Rotation: Integer read Get_Rotation write Set_Rotation;
    property BarCodePosition: Integer read Get_BarCodePosition write Set_BarCodePosition;
    property b9DigitOnly: WordBool read Get_b9DigitOnly write Set_b9DigitOnly;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TAddressObjProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TAddressObj
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TAddressObjProperties = class(TPersistent)
  private
    FServer:    TAddressObj;
    function    GetDefaultInterface: IAddressObj;
    constructor Create(AServer: TAddressObj);
  protected
    function Get_ObjType: Integer;
    function Get_Name: WideString;
    procedure Set_Name(const Name: WideString);
    function Get_X: Integer;
    procedure Set_X(X: Integer);
    function Get_Y: Integer;
    procedure Set_Y(Y: Integer);
    function Get_Width: Integer;
    procedure Set_Width(Width: Integer);
    function Get_Height: Integer;
    procedure Set_Height(Height: Integer);
    function Get_Rotation: Integer;
    procedure Set_Rotation(Rotation: Integer);
    function Get_BarCodePosition: Integer;
    procedure Set_BarCodePosition(BarCodePosition: Integer);
    function Get_b9DigitOnly: WordBool;
    procedure Set_b9DigitOnly(b9DigitOnly: WordBool);
  public
    property DefaultInterface: IAddressObj read GetDefaultInterface;
  published
    property Name: WideString read Get_Name write Set_Name;
    property X: Integer read Get_X write Set_X;
    property Y: Integer read Get_Y write Set_Y;
    property Width: Integer read Get_Width write Set_Width;
    property Height: Integer read Get_Height write Set_Height;
    property Rotation: Integer read Get_Rotation write Set_Rotation;
    property BarCodePosition: Integer read Get_BarCodePosition write Set_BarCodePosition;
    property b9DigitOnly: WordBool read Get_b9DigitOnly write Set_b9DigitOnly;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCounterObj provides a Create and CreateRemote method to          
// create instances of the default interface ICounterObj exposed by              
// the CoClass CounterObj. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCounterObj = class
    class function Create: ICounterObj;
    class function CreateRemote(const MachineName: string): ICounterObj;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCounterObj
// Help String      : CounterObjObject
// Default Interface: ICounterObj
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCounterObjProperties= class;
{$ENDIF}
  TCounterObj = class(TOleServer)
  private
    FIntf:        ICounterObj;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TCounterObjProperties;
    function      GetServerProperties: TCounterObjProperties;
{$ENDIF}
    function      GetDefaultInterface: ICounterObj;
  protected
    procedure InitServerData; override;
    function Get_ObjType: Integer;
    function Get_Name: WideString;
    procedure Set_Name(const Name: WideString);
    function Get_X: Integer;
    procedure Set_X(X: Integer);
    function Get_Y: Integer;
    procedure Set_Y(Y: Integer);
    function Get_Width: Integer;
    procedure Set_Width(Width: Integer);
    function Get_Height: Integer;
    procedure Set_Height(Height: Integer);
    function Get_Rotation: Integer;
    procedure Set_Rotation(Rotation: Integer);
    function Get_PreText: WideString;
    procedure Set_PreText(const PreText: WideString);
    function Get_PostText: WideString;
    procedure Set_PostText(const PostText: WideString);
    function Get_Start: Integer;
    procedure Set_Start(Start: Integer);
    function Get_Current: Integer;
    procedure Set_Current(Current: Integer);
    function Get_MinWidth: Integer;
    procedure Set_MinWidth(MinWidth: Integer);
    function Get_Increment: Integer;
    procedure Set_Increment(Increment: Integer);
    function Get_UseLeadingZeros: WordBool;
    procedure Set_UseLeadingZeros(UseLeadingZeros: WordBool);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ICounterObj);
    procedure Disconnect; override;
    function TextAttributes: ITextAttributes;
    property DefaultInterface: ICounterObj read GetDefaultInterface;
    property ObjType: Integer read Get_ObjType;
    property Name: WideString read Get_Name write Set_Name;
    property X: Integer read Get_X write Set_X;
    property Y: Integer read Get_Y write Set_Y;
    property Width: Integer read Get_Width write Set_Width;
    property Height: Integer read Get_Height write Set_Height;
    property Rotation: Integer read Get_Rotation write Set_Rotation;
    property PreText: WideString read Get_PreText write Set_PreText;
    property PostText: WideString read Get_PostText write Set_PostText;
    property Start: Integer read Get_Start write Set_Start;
    property Current: Integer read Get_Current write Set_Current;
    property MinWidth: Integer read Get_MinWidth write Set_MinWidth;
    property Increment: Integer read Get_Increment write Set_Increment;
    property UseLeadingZeros: WordBool read Get_UseLeadingZeros write Set_UseLeadingZeros;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCounterObjProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCounterObj
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCounterObjProperties = class(TPersistent)
  private
    FServer:    TCounterObj;
    function    GetDefaultInterface: ICounterObj;
    constructor Create(AServer: TCounterObj);
  protected
    function Get_ObjType: Integer;
    function Get_Name: WideString;
    procedure Set_Name(const Name: WideString);
    function Get_X: Integer;
    procedure Set_X(X: Integer);
    function Get_Y: Integer;
    procedure Set_Y(Y: Integer);
    function Get_Width: Integer;
    procedure Set_Width(Width: Integer);
    function Get_Height: Integer;
    procedure Set_Height(Height: Integer);
    function Get_Rotation: Integer;
    procedure Set_Rotation(Rotation: Integer);
    function Get_PreText: WideString;
    procedure Set_PreText(const PreText: WideString);
    function Get_PostText: WideString;
    procedure Set_PostText(const PostText: WideString);
    function Get_Start: Integer;
    procedure Set_Start(Start: Integer);
    function Get_Current: Integer;
    procedure Set_Current(Current: Integer);
    function Get_MinWidth: Integer;
    procedure Set_MinWidth(MinWidth: Integer);
    function Get_Increment: Integer;
    procedure Set_Increment(Increment: Integer);
    function Get_UseLeadingZeros: WordBool;
    procedure Set_UseLeadingZeros(UseLeadingZeros: WordBool);
  public
    property DefaultInterface: ICounterObj read GetDefaultInterface;
  published
    property Name: WideString read Get_Name write Set_Name;
    property X: Integer read Get_X write Set_X;
    property Y: Integer read Get_Y write Set_Y;
    property Width: Integer read Get_Width write Set_Width;
    property Height: Integer read Get_Height write Set_Height;
    property Rotation: Integer read Get_Rotation write Set_Rotation;
    property PreText: WideString read Get_PreText write Set_PreText;
    property PostText: WideString read Get_PostText write Set_PostText;
    property Start: Integer read Get_Start write Set_Start;
    property Current: Integer read Get_Current write Set_Current;
    property MinWidth: Integer read Get_MinWidth write Set_MinWidth;
    property Increment: Integer read Get_Increment write Set_Increment;
    property UseLeadingZeros: WordBool read Get_UseLeadingZeros write Set_UseLeadingZeros;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoDateTimeObj provides a Create and CreateRemote method to          
// create instances of the default interface IDateTimeObj exposed by              
// the CoClass DateTimeObj. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDateTimeObj = class
    class function Create: IDateTimeObj;
    class function CreateRemote(const MachineName: string): IDateTimeObj;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDateTimeObj
// Help String      : DateTimeObjObject
// Default Interface: IDateTimeObj
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TDateTimeObjProperties= class;
{$ENDIF}
  TDateTimeObj = class(TOleServer)
  private
    FIntf:        IDateTimeObj;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TDateTimeObjProperties;
    function      GetServerProperties: TDateTimeObjProperties;
{$ENDIF}
    function      GetDefaultInterface: IDateTimeObj;
  protected
    procedure InitServerData; override;
    function Get_ObjType: Integer;
    function Get_Name: WideString;
    procedure Set_Name(const Name: WideString);
    function Get_X: Integer;
    procedure Set_X(X: Integer);
    function Get_Y: Integer;
    procedure Set_Y(Y: Integer);
    function Get_Width: Integer;
    procedure Set_Width(Width: Integer);
    function Get_Height: Integer;
    procedure Set_Height(Height: Integer);
    function Get_Rotation: Integer;
    procedure Set_Rotation(Rotation: Integer);
    function Get_PreText: WideString;
    procedure Set_PreText(const PreText: WideString);
    function Get_PostText: WideString;
    procedure Set_PostText(const PostText: WideString);
    function Get_Format: Integer;
    procedure Set_Format(Format: Integer);
    function Get_IncludeTime: WordBool;
    procedure Set_IncludeTime(IncludeTime: WordBool);
    function Get_b24Hour: WordBool;
    procedure Set_b24Hour(b24Hour: WordBool);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDateTimeObj);
    procedure Disconnect; override;
    function TextAttributes: ITextAttributes;
    property DefaultInterface: IDateTimeObj read GetDefaultInterface;
    property ObjType: Integer read Get_ObjType;
    property Name: WideString read Get_Name write Set_Name;
    property X: Integer read Get_X write Set_X;
    property Y: Integer read Get_Y write Set_Y;
    property Width: Integer read Get_Width write Set_Width;
    property Height: Integer read Get_Height write Set_Height;
    property Rotation: Integer read Get_Rotation write Set_Rotation;
    property PreText: WideString read Get_PreText write Set_PreText;
    property PostText: WideString read Get_PostText write Set_PostText;
    property Format: Integer read Get_Format write Set_Format;
    property IncludeTime: WordBool read Get_IncludeTime write Set_IncludeTime;
    property b24Hour: WordBool read Get_b24Hour write Set_b24Hour;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDateTimeObjProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TDateTimeObj
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TDateTimeObjProperties = class(TPersistent)
  private
    FServer:    TDateTimeObj;
    function    GetDefaultInterface: IDateTimeObj;
    constructor Create(AServer: TDateTimeObj);
  protected
    function Get_ObjType: Integer;
    function Get_Name: WideString;
    procedure Set_Name(const Name: WideString);
    function Get_X: Integer;
    procedure Set_X(X: Integer);
    function Get_Y: Integer;
    procedure Set_Y(Y: Integer);
    function Get_Width: Integer;
    procedure Set_Width(Width: Integer);
    function Get_Height: Integer;
    procedure Set_Height(Height: Integer);
    function Get_Rotation: Integer;
    procedure Set_Rotation(Rotation: Integer);
    function Get_PreText: WideString;
    procedure Set_PreText(const PreText: WideString);
    function Get_PostText: WideString;
    procedure Set_PostText(const PostText: WideString);
    function Get_Format: Integer;
    procedure Set_Format(Format: Integer);
    function Get_IncludeTime: WordBool;
    procedure Set_IncludeTime(IncludeTime: WordBool);
    function Get_b24Hour: WordBool;
    procedure Set_b24Hour(b24Hour: WordBool);
  public
    property DefaultInterface: IDateTimeObj read GetDefaultInterface;
  published
    property Name: WideString read Get_Name write Set_Name;
    property X: Integer read Get_X write Set_X;
    property Y: Integer read Get_Y write Set_Y;
    property Width: Integer read Get_Width write Set_Width;
    property Height: Integer read Get_Height write Set_Height;
    property Rotation: Integer read Get_Rotation write Set_Rotation;
    property PreText: WideString read Get_PreText write Set_PreText;
    property PostText: WideString read Get_PostText write Set_PostText;
    property Format: Integer read Get_Format write Set_Format;
    property IncludeTime: WordBool read Get_IncludeTime write Set_IncludeTime;
    property b24Hour: WordBool read Get_b24Hour write Set_b24Hour;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCircularTextObj provides a Create and CreateRemote method to          
// create instances of the default interface ICircularTextObj exposed by              
// the CoClass CircularTextObj. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCircularTextObj = class
    class function Create: ICircularTextObj;
    class function CreateRemote(const MachineName: string): ICircularTextObj;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCircularTextObj
// Help String      : CircularTextObj Object
// Default Interface: ICircularTextObj
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCircularTextObjProperties= class;
{$ENDIF}
  TCircularTextObj = class(TOleServer)
  private
    FIntf:        ICircularTextObj;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TCircularTextObjProperties;
    function      GetServerProperties: TCircularTextObjProperties;
{$ENDIF}
    function      GetDefaultInterface: ICircularTextObj;
  protected
    procedure InitServerData; override;
    function Get_IsVariable: WordBool;
    procedure Set_IsVariable(Value: WordBool);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ICircularTextObj);
    procedure Disconnect; override;
    function TextAttributes: ICircularTextAttributes;
    property DefaultInterface: ICircularTextObj read GetDefaultInterface;
    property IsVariable: WordBool read Get_IsVariable write Set_IsVariable;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCircularTextObjProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCircularTextObj
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCircularTextObjProperties = class(TPersistent)
  private
    FServer:    TCircularTextObj;
    function    GetDefaultInterface: ICircularTextObj;
    constructor Create(AServer: TCircularTextObj);
  protected
    function Get_IsVariable: WordBool;
    procedure Set_IsVariable(Value: WordBool);
  public
    property DefaultInterface: ICircularTextObj read GetDefaultInterface;
  published
    property IsVariable: WordBool read Get_IsVariable write Set_IsVariable;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoTextAttributes provides a Create and CreateRemote method to          
// create instances of the default interface ITextAttributes2 exposed by              
// the CoClass TextAttributes. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTextAttributes = class
    class function Create: ITextAttributes2;
    class function CreateRemote(const MachineName: string): ITextAttributes2;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TTextAttributes
// Help String      : TextPropertiesObject
// Default Interface: ITextAttributes2
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TTextAttributesProperties= class;
{$ENDIF}
  TTextAttributes = class(TOleServer)
  private
    FIntf:        ITextAttributes2;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TTextAttributesProperties;
    function      GetServerProperties: TTextAttributesProperties;
{$ENDIF}
    function      GetDefaultInterface: ITextAttributes2;
  protected
    procedure InitServerData; override;
    function Get_Text: WideString;
    procedure Set_Text(const Value: WideString);
    function Get_Font_1: WideString;
    procedure Set_Font_1(const Value: WideString);
    function Get_Font_2: WideString;
    procedure Set_Font_2(const Value: WideString);
    function Get_Justify: Integer;
    procedure Set_Justify(Value: Integer);
    function Get_VJustify: Integer;
    procedure Set_VJustify(Value: Integer);
    function Get_Mirrored: WordBool;
    procedure Set_Mirrored(Value: WordBool);
    function Get_Vertical: WordBool;
    procedure Set_Vertical(Value: WordBool);
    function Get_TextColor: Integer;
    procedure Set_TextColor(Value: Integer);
    function Get_BackGroundColor: Integer;
    procedure Set_BackGroundColor(Value: Integer);
    function Get_RichText: WideString;
    procedure Set_RichText(const Value: WideString);
    function Get_ShadowEffect: WordBool;
    procedure Set_ShadowEffect(Value: WordBool);
    function Get_OutlineEffect: WordBool;
    procedure Set_OutlineEffect(Value: WordBool);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ITextAttributes2);
    procedure Disconnect; override;
    property DefaultInterface: ITextAttributes2 read GetDefaultInterface;
    property Text: WideString read Get_Text write Set_Text;
    property Font_1: WideString read Get_Font_1 write Set_Font_1;
    property Font_2: WideString read Get_Font_2 write Set_Font_2;
    property Justify: Integer read Get_Justify write Set_Justify;
    property VJustify: Integer read Get_VJustify write Set_VJustify;
    property Mirrored: WordBool read Get_Mirrored write Set_Mirrored;
    property Vertical: WordBool read Get_Vertical write Set_Vertical;
    property TextColor: Integer read Get_TextColor write Set_TextColor;
    property BackGroundColor: Integer read Get_BackGroundColor write Set_BackGroundColor;
    property RichText: WideString read Get_RichText write Set_RichText;
    property ShadowEffect: WordBool read Get_ShadowEffect write Set_ShadowEffect;
    property OutlineEffect: WordBool read Get_OutlineEffect write Set_OutlineEffect;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TTextAttributesProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TTextAttributes
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TTextAttributesProperties = class(TPersistent)
  private
    FServer:    TTextAttributes;
    function    GetDefaultInterface: ITextAttributes2;
    constructor Create(AServer: TTextAttributes);
  protected
    function Get_Text: WideString;
    procedure Set_Text(const Value: WideString);
    function Get_Font_1: WideString;
    procedure Set_Font_1(const Value: WideString);
    function Get_Font_2: WideString;
    procedure Set_Font_2(const Value: WideString);
    function Get_Justify: Integer;
    procedure Set_Justify(Value: Integer);
    function Get_VJustify: Integer;
    procedure Set_VJustify(Value: Integer);
    function Get_Mirrored: WordBool;
    procedure Set_Mirrored(Value: WordBool);
    function Get_Vertical: WordBool;
    procedure Set_Vertical(Value: WordBool);
    function Get_TextColor: Integer;
    procedure Set_TextColor(Value: Integer);
    function Get_BackGroundColor: Integer;
    procedure Set_BackGroundColor(Value: Integer);
    function Get_RichText: WideString;
    procedure Set_RichText(const Value: WideString);
    function Get_ShadowEffect: WordBool;
    procedure Set_ShadowEffect(Value: WordBool);
    function Get_OutlineEffect: WordBool;
    procedure Set_OutlineEffect(Value: WordBool);
  public
    property DefaultInterface: ITextAttributes2 read GetDefaultInterface;
  published
    property Text: WideString read Get_Text write Set_Text;
    property Font_1: WideString read Get_Font_1 write Set_Font_1;
    property Font_2: WideString read Get_Font_2 write Set_Font_2;
    property Justify: Integer read Get_Justify write Set_Justify;
    property VJustify: Integer read Get_VJustify write Set_VJustify;
    property Mirrored: WordBool read Get_Mirrored write Set_Mirrored;
    property Vertical: WordBool read Get_Vertical write Set_Vertical;
    property TextColor: Integer read Get_TextColor write Set_TextColor;
    property BackGroundColor: Integer read Get_BackGroundColor write Set_BackGroundColor;
    property RichText: WideString read Get_RichText write Set_RichText;
    property ShadowEffect: WordBool read Get_ShadowEffect write Set_ShadowEffect;
    property OutlineEffect: WordBool read Get_OutlineEffect write Set_OutlineEffect;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCircularTextAttributes provides a Create and CreateRemote method to          
// create instances of the default interface ICircularTextAttributes2 exposed by              
// the CoClass CircularTextAttributes. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCircularTextAttributes = class
    class function Create: ICircularTextAttributes2;
    class function CreateRemote(const MachineName: string): ICircularTextAttributes2;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCircularTextAttributes
// Help String      : CircularTextAttributes Object
// Default Interface: ICircularTextAttributes2
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCircularTextAttributesProperties= class;
{$ENDIF}
  TCircularTextAttributes = class(TOleServer)
  private
    FIntf:        ICircularTextAttributes2;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TCircularTextAttributesProperties;
    function      GetServerProperties: TCircularTextAttributesProperties;
{$ENDIF}
    function      GetDefaultInterface: ICircularTextAttributes2;
  protected
    procedure InitServerData; override;
    function Get_Text: WideString;
    procedure Set_Text(const Value: WideString);
    function Get_Font: WideString;
    procedure Set_Font(const Value: WideString);
    function Get_Mirrored: WordBool;
    procedure Set_Mirrored(Value: WordBool);
    function Get_DisplayMode: Integer;
    procedure Set_DisplayMode(Value: Integer);
    function Get_TextColor: Integer;
    procedure Set_TextColor(Value: Integer);
    function Get_BackGroundColor: Integer;
    procedure Set_BackGroundColor(Value: Integer);
    function Get_CenteredOnLabel: WordBool;
    procedure Set_CenteredOnLabel(Value: WordBool);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ICircularTextAttributes2);
    procedure Disconnect; override;
    property DefaultInterface: ICircularTextAttributes2 read GetDefaultInterface;
    property Text: WideString read Get_Text write Set_Text;
    property Font: WideString read Get_Font write Set_Font;
    property Mirrored: WordBool read Get_Mirrored write Set_Mirrored;
    property DisplayMode: Integer read Get_DisplayMode write Set_DisplayMode;
    property TextColor: Integer read Get_TextColor write Set_TextColor;
    property BackGroundColor: Integer read Get_BackGroundColor write Set_BackGroundColor;
    property CenteredOnLabel: WordBool read Get_CenteredOnLabel write Set_CenteredOnLabel;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCircularTextAttributesProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCircularTextAttributes
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCircularTextAttributesProperties = class(TPersistent)
  private
    FServer:    TCircularTextAttributes;
    function    GetDefaultInterface: ICircularTextAttributes2;
    constructor Create(AServer: TCircularTextAttributes);
  protected
    function Get_Text: WideString;
    procedure Set_Text(const Value: WideString);
    function Get_Font: WideString;
    procedure Set_Font(const Value: WideString);
    function Get_Mirrored: WordBool;
    procedure Set_Mirrored(Value: WordBool);
    function Get_DisplayMode: Integer;
    procedure Set_DisplayMode(Value: Integer);
    function Get_TextColor: Integer;
    procedure Set_TextColor(Value: Integer);
    function Get_BackGroundColor: Integer;
    procedure Set_BackGroundColor(Value: Integer);
    function Get_CenteredOnLabel: WordBool;
    procedure Set_CenteredOnLabel(Value: WordBool);
  public
    property DefaultInterface: ICircularTextAttributes2 read GetDefaultInterface;
  published
    property Text: WideString read Get_Text write Set_Text;
    property Font: WideString read Get_Font write Set_Font;
    property Mirrored: WordBool read Get_Mirrored write Set_Mirrored;
    property DisplayMode: Integer read Get_DisplayMode write Set_DisplayMode;
    property TextColor: Integer read Get_TextColor write Set_TextColor;
    property BackGroundColor: Integer read Get_BackGroundColor write Set_BackGroundColor;
    property CenteredOnLabel: WordBool read Get_CenteredOnLabel write Set_CenteredOnLabel;
  end;
{$ENDIF}


procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses ComObj;

class function CoLabelEngine.Create: ILabelEngine;
begin
  Result := CreateComObject(CLASS_LabelEngine) as ILabelEngine;
end;

class function CoLabelEngine.CreateRemote(const MachineName: string): ILabelEngine;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LabelEngine) as ILabelEngine;
end;

procedure TLabelEngine.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{1CE3FE82-8EBE-11D2-A3BA-0000E8D57653}';
    IntfIID:   '{1CE3FE81-8EBE-11D2-A3BA-0000E8D57653}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TLabelEngine.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ILabelEngine;
  end;
end;

procedure TLabelEngine.ConnectTo(svrIntf: ILabelEngine);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TLabelEngine.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TLabelEngine.GetDefaultInterface: ILabelEngine;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TLabelEngine.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TLabelEngineProperties.Create(Self);
{$ENDIF}
end;

destructor TLabelEngine.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TLabelEngine.GetServerProperties: TLabelEngineProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TLabelEngine.Set_Zoom(Param1: Integer);
begin
  DefaultInterface.Set_Zoom(Param1);
end;

procedure TLabelEngine.Set_Shadow(Param1: WordBool);
begin
  DefaultInterface.Set_Shadow(Param1);
end;

function TLabelEngine.LabelNames: ILabelList;
begin
  Result := DefaultInterface.LabelNames;
end;

function TLabelEngine.LabelInfo: ILblInfo;
begin
  Result := DefaultInterface.LabelInfo;
end;

function TLabelEngine.PrintObject: IPrintObject;
begin
  Result := DefaultInterface.PrintObject;
end;

procedure TLabelEngine.NewLabel(const LabelType: WideString);
begin
  DefaultInterface.NewLabel(LabelType);
end;

function TLabelEngine.OpenFile(const FileName: WideString): WordBool;
begin
  Result := DefaultInterface.OpenFile(FileName);
end;

function TLabelEngine.SaveFile(const FileName: WideString): WordBool;
begin
  Result := DefaultInterface.SaveFile(FileName);
end;

function TLabelEngine.PrintLabel(const DeviceName: WideString; const Port: WideString; 
                                 Quantity: Integer; bShowDialog: WordBool): WordBool;
begin
  Result := DefaultInterface.PrintLabel(DeviceName, Port, Quantity, bShowDialog);
end;

function TLabelEngine.Output(DC: Integer): WordBool;
begin
  Result := DefaultInterface.Output(DC);
end;

function TLabelEngine.OutputXY(DC: Integer; X: Integer; Y: Integer): WordBool;
begin
  Result := DefaultInterface.OutputXY(DC, X, Y);
end;

procedure TLabelEngine.DrawLabel(DC: Integer);
begin
  DefaultInterface.DrawLabel(DC);
end;

function TLabelEngine.ValidateBarCode(const Text: WideString; BCType: Integer): Integer;
begin
  Result := DefaultInterface.ValidateBarCode(Text, BCType);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TLabelEngineProperties.Create(AServer: TLabelEngine);
begin
  inherited Create;
  FServer := AServer;
end;

function TLabelEngineProperties.GetDefaultInterface: ILabelEngine;
begin
  Result := FServer.DefaultInterface;
end;

procedure TLabelEngineProperties.Set_Zoom(Param1: Integer);
begin
  DefaultInterface.Set_Zoom(Param1);
end;

procedure TLabelEngineProperties.Set_Shadow(Param1: WordBool);
begin
  DefaultInterface.Set_Shadow(Param1);
end;

{$ENDIF}

class function CoLabelList.Create: ILabelList;
begin
  Result := CreateComObject(CLASS_LabelList) as ILabelList;
end;

class function CoLabelList.CreateRemote(const MachineName: string): ILabelList;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LabelList) as ILabelList;
end;

procedure TLabelList.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{1CE3FE84-8EBE-11D2-A3BA-0000E8D57653}';
    IntfIID:   '{1CE3FE83-8EBE-11D2-A3BA-0000E8D57653}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TLabelList.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ILabelList;
  end;
end;

procedure TLabelList.ConnectTo(svrIntf: ILabelList);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TLabelList.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TLabelList.GetDefaultInterface: ILabelList;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TLabelList.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TLabelListProperties.Create(Self);
{$ENDIF}
end;

destructor TLabelList.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TLabelList.GetServerProperties: TLabelListProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TLabelList.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TLabelList.Get_Item(Index: Integer): WideString;
begin
    Result := DefaultInterface.Item[Index];
end;

function TLabelList.Get__NewEnum: IUnknown;
begin
    Result := DefaultInterface._NewEnum;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TLabelListProperties.Create(AServer: TLabelList);
begin
  inherited Create;
  FServer := AServer;
end;

function TLabelListProperties.GetDefaultInterface: ILabelList;
begin
  Result := FServer.DefaultInterface;
end;

function TLabelListProperties.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TLabelListProperties.Get_Item(Index: Integer): WideString;
begin
    Result := DefaultInterface.Item[Index];
end;

function TLabelListProperties.Get__NewEnum: IUnknown;
begin
    Result := DefaultInterface._NewEnum;
end;

{$ENDIF}

class function CoLblInfo.Create: ILblInfo;
begin
  Result := CreateComObject(CLASS_LblInfo) as ILblInfo;
end;

class function CoLblInfo.CreateRemote(const MachineName: string): ILblInfo;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LblInfo) as ILblInfo;
end;

procedure TLblInfo.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{9603C363-8ECB-11D2-A3BA-0000E8D57653}';
    IntfIID:   '{9603C362-8ECB-11D2-A3BA-0000E8D57653}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TLblInfo.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ILblInfo;
  end;
end;

procedure TLblInfo.ConnectTo(svrIntf: ILblInfo);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TLblInfo.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TLblInfo.GetDefaultInterface: ILblInfo;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TLblInfo.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TLblInfoProperties.Create(Self);
{$ENDIF}
end;

destructor TLblInfo.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TLblInfo.GetServerProperties: TLblInfoProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TLblInfo.Get_LabelName: WideString;
begin
    Result := DefaultInterface.LabelName;
end;

function TLblInfo.Get_PaperName: WideString;
begin
    Result := DefaultInterface.PaperName;
end;

function TLblInfo.Get_PaperWidth: Integer;
begin
    Result := DefaultInterface.PaperWidth;
end;

function TLblInfo.Get_PaperHeight: Integer;
begin
    Result := DefaultInterface.PaperHeight;
end;

function TLblInfo.Get_BitmapWidth: Integer;
begin
    Result := DefaultInterface.BitmapWidth;
end;

function TLblInfo.Get_BitmapHeight: Integer;
begin
    Result := DefaultInterface.BitmapHeight;
end;

function TLblInfo.Get_LabelCount: Integer;
begin
    Result := DefaultInterface.LabelCount;
end;

function TLblInfo.Get_LabelWidth: Integer;
begin
    Result := DefaultInterface.LabelWidth;
end;

function TLblInfo.Get_LabelHeight: Integer;
begin
    Result := DefaultInterface.LabelHeight;
end;

function TLblInfo.Get_Modified: WordBool;
begin
    Result := DefaultInterface.Modified;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TLblInfoProperties.Create(AServer: TLblInfo);
begin
  inherited Create;
  FServer := AServer;
end;

function TLblInfoProperties.GetDefaultInterface: ILblInfo;
begin
  Result := FServer.DefaultInterface;
end;

function TLblInfoProperties.Get_LabelName: WideString;
begin
    Result := DefaultInterface.LabelName;
end;

function TLblInfoProperties.Get_PaperName: WideString;
begin
    Result := DefaultInterface.PaperName;
end;

function TLblInfoProperties.Get_PaperWidth: Integer;
begin
    Result := DefaultInterface.PaperWidth;
end;

function TLblInfoProperties.Get_PaperHeight: Integer;
begin
    Result := DefaultInterface.PaperHeight;
end;

function TLblInfoProperties.Get_BitmapWidth: Integer;
begin
    Result := DefaultInterface.BitmapWidth;
end;

function TLblInfoProperties.Get_BitmapHeight: Integer;
begin
    Result := DefaultInterface.BitmapHeight;
end;

function TLblInfoProperties.Get_LabelCount: Integer;
begin
    Result := DefaultInterface.LabelCount;
end;

function TLblInfoProperties.Get_LabelWidth: Integer;
begin
    Result := DefaultInterface.LabelWidth;
end;

function TLblInfoProperties.Get_LabelHeight: Integer;
begin
    Result := DefaultInterface.LabelHeight;
end;

function TLblInfoProperties.Get_Modified: WordBool;
begin
    Result := DefaultInterface.Modified;
end;

{$ENDIF}

class function CoPrintObject.Create: IPrintObject;
begin
  Result := CreateComObject(CLASS_PrintObject) as IPrintObject;
end;

class function CoPrintObject.CreateRemote(const MachineName: string): IPrintObject;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PrintObject) as IPrintObject;
end;

procedure TPrintObject.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{B0ADDB04-943F-11D2-A3BA-0000E8D57653}';
    IntfIID:   '{B0ADDB03-943F-11D2-A3BA-0000E8D57653}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TPrintObject.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IPrintObject;
  end;
end;

procedure TPrintObject.ConnectTo(svrIntf: IPrintObject);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TPrintObject.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TPrintObject.GetDefaultInterface: IPrintObject;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TPrintObject.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TPrintObjectProperties.Create(Self);
{$ENDIF}
end;

destructor TPrintObject.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TPrintObject.GetServerProperties: TPrintObjectProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TPrintObject.ObjectsAt(X: Integer; Y: Integer): IObjectsAtEnum;
begin
  Result := DefaultInterface.ObjectsAt(X, Y);
end;

function TPrintObject.Objects: IObjectList;
begin
  Result := DefaultInterface.Objects;
end;

function TPrintObject.LabelObject(Obj: Integer): ILabelObject;
begin
  Result := DefaultInterface.LabelObject(Obj);
end;

function TPrintObject.ObjectAt(X: Integer; Y: Integer): Integer;
begin
  Result := DefaultInterface.ObjectAt(X, Y);
end;

function TPrintObject.VarObjects: IVarObjectList;
begin
  Result := DefaultInterface.VarObjects;
end;

function TPrintObject.FindObj(const Name: WideString): Integer;
begin
  Result := DefaultInterface.FindObj(Name);
end;

procedure TPrintObject.BringToFront(Obj: Integer);
begin
  DefaultInterface.BringToFront(Obj);
end;

procedure TPrintObject.SendToBack(Obj: Integer);
begin
  DefaultInterface.SendToBack(Obj);
end;

procedure TPrintObject.Delete(Obj: Integer);
begin
  DefaultInterface.Delete(Obj);
end;

function TPrintObject.AddObject(ObjType: Integer; const Name: WideString; X: Integer; Y: Integer; 
                                Width: Integer; Height: Integer; Rotation: Integer): Integer;
begin
  Result := DefaultInterface.AddObject(ObjType, Name, X, Y, Width, Height, Rotation);
end;

function TPrintObject.CopyToClipboard(var Buf: Integer): WordBool;
begin
  Result := DefaultInterface.CopyToClipboard(Buf);
end;

function TPrintObject.PasteFromClipboard: WordBool;
begin
  Result := DefaultInterface.PasteFromClipboard;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TPrintObjectProperties.Create(AServer: TPrintObject);
begin
  inherited Create;
  FServer := AServer;
end;

function TPrintObjectProperties.GetDefaultInterface: IPrintObject;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoObjectsAtEnum.Create: IObjectsAtEnum;
begin
  Result := CreateComObject(CLASS_ObjectsAtEnum) as IObjectsAtEnum;
end;

class function CoObjectsAtEnum.CreateRemote(const MachineName: string): IObjectsAtEnum;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ObjectsAtEnum) as IObjectsAtEnum;
end;

procedure TObjectsAtEnum.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{B0ADDB06-943F-11D2-A3BA-0000E8D57653}';
    IntfIID:   '{B0ADDB05-943F-11D2-A3BA-0000E8D57653}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TObjectsAtEnum.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IObjectsAtEnum;
  end;
end;

procedure TObjectsAtEnum.ConnectTo(svrIntf: IObjectsAtEnum);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TObjectsAtEnum.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TObjectsAtEnum.GetDefaultInterface: IObjectsAtEnum;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TObjectsAtEnum.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TObjectsAtEnumProperties.Create(Self);
{$ENDIF}
end;

destructor TObjectsAtEnum.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TObjectsAtEnum.GetServerProperties: TObjectsAtEnumProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TObjectsAtEnum.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TObjectsAtEnum.Get_Item(Index: Integer): Integer;
begin
    Result := DefaultInterface.Item[Index];
end;

function TObjectsAtEnum.Get__NewEnum: IUnknown;
begin
    Result := DefaultInterface._NewEnum;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TObjectsAtEnumProperties.Create(AServer: TObjectsAtEnum);
begin
  inherited Create;
  FServer := AServer;
end;

function TObjectsAtEnumProperties.GetDefaultInterface: IObjectsAtEnum;
begin
  Result := FServer.DefaultInterface;
end;

function TObjectsAtEnumProperties.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TObjectsAtEnumProperties.Get_Item(Index: Integer): Integer;
begin
    Result := DefaultInterface.Item[Index];
end;

function TObjectsAtEnumProperties.Get__NewEnum: IUnknown;
begin
    Result := DefaultInterface._NewEnum;
end;

{$ENDIF}

class function CoObjectList.Create: IObjectList;
begin
  Result := CreateComObject(CLASS_ObjectList) as IObjectList;
end;

class function CoObjectList.CreateRemote(const MachineName: string): IObjectList;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ObjectList) as IObjectList;
end;

procedure TObjectList.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{F1BE4601-A012-11D2-BE58-0000E8D4216C}';
    IntfIID:   '{F1BE4600-A012-11D2-BE58-0000E8D4216C}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TObjectList.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IObjectList;
  end;
end;

procedure TObjectList.ConnectTo(svrIntf: IObjectList);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TObjectList.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TObjectList.GetDefaultInterface: IObjectList;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TObjectList.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TObjectListProperties.Create(Self);
{$ENDIF}
end;

destructor TObjectList.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TObjectList.GetServerProperties: TObjectListProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TObjectList.Get_Item(Index: Integer): Integer;
begin
    Result := DefaultInterface.Item[Index];
end;

function TObjectList.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TObjectList.Get__NewEnum: IUnknown;
begin
    Result := DefaultInterface._NewEnum;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TObjectListProperties.Create(AServer: TObjectList);
begin
  inherited Create;
  FServer := AServer;
end;

function TObjectListProperties.GetDefaultInterface: IObjectList;
begin
  Result := FServer.DefaultInterface;
end;

function TObjectListProperties.Get_Item(Index: Integer): Integer;
begin
    Result := DefaultInterface.Item[Index];
end;

function TObjectListProperties.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TObjectListProperties.Get__NewEnum: IUnknown;
begin
    Result := DefaultInterface._NewEnum;
end;

{$ENDIF}

class function CoVarObjectList.Create: IVarObjectList;
begin
  Result := CreateComObject(CLASS_VarObjectList) as IVarObjectList;
end;

class function CoVarObjectList.CreateRemote(const MachineName: string): IVarObjectList;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_VarObjectList) as IVarObjectList;
end;

procedure TVarObjectList.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{F1BE4603-A012-11D2-BE58-0000E8D4216C}';
    IntfIID:   '{F1BE4602-A012-11D2-BE58-0000E8D4216C}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TVarObjectList.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IVarObjectList;
  end;
end;

procedure TVarObjectList.ConnectTo(svrIntf: IVarObjectList);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TVarObjectList.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TVarObjectList.GetDefaultInterface: IVarObjectList;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TVarObjectList.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TVarObjectListProperties.Create(Self);
{$ENDIF}
end;

destructor TVarObjectList.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TVarObjectList.GetServerProperties: TVarObjectListProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TVarObjectList.Get_Item(Index: Integer): Integer;
begin
    Result := DefaultInterface.Item[Index];
end;

function TVarObjectList.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TVarObjectList.Get__NewEnum: IUnknown;
begin
    Result := DefaultInterface._NewEnum;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TVarObjectListProperties.Create(AServer: TVarObjectList);
begin
  inherited Create;
  FServer := AServer;
end;

function TVarObjectListProperties.GetDefaultInterface: IVarObjectList;
begin
  Result := FServer.DefaultInterface;
end;

function TVarObjectListProperties.Get_Item(Index: Integer): Integer;
begin
    Result := DefaultInterface.Item[Index];
end;

function TVarObjectListProperties.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TVarObjectListProperties.Get__NewEnum: IUnknown;
begin
    Result := DefaultInterface._NewEnum;
end;

{$ENDIF}

class function CoLabelObject.Create: ILabelObject;
begin
  Result := CreateComObject(CLASS_LabelObject) as ILabelObject;
end;

class function CoLabelObject.CreateRemote(const MachineName: string): ILabelObject;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LabelObject) as ILabelObject;
end;

procedure TLabelObject.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{5A2D8041-A8A4-11D2-A5D4-0040054349AF}';
    IntfIID:   '{5A2D8040-A8A4-11D2-A5D4-0040054349AF}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TLabelObject.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ILabelObject;
  end;
end;

procedure TLabelObject.ConnectTo(svrIntf: ILabelObject);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TLabelObject.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TLabelObject.GetDefaultInterface: ILabelObject;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TLabelObject.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TLabelObjectProperties.Create(Self);
{$ENDIF}
end;

destructor TLabelObject.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TLabelObject.GetServerProperties: TLabelObjectProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TLabelObject.Get_ObjType: Integer;
begin
    Result := DefaultInterface.ObjType;
end;

function TLabelObject.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

procedure TLabelObject.Set_Name(const Name: WideString);
  { Warning: The property Name has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Name := Name;
end;

function TLabelObject.Get_X: Integer;
begin
    Result := DefaultInterface.X;
end;

procedure TLabelObject.Set_X(X: Integer);
begin
  DefaultInterface.Set_X(X);
end;

function TLabelObject.Get_Y: Integer;
begin
    Result := DefaultInterface.Y;
end;

procedure TLabelObject.Set_Y(Y: Integer);
begin
  DefaultInterface.Set_Y(Y);
end;

function TLabelObject.Get_Width: Integer;
begin
    Result := DefaultInterface.Width;
end;

procedure TLabelObject.Set_Width(Width: Integer);
begin
  DefaultInterface.Set_Width(Width);
end;

function TLabelObject.Get_Height: Integer;
begin
    Result := DefaultInterface.Height;
end;

procedure TLabelObject.Set_Height(Height: Integer);
begin
  DefaultInterface.Set_Height(Height);
end;

function TLabelObject.Get_Rotation: Integer;
begin
    Result := DefaultInterface.Rotation;
end;

procedure TLabelObject.Set_Rotation(Rotation: Integer);
begin
  DefaultInterface.Set_Rotation(Rotation);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TLabelObjectProperties.Create(AServer: TLabelObject);
begin
  inherited Create;
  FServer := AServer;
end;

function TLabelObjectProperties.GetDefaultInterface: ILabelObject;
begin
  Result := FServer.DefaultInterface;
end;

function TLabelObjectProperties.Get_ObjType: Integer;
begin
    Result := DefaultInterface.ObjType;
end;

function TLabelObjectProperties.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

procedure TLabelObjectProperties.Set_Name(const Name: WideString);
  { Warning: The property Name has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Name := Name;
end;

function TLabelObjectProperties.Get_X: Integer;
begin
    Result := DefaultInterface.X;
end;

procedure TLabelObjectProperties.Set_X(X: Integer);
begin
  DefaultInterface.Set_X(X);
end;

function TLabelObjectProperties.Get_Y: Integer;
begin
    Result := DefaultInterface.Y;
end;

procedure TLabelObjectProperties.Set_Y(Y: Integer);
begin
  DefaultInterface.Set_Y(Y);
end;

function TLabelObjectProperties.Get_Width: Integer;
begin
    Result := DefaultInterface.Width;
end;

procedure TLabelObjectProperties.Set_Width(Width: Integer);
begin
  DefaultInterface.Set_Width(Width);
end;

function TLabelObjectProperties.Get_Height: Integer;
begin
    Result := DefaultInterface.Height;
end;

procedure TLabelObjectProperties.Set_Height(Height: Integer);
begin
  DefaultInterface.Set_Height(Height);
end;

function TLabelObjectProperties.Get_Rotation: Integer;
begin
    Result := DefaultInterface.Rotation;
end;

procedure TLabelObjectProperties.Set_Rotation(Rotation: Integer);
begin
  DefaultInterface.Set_Rotation(Rotation);
end;

{$ENDIF}

class function CoTextObj.Create: ITextObj;
begin
  Result := CreateComObject(CLASS_TextObj) as ITextObj;
end;

class function CoTextObj.CreateRemote(const MachineName: string): ITextObj;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TextObj) as ITextObj;
end;

procedure TTextObj.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{5A2D8045-A8A4-11D2-A5D4-0040054349AF}';
    IntfIID:   '{5A2D8044-A8A4-11D2-A5D4-0040054349AF}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TTextObj.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ITextObj;
  end;
end;

procedure TTextObj.ConnectTo(svrIntf: ITextObj);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TTextObj.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TTextObj.GetDefaultInterface: ITextObj;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TTextObj.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TTextObjProperties.Create(Self);
{$ENDIF}
end;

destructor TTextObj.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TTextObj.GetServerProperties: TTextObjProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TTextObj.Get_ObjType: Integer;
begin
    Result := DefaultInterface.ObjType;
end;

function TTextObj.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

procedure TTextObj.Set_Name(const Name: WideString);
  { Warning: The property Name has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Name := Name;
end;

function TTextObj.Get_X: Integer;
begin
    Result := DefaultInterface.X;
end;

procedure TTextObj.Set_X(X: Integer);
begin
  DefaultInterface.Set_X(X);
end;

function TTextObj.Get_Y: Integer;
begin
    Result := DefaultInterface.Y;
end;

procedure TTextObj.Set_Y(Y: Integer);
begin
  DefaultInterface.Set_Y(Y);
end;

function TTextObj.Get_Width: Integer;
begin
    Result := DefaultInterface.Width;
end;

procedure TTextObj.Set_Width(Width: Integer);
begin
  DefaultInterface.Set_Width(Width);
end;

function TTextObj.Get_Height: Integer;
begin
    Result := DefaultInterface.Height;
end;

procedure TTextObj.Set_Height(Height: Integer);
begin
  DefaultInterface.Set_Height(Height);
end;

function TTextObj.Get_Rotation: Integer;
begin
    Result := DefaultInterface.Rotation;
end;

procedure TTextObj.Set_Rotation(Rotation: Integer);
begin
  DefaultInterface.Set_Rotation(Rotation);
end;

function TTextObj.Get_IsVariable: WordBool;
begin
    Result := DefaultInterface.IsVariable;
end;

procedure TTextObj.Set_IsVariable(IsVariable: WordBool);
begin
  DefaultInterface.Set_IsVariable(IsVariable);
end;

function TTextObj.TextAttributes: ITextAttributes;
begin
  Result := DefaultInterface.TextAttributes;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TTextObjProperties.Create(AServer: TTextObj);
begin
  inherited Create;
  FServer := AServer;
end;

function TTextObjProperties.GetDefaultInterface: ITextObj;
begin
  Result := FServer.DefaultInterface;
end;

function TTextObjProperties.Get_ObjType: Integer;
begin
    Result := DefaultInterface.ObjType;
end;

function TTextObjProperties.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

procedure TTextObjProperties.Set_Name(const Name: WideString);
  { Warning: The property Name has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Name := Name;
end;

function TTextObjProperties.Get_X: Integer;
begin
    Result := DefaultInterface.X;
end;

procedure TTextObjProperties.Set_X(X: Integer);
begin
  DefaultInterface.Set_X(X);
end;

function TTextObjProperties.Get_Y: Integer;
begin
    Result := DefaultInterface.Y;
end;

procedure TTextObjProperties.Set_Y(Y: Integer);
begin
  DefaultInterface.Set_Y(Y);
end;

function TTextObjProperties.Get_Width: Integer;
begin
    Result := DefaultInterface.Width;
end;

procedure TTextObjProperties.Set_Width(Width: Integer);
begin
  DefaultInterface.Set_Width(Width);
end;

function TTextObjProperties.Get_Height: Integer;
begin
    Result := DefaultInterface.Height;
end;

procedure TTextObjProperties.Set_Height(Height: Integer);
begin
  DefaultInterface.Set_Height(Height);
end;

function TTextObjProperties.Get_Rotation: Integer;
begin
    Result := DefaultInterface.Rotation;
end;

procedure TTextObjProperties.Set_Rotation(Rotation: Integer);
begin
  DefaultInterface.Set_Rotation(Rotation);
end;

function TTextObjProperties.Get_IsVariable: WordBool;
begin
    Result := DefaultInterface.IsVariable;
end;

procedure TTextObjProperties.Set_IsVariable(IsVariable: WordBool);
begin
  DefaultInterface.Set_IsVariable(IsVariable);
end;

{$ENDIF}

class function CoRectObj.Create: IRectObj;
begin
  Result := CreateComObject(CLASS_RectObj) as IRectObj;
end;

class function CoRectObj.CreateRemote(const MachineName: string): IRectObj;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RectObj) as IRectObj;
end;

procedure TRectObj.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{708E2FC1-A975-11D2-A5D4-0040054349AF}';
    IntfIID:   '{708E2FC0-A975-11D2-A5D4-0040054349AF}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TRectObj.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IRectObj;
  end;
end;

procedure TRectObj.ConnectTo(svrIntf: IRectObj);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TRectObj.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TRectObj.GetDefaultInterface: IRectObj;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TRectObj.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TRectObjProperties.Create(Self);
{$ENDIF}
end;

destructor TRectObj.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TRectObj.GetServerProperties: TRectObjProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TRectObj.Get_ObjType: Integer;
begin
    Result := DefaultInterface.ObjType;
end;

function TRectObj.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

procedure TRectObj.Set_Name(const Name: WideString);
  { Warning: The property Name has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Name := Name;
end;

function TRectObj.Get_X: Integer;
begin
    Result := DefaultInterface.X;
end;

procedure TRectObj.Set_X(X: Integer);
begin
  DefaultInterface.Set_X(X);
end;

function TRectObj.Get_Y: Integer;
begin
    Result := DefaultInterface.Y;
end;

procedure TRectObj.Set_Y(Y: Integer);
begin
  DefaultInterface.Set_Y(Y);
end;

function TRectObj.Get_Width: Integer;
begin
    Result := DefaultInterface.Width;
end;

procedure TRectObj.Set_Width(Width: Integer);
begin
  DefaultInterface.Set_Width(Width);
end;

function TRectObj.Get_Height: Integer;
begin
    Result := DefaultInterface.Height;
end;

procedure TRectObj.Set_Height(Height: Integer);
begin
  DefaultInterface.Set_Height(Height);
end;

function TRectObj.Get_Rotation: Integer;
begin
    Result := DefaultInterface.Rotation;
end;

procedure TRectObj.Set_Rotation(Rotation: Integer);
begin
  DefaultInterface.Set_Rotation(Rotation);
end;

function TRectObj.Get_bFilled: WordBool;
begin
    Result := DefaultInterface.bFilled;
end;

procedure TRectObj.Set_bFilled(Value: WordBool);
begin
  DefaultInterface.Set_bFilled(Value);
end;

function TRectObj.Get_Border: Integer;
begin
    Result := DefaultInterface.Border;
end;

procedure TRectObj.Set_Border(Value: Integer);
begin
  DefaultInterface.Set_Border(Value);
end;

function TRectObj.Get_BorderColor: Integer;
begin
    Result := DefaultInterface.BorderColor;
end;

procedure TRectObj.Set_BorderColor(Value: Integer);
begin
  DefaultInterface.Set_BorderColor(Value);
end;

function TRectObj.Get_FillColor: Integer;
begin
    Result := DefaultInterface.FillColor;
end;

procedure TRectObj.Set_FillColor(Value: Integer);
begin
  DefaultInterface.Set_FillColor(Value);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TRectObjProperties.Create(AServer: TRectObj);
begin
  inherited Create;
  FServer := AServer;
end;

function TRectObjProperties.GetDefaultInterface: IRectObj;
begin
  Result := FServer.DefaultInterface;
end;

function TRectObjProperties.Get_ObjType: Integer;
begin
    Result := DefaultInterface.ObjType;
end;

function TRectObjProperties.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

procedure TRectObjProperties.Set_Name(const Name: WideString);
  { Warning: The property Name has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Name := Name;
end;

function TRectObjProperties.Get_X: Integer;
begin
    Result := DefaultInterface.X;
end;

procedure TRectObjProperties.Set_X(X: Integer);
begin
  DefaultInterface.Set_X(X);
end;

function TRectObjProperties.Get_Y: Integer;
begin
    Result := DefaultInterface.Y;
end;

procedure TRectObjProperties.Set_Y(Y: Integer);
begin
  DefaultInterface.Set_Y(Y);
end;

function TRectObjProperties.Get_Width: Integer;
begin
    Result := DefaultInterface.Width;
end;

procedure TRectObjProperties.Set_Width(Width: Integer);
begin
  DefaultInterface.Set_Width(Width);
end;

function TRectObjProperties.Get_Height: Integer;
begin
    Result := DefaultInterface.Height;
end;

procedure TRectObjProperties.Set_Height(Height: Integer);
begin
  DefaultInterface.Set_Height(Height);
end;

function TRectObjProperties.Get_Rotation: Integer;
begin
    Result := DefaultInterface.Rotation;
end;

procedure TRectObjProperties.Set_Rotation(Rotation: Integer);
begin
  DefaultInterface.Set_Rotation(Rotation);
end;

function TRectObjProperties.Get_bFilled: WordBool;
begin
    Result := DefaultInterface.bFilled;
end;

procedure TRectObjProperties.Set_bFilled(Value: WordBool);
begin
  DefaultInterface.Set_bFilled(Value);
end;

function TRectObjProperties.Get_Border: Integer;
begin
    Result := DefaultInterface.Border;
end;

procedure TRectObjProperties.Set_Border(Value: Integer);
begin
  DefaultInterface.Set_Border(Value);
end;

function TRectObjProperties.Get_BorderColor: Integer;
begin
    Result := DefaultInterface.BorderColor;
end;

procedure TRectObjProperties.Set_BorderColor(Value: Integer);
begin
  DefaultInterface.Set_BorderColor(Value);
end;

function TRectObjProperties.Get_FillColor: Integer;
begin
    Result := DefaultInterface.FillColor;
end;

procedure TRectObjProperties.Set_FillColor(Value: Integer);
begin
  DefaultInterface.Set_FillColor(Value);
end;

{$ENDIF}

class function CoLineObj.Create: ILineObj;
begin
  Result := CreateComObject(CLASS_LineObj) as ILineObj;
end;

class function CoLineObj.CreateRemote(const MachineName: string): ILineObj;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LineObj) as ILineObj;
end;

procedure TLineObj.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{247905C1-AA37-11D2-A5D4-0040054349AF}';
    IntfIID:   '{247905C0-AA37-11D2-A5D4-0040054349AF}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TLineObj.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ILineObj;
  end;
end;

procedure TLineObj.ConnectTo(svrIntf: ILineObj);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TLineObj.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TLineObj.GetDefaultInterface: ILineObj;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TLineObj.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TLineObjProperties.Create(Self);
{$ENDIF}
end;

destructor TLineObj.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TLineObj.GetServerProperties: TLineObjProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TLineObj.Get_ObjType: Integer;
begin
    Result := DefaultInterface.ObjType;
end;

function TLineObj.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

procedure TLineObj.Set_Name(const Name: WideString);
  { Warning: The property Name has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Name := Name;
end;

function TLineObj.Get_X: Integer;
begin
    Result := DefaultInterface.X;
end;

procedure TLineObj.Set_X(X: Integer);
begin
  DefaultInterface.Set_X(X);
end;

function TLineObj.Get_Y: Integer;
begin
    Result := DefaultInterface.Y;
end;

procedure TLineObj.Set_Y(Y: Integer);
begin
  DefaultInterface.Set_Y(Y);
end;

function TLineObj.Get_Width: Integer;
begin
    Result := DefaultInterface.Width;
end;

procedure TLineObj.Set_Width(Width: Integer);
begin
  DefaultInterface.Set_Width(Width);
end;

function TLineObj.Get_Height: Integer;
begin
    Result := DefaultInterface.Height;
end;

procedure TLineObj.Set_Height(Height: Integer);
begin
  DefaultInterface.Set_Height(Height);
end;

function TLineObj.Get_Rotation: Integer;
begin
    Result := DefaultInterface.Rotation;
end;

procedure TLineObj.Set_Rotation(Rotation: Integer);
begin
  DefaultInterface.Set_Rotation(Rotation);
end;

function TLineObj.Get_Length: Integer;
begin
    Result := DefaultInterface.Length;
end;

procedure TLineObj.Set_Length(Value: Integer);
begin
  DefaultInterface.Set_Length(Value);
end;

function TLineObj.Get_Orientation: Integer;
begin
    Result := DefaultInterface.Orientation;
end;

procedure TLineObj.Set_Orientation(Value: Integer);
begin
  DefaultInterface.Set_Orientation(Value);
end;

function TLineObj.Get_Thickness: Integer;
begin
    Result := DefaultInterface.Thickness;
end;

procedure TLineObj.Set_Thickness(Value: Integer);
begin
  DefaultInterface.Set_Thickness(Value);
end;

function TLineObj.Get_LineColor: Integer;
begin
    Result := DefaultInterface.LineColor;
end;

procedure TLineObj.Set_LineColor(Value: Integer);
begin
  DefaultInterface.Set_LineColor(Value);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TLineObjProperties.Create(AServer: TLineObj);
begin
  inherited Create;
  FServer := AServer;
end;

function TLineObjProperties.GetDefaultInterface: ILineObj;
begin
  Result := FServer.DefaultInterface;
end;

function TLineObjProperties.Get_ObjType: Integer;
begin
    Result := DefaultInterface.ObjType;
end;

function TLineObjProperties.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

procedure TLineObjProperties.Set_Name(const Name: WideString);
  { Warning: The property Name has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Name := Name;
end;

function TLineObjProperties.Get_X: Integer;
begin
    Result := DefaultInterface.X;
end;

procedure TLineObjProperties.Set_X(X: Integer);
begin
  DefaultInterface.Set_X(X);
end;

function TLineObjProperties.Get_Y: Integer;
begin
    Result := DefaultInterface.Y;
end;

procedure TLineObjProperties.Set_Y(Y: Integer);
begin
  DefaultInterface.Set_Y(Y);
end;

function TLineObjProperties.Get_Width: Integer;
begin
    Result := DefaultInterface.Width;
end;

procedure TLineObjProperties.Set_Width(Width: Integer);
begin
  DefaultInterface.Set_Width(Width);
end;

function TLineObjProperties.Get_Height: Integer;
begin
    Result := DefaultInterface.Height;
end;

procedure TLineObjProperties.Set_Height(Height: Integer);
begin
  DefaultInterface.Set_Height(Height);
end;

function TLineObjProperties.Get_Rotation: Integer;
begin
    Result := DefaultInterface.Rotation;
end;

procedure TLineObjProperties.Set_Rotation(Rotation: Integer);
begin
  DefaultInterface.Set_Rotation(Rotation);
end;

function TLineObjProperties.Get_Length: Integer;
begin
    Result := DefaultInterface.Length;
end;

procedure TLineObjProperties.Set_Length(Value: Integer);
begin
  DefaultInterface.Set_Length(Value);
end;

function TLineObjProperties.Get_Orientation: Integer;
begin
    Result := DefaultInterface.Orientation;
end;

procedure TLineObjProperties.Set_Orientation(Value: Integer);
begin
  DefaultInterface.Set_Orientation(Value);
end;

function TLineObjProperties.Get_Thickness: Integer;
begin
    Result := DefaultInterface.Thickness;
end;

procedure TLineObjProperties.Set_Thickness(Value: Integer);
begin
  DefaultInterface.Set_Thickness(Value);
end;

function TLineObjProperties.Get_LineColor: Integer;
begin
    Result := DefaultInterface.LineColor;
end;

procedure TLineObjProperties.Set_LineColor(Value: Integer);
begin
  DefaultInterface.Set_LineColor(Value);
end;

{$ENDIF}

class function CoBarCodeObj.Create: IBarCodeObj;
begin
  Result := CreateComObject(CLASS_BarCodeObj) as IBarCodeObj;
end;

class function CoBarCodeObj.CreateRemote(const MachineName: string): IBarCodeObj;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BarCodeObj) as IBarCodeObj;
end;

procedure TBarCodeObj.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{247905C3-AA37-11D2-A5D4-0040054349AF}';
    IntfIID:   '{247905C2-AA37-11D2-A5D4-0040054349AF}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TBarCodeObj.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBarCodeObj;
  end;
end;

procedure TBarCodeObj.ConnectTo(svrIntf: IBarCodeObj);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TBarCodeObj.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TBarCodeObj.GetDefaultInterface: IBarCodeObj;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TBarCodeObj.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TBarCodeObjProperties.Create(Self);
{$ENDIF}
end;

destructor TBarCodeObj.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TBarCodeObj.GetServerProperties: TBarCodeObjProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TBarCodeObj.Get_ObjType: Integer;
begin
    Result := DefaultInterface.ObjType;
end;

function TBarCodeObj.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

procedure TBarCodeObj.Set_Name(const Name: WideString);
  { Warning: The property Name has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Name := Name;
end;

function TBarCodeObj.Get_X: Integer;
begin
    Result := DefaultInterface.X;
end;

procedure TBarCodeObj.Set_X(X: Integer);
begin
  DefaultInterface.Set_X(X);
end;

function TBarCodeObj.Get_Y: Integer;
begin
    Result := DefaultInterface.Y;
end;

procedure TBarCodeObj.Set_Y(Y: Integer);
begin
  DefaultInterface.Set_Y(Y);
end;

function TBarCodeObj.Get_Width: Integer;
begin
    Result := DefaultInterface.Width;
end;

procedure TBarCodeObj.Set_Width(Width: Integer);
begin
  DefaultInterface.Set_Width(Width);
end;

function TBarCodeObj.Get_Height: Integer;
begin
    Result := DefaultInterface.Height;
end;

procedure TBarCodeObj.Set_Height(Height: Integer);
begin
  DefaultInterface.Set_Height(Height);
end;

function TBarCodeObj.Get_Rotation: Integer;
begin
    Result := DefaultInterface.Rotation;
end;

procedure TBarCodeObj.Set_Rotation(Rotation: Integer);
begin
  DefaultInterface.Set_Rotation(Rotation);
end;

function TBarCodeObj.Get_Text: WideString;
begin
    Result := DefaultInterface.Text;
end;

procedure TBarCodeObj.Set_Text(const Text: WideString);
  { Warning: The property Text has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Text := Text;
end;

function TBarCodeObj.Get_Font: WideString;
begin
    Result := DefaultInterface.Font;
end;

procedure TBarCodeObj.Set_Font(const Font: WideString);
  { Warning: The property Font has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Font := Font;
end;

function TBarCodeObj.Get_TextPos: Integer;
begin
    Result := DefaultInterface.TextPos;
end;

procedure TBarCodeObj.Set_TextPos(TextPos: Integer);
begin
  DefaultInterface.Set_TextPos(TextPos);
end;

function TBarCodeObj.Get_BCType: Integer;
begin
    Result := DefaultInterface.BCType;
end;

procedure TBarCodeObj.Set_BCType(BCType: Integer);
begin
  DefaultInterface.Set_BCType(BCType);
end;

function TBarCodeObj.Get_Size: Integer;
begin
    Result := DefaultInterface.Size;
end;

procedure TBarCodeObj.Set_Size(Size: Integer);
begin
  DefaultInterface.Set_Size(Size);
end;

function TBarCodeObj.Get_Justify: Integer;
begin
    Result := DefaultInterface.Justify;
end;

procedure TBarCodeObj.Set_Justify(Justify: Integer);
begin
  DefaultInterface.Set_Justify(Justify);
end;

function TBarCodeObj.Get_Link: Integer;
begin
    Result := DefaultInterface.Link;
end;

procedure TBarCodeObj.Set_Link(Link: Integer);
begin
  DefaultInterface.Set_Link(Link);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TBarCodeObjProperties.Create(AServer: TBarCodeObj);
begin
  inherited Create;
  FServer := AServer;
end;

function TBarCodeObjProperties.GetDefaultInterface: IBarCodeObj;
begin
  Result := FServer.DefaultInterface;
end;

function TBarCodeObjProperties.Get_ObjType: Integer;
begin
    Result := DefaultInterface.ObjType;
end;

function TBarCodeObjProperties.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

procedure TBarCodeObjProperties.Set_Name(const Name: WideString);
  { Warning: The property Name has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Name := Name;
end;

function TBarCodeObjProperties.Get_X: Integer;
begin
    Result := DefaultInterface.X;
end;

procedure TBarCodeObjProperties.Set_X(X: Integer);
begin
  DefaultInterface.Set_X(X);
end;

function TBarCodeObjProperties.Get_Y: Integer;
begin
    Result := DefaultInterface.Y;
end;

procedure TBarCodeObjProperties.Set_Y(Y: Integer);
begin
  DefaultInterface.Set_Y(Y);
end;

function TBarCodeObjProperties.Get_Width: Integer;
begin
    Result := DefaultInterface.Width;
end;

procedure TBarCodeObjProperties.Set_Width(Width: Integer);
begin
  DefaultInterface.Set_Width(Width);
end;

function TBarCodeObjProperties.Get_Height: Integer;
begin
    Result := DefaultInterface.Height;
end;

procedure TBarCodeObjProperties.Set_Height(Height: Integer);
begin
  DefaultInterface.Set_Height(Height);
end;

function TBarCodeObjProperties.Get_Rotation: Integer;
begin
    Result := DefaultInterface.Rotation;
end;

procedure TBarCodeObjProperties.Set_Rotation(Rotation: Integer);
begin
  DefaultInterface.Set_Rotation(Rotation);
end;

function TBarCodeObjProperties.Get_Text: WideString;
begin
    Result := DefaultInterface.Text;
end;

procedure TBarCodeObjProperties.Set_Text(const Text: WideString);
  { Warning: The property Text has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Text := Text;
end;

function TBarCodeObjProperties.Get_Font: WideString;
begin
    Result := DefaultInterface.Font;
end;

procedure TBarCodeObjProperties.Set_Font(const Font: WideString);
  { Warning: The property Font has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Font := Font;
end;

function TBarCodeObjProperties.Get_TextPos: Integer;
begin
    Result := DefaultInterface.TextPos;
end;

procedure TBarCodeObjProperties.Set_TextPos(TextPos: Integer);
begin
  DefaultInterface.Set_TextPos(TextPos);
end;

function TBarCodeObjProperties.Get_BCType: Integer;
begin
    Result := DefaultInterface.BCType;
end;

procedure TBarCodeObjProperties.Set_BCType(BCType: Integer);
begin
  DefaultInterface.Set_BCType(BCType);
end;

function TBarCodeObjProperties.Get_Size: Integer;
begin
    Result := DefaultInterface.Size;
end;

procedure TBarCodeObjProperties.Set_Size(Size: Integer);
begin
  DefaultInterface.Set_Size(Size);
end;

function TBarCodeObjProperties.Get_Justify: Integer;
begin
    Result := DefaultInterface.Justify;
end;

procedure TBarCodeObjProperties.Set_Justify(Justify: Integer);
begin
  DefaultInterface.Set_Justify(Justify);
end;

function TBarCodeObjProperties.Get_Link: Integer;
begin
    Result := DefaultInterface.Link;
end;

procedure TBarCodeObjProperties.Set_Link(Link: Integer);
begin
  DefaultInterface.Set_Link(Link);
end;

{$ENDIF}

class function CoGraphicObj.Create: IGraphicObj;
begin
  Result := CreateComObject(CLASS_GraphicObj) as IGraphicObj;
end;

class function CoGraphicObj.CreateRemote(const MachineName: string): IGraphicObj;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_GraphicObj) as IGraphicObj;
end;

procedure TGraphicObj.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{247905C5-AA37-11D2-A5D4-0040054349AF}';
    IntfIID:   '{247905C4-AA37-11D2-A5D4-0040054349AF}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TGraphicObj.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IGraphicObj;
  end;
end;

procedure TGraphicObj.ConnectTo(svrIntf: IGraphicObj);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TGraphicObj.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TGraphicObj.GetDefaultInterface: IGraphicObj;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TGraphicObj.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TGraphicObjProperties.Create(Self);
{$ENDIF}
end;

destructor TGraphicObj.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TGraphicObj.GetServerProperties: TGraphicObjProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TGraphicObj.Get_ObjType: Integer;
begin
    Result := DefaultInterface.ObjType;
end;

function TGraphicObj.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

procedure TGraphicObj.Set_Name(const Name: WideString);
  { Warning: The property Name has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Name := Name;
end;

function TGraphicObj.Get_X: Integer;
begin
    Result := DefaultInterface.X;
end;

procedure TGraphicObj.Set_X(X: Integer);
begin
  DefaultInterface.Set_X(X);
end;

function TGraphicObj.Get_Y: Integer;
begin
    Result := DefaultInterface.Y;
end;

procedure TGraphicObj.Set_Y(Y: Integer);
begin
  DefaultInterface.Set_Y(Y);
end;

function TGraphicObj.Get_Width: Integer;
begin
    Result := DefaultInterface.Width;
end;

procedure TGraphicObj.Set_Width(Width: Integer);
begin
  DefaultInterface.Set_Width(Width);
end;

function TGraphicObj.Get_Height: Integer;
begin
    Result := DefaultInterface.Height;
end;

procedure TGraphicObj.Set_Height(Height: Integer);
begin
  DefaultInterface.Set_Height(Height);
end;

function TGraphicObj.Get_Rotation: Integer;
begin
    Result := DefaultInterface.Rotation;
end;

procedure TGraphicObj.Set_Rotation(Rotation: Integer);
begin
  DefaultInterface.Set_Rotation(Rotation);
end;

function TGraphicObj.Get_GraphicSource: Integer;
begin
    Result := DefaultInterface.GraphicSource;
end;

procedure TGraphicObj.Set_GraphicSource(Value: Integer);
begin
  DefaultInterface.Set_GraphicSource(Value);
end;

function TGraphicObj.Get_FileName: WideString;
begin
    Result := DefaultInterface.FileName;
end;

procedure TGraphicObj.Set_FileName(const Value: WideString);
  { Warning: The property FileName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FileName := Value;
end;

function TGraphicObj.Get_BitmapHandle: Integer;
begin
    Result := DefaultInterface.BitmapHandle;
end;

procedure TGraphicObj.Set_BitmapHandle(Value: Integer);
begin
  DefaultInterface.Set_BitmapHandle(Value);
end;

function TGraphicObj.Get_PaletteHandle: Integer;
begin
    Result := DefaultInterface.PaletteHandle;
end;

procedure TGraphicObj.Set_PaletteHandle(Value: Integer);
begin
  DefaultInterface.Set_PaletteHandle(Value);
end;

procedure TGraphicObj.Set_WindowHandle(Param1: Integer);
begin
  DefaultInterface.Set_WindowHandle(Param1);
end;

function TGraphicObj.Get_Border: Integer;
begin
    Result := DefaultInterface.Border;
end;

procedure TGraphicObj.Set_Border(Value: Integer);
begin
  DefaultInterface.Set_Border(Value);
end;

function TGraphicObj.Get_BorderColor: Integer;
begin
    Result := DefaultInterface.BorderColor;
end;

procedure TGraphicObj.Set_BorderColor(Value: Integer);
begin
  DefaultInterface.Set_BorderColor(Value);
end;

procedure TGraphicObj.GrabClipboard;
begin
  DefaultInterface.GrabClipboard;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TGraphicObjProperties.Create(AServer: TGraphicObj);
begin
  inherited Create;
  FServer := AServer;
end;

function TGraphicObjProperties.GetDefaultInterface: IGraphicObj;
begin
  Result := FServer.DefaultInterface;
end;

function TGraphicObjProperties.Get_ObjType: Integer;
begin
    Result := DefaultInterface.ObjType;
end;

function TGraphicObjProperties.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

procedure TGraphicObjProperties.Set_Name(const Name: WideString);
  { Warning: The property Name has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Name := Name;
end;

function TGraphicObjProperties.Get_X: Integer;
begin
    Result := DefaultInterface.X;
end;

procedure TGraphicObjProperties.Set_X(X: Integer);
begin
  DefaultInterface.Set_X(X);
end;

function TGraphicObjProperties.Get_Y: Integer;
begin
    Result := DefaultInterface.Y;
end;

procedure TGraphicObjProperties.Set_Y(Y: Integer);
begin
  DefaultInterface.Set_Y(Y);
end;

function TGraphicObjProperties.Get_Width: Integer;
begin
    Result := DefaultInterface.Width;
end;

procedure TGraphicObjProperties.Set_Width(Width: Integer);
begin
  DefaultInterface.Set_Width(Width);
end;

function TGraphicObjProperties.Get_Height: Integer;
begin
    Result := DefaultInterface.Height;
end;

procedure TGraphicObjProperties.Set_Height(Height: Integer);
begin
  DefaultInterface.Set_Height(Height);
end;

function TGraphicObjProperties.Get_Rotation: Integer;
begin
    Result := DefaultInterface.Rotation;
end;

procedure TGraphicObjProperties.Set_Rotation(Rotation: Integer);
begin
  DefaultInterface.Set_Rotation(Rotation);
end;

function TGraphicObjProperties.Get_GraphicSource: Integer;
begin
    Result := DefaultInterface.GraphicSource;
end;

procedure TGraphicObjProperties.Set_GraphicSource(Value: Integer);
begin
  DefaultInterface.Set_GraphicSource(Value);
end;

function TGraphicObjProperties.Get_FileName: WideString;
begin
    Result := DefaultInterface.FileName;
end;

procedure TGraphicObjProperties.Set_FileName(const Value: WideString);
  { Warning: The property FileName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FileName := Value;
end;

function TGraphicObjProperties.Get_BitmapHandle: Integer;
begin
    Result := DefaultInterface.BitmapHandle;
end;

procedure TGraphicObjProperties.Set_BitmapHandle(Value: Integer);
begin
  DefaultInterface.Set_BitmapHandle(Value);
end;

function TGraphicObjProperties.Get_PaletteHandle: Integer;
begin
    Result := DefaultInterface.PaletteHandle;
end;

procedure TGraphicObjProperties.Set_PaletteHandle(Value: Integer);
begin
  DefaultInterface.Set_PaletteHandle(Value);
end;

procedure TGraphicObjProperties.Set_WindowHandle(Param1: Integer);
begin
  DefaultInterface.Set_WindowHandle(Param1);
end;

function TGraphicObjProperties.Get_Border: Integer;
begin
    Result := DefaultInterface.Border;
end;

procedure TGraphicObjProperties.Set_Border(Value: Integer);
begin
  DefaultInterface.Set_Border(Value);
end;

function TGraphicObjProperties.Get_BorderColor: Integer;
begin
    Result := DefaultInterface.BorderColor;
end;

procedure TGraphicObjProperties.Set_BorderColor(Value: Integer);
begin
  DefaultInterface.Set_BorderColor(Value);
end;

{$ENDIF}

class function CoAddressObj.Create: IAddressObj;
begin
  Result := CreateComObject(CLASS_AddressObj) as IAddressObj;
end;

class function CoAddressObj.CreateRemote(const MachineName: string): IAddressObj;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AddressObj) as IAddressObj;
end;

procedure TAddressObj.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{247905C7-AA37-11D2-A5D4-0040054349AF}';
    IntfIID:   '{247905C6-AA37-11D2-A5D4-0040054349AF}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TAddressObj.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IAddressObj;
  end;
end;

procedure TAddressObj.ConnectTo(svrIntf: IAddressObj);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TAddressObj.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TAddressObj.GetDefaultInterface: IAddressObj;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TAddressObj.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TAddressObjProperties.Create(Self);
{$ENDIF}
end;

destructor TAddressObj.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TAddressObj.GetServerProperties: TAddressObjProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TAddressObj.Get_ObjType: Integer;
begin
    Result := DefaultInterface.ObjType;
end;

function TAddressObj.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

procedure TAddressObj.Set_Name(const Name: WideString);
  { Warning: The property Name has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Name := Name;
end;

function TAddressObj.Get_X: Integer;
begin
    Result := DefaultInterface.X;
end;

procedure TAddressObj.Set_X(X: Integer);
begin
  DefaultInterface.Set_X(X);
end;

function TAddressObj.Get_Y: Integer;
begin
    Result := DefaultInterface.Y;
end;

procedure TAddressObj.Set_Y(Y: Integer);
begin
  DefaultInterface.Set_Y(Y);
end;

function TAddressObj.Get_Width: Integer;
begin
    Result := DefaultInterface.Width;
end;

procedure TAddressObj.Set_Width(Width: Integer);
begin
  DefaultInterface.Set_Width(Width);
end;

function TAddressObj.Get_Height: Integer;
begin
    Result := DefaultInterface.Height;
end;

procedure TAddressObj.Set_Height(Height: Integer);
begin
  DefaultInterface.Set_Height(Height);
end;

function TAddressObj.Get_Rotation: Integer;
begin
    Result := DefaultInterface.Rotation;
end;

procedure TAddressObj.Set_Rotation(Rotation: Integer);
begin
  DefaultInterface.Set_Rotation(Rotation);
end;

function TAddressObj.Get_BarCodePosition: Integer;
begin
    Result := DefaultInterface.BarCodePosition;
end;

procedure TAddressObj.Set_BarCodePosition(BarCodePosition: Integer);
begin
  DefaultInterface.Set_BarCodePosition(BarCodePosition);
end;

function TAddressObj.Get_b9DigitOnly: WordBool;
begin
    Result := DefaultInterface.b9DigitOnly;
end;

procedure TAddressObj.Set_b9DigitOnly(b9DigitOnly: WordBool);
begin
  DefaultInterface.Set_b9DigitOnly(b9DigitOnly);
end;

function TAddressObj.TextAttributes: ITextAttributes;
begin
  Result := DefaultInterface.TextAttributes;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TAddressObjProperties.Create(AServer: TAddressObj);
begin
  inherited Create;
  FServer := AServer;
end;

function TAddressObjProperties.GetDefaultInterface: IAddressObj;
begin
  Result := FServer.DefaultInterface;
end;

function TAddressObjProperties.Get_ObjType: Integer;
begin
    Result := DefaultInterface.ObjType;
end;

function TAddressObjProperties.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

procedure TAddressObjProperties.Set_Name(const Name: WideString);
  { Warning: The property Name has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Name := Name;
end;

function TAddressObjProperties.Get_X: Integer;
begin
    Result := DefaultInterface.X;
end;

procedure TAddressObjProperties.Set_X(X: Integer);
begin
  DefaultInterface.Set_X(X);
end;

function TAddressObjProperties.Get_Y: Integer;
begin
    Result := DefaultInterface.Y;
end;

procedure TAddressObjProperties.Set_Y(Y: Integer);
begin
  DefaultInterface.Set_Y(Y);
end;

function TAddressObjProperties.Get_Width: Integer;
begin
    Result := DefaultInterface.Width;
end;

procedure TAddressObjProperties.Set_Width(Width: Integer);
begin
  DefaultInterface.Set_Width(Width);
end;

function TAddressObjProperties.Get_Height: Integer;
begin
    Result := DefaultInterface.Height;
end;

procedure TAddressObjProperties.Set_Height(Height: Integer);
begin
  DefaultInterface.Set_Height(Height);
end;

function TAddressObjProperties.Get_Rotation: Integer;
begin
    Result := DefaultInterface.Rotation;
end;

procedure TAddressObjProperties.Set_Rotation(Rotation: Integer);
begin
  DefaultInterface.Set_Rotation(Rotation);
end;

function TAddressObjProperties.Get_BarCodePosition: Integer;
begin
    Result := DefaultInterface.BarCodePosition;
end;

procedure TAddressObjProperties.Set_BarCodePosition(BarCodePosition: Integer);
begin
  DefaultInterface.Set_BarCodePosition(BarCodePosition);
end;

function TAddressObjProperties.Get_b9DigitOnly: WordBool;
begin
    Result := DefaultInterface.b9DigitOnly;
end;

procedure TAddressObjProperties.Set_b9DigitOnly(b9DigitOnly: WordBool);
begin
  DefaultInterface.Set_b9DigitOnly(b9DigitOnly);
end;

{$ENDIF}

class function CoCounterObj.Create: ICounterObj;
begin
  Result := CreateComObject(CLASS_CounterObj) as ICounterObj;
end;

class function CoCounterObj.CreateRemote(const MachineName: string): ICounterObj;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CounterObj) as ICounterObj;
end;

procedure TCounterObj.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{247905C9-AA37-11D2-A5D4-0040054349AF}';
    IntfIID:   '{247905C8-AA37-11D2-A5D4-0040054349AF}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCounterObj.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ICounterObj;
  end;
end;

procedure TCounterObj.ConnectTo(svrIntf: ICounterObj);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCounterObj.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCounterObj.GetDefaultInterface: ICounterObj;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TCounterObj.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCounterObjProperties.Create(Self);
{$ENDIF}
end;

destructor TCounterObj.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCounterObj.GetServerProperties: TCounterObjProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TCounterObj.Get_ObjType: Integer;
begin
    Result := DefaultInterface.ObjType;
end;

function TCounterObj.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

procedure TCounterObj.Set_Name(const Name: WideString);
  { Warning: The property Name has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Name := Name;
end;

function TCounterObj.Get_X: Integer;
begin
    Result := DefaultInterface.X;
end;

procedure TCounterObj.Set_X(X: Integer);
begin
  DefaultInterface.Set_X(X);
end;

function TCounterObj.Get_Y: Integer;
begin
    Result := DefaultInterface.Y;
end;

procedure TCounterObj.Set_Y(Y: Integer);
begin
  DefaultInterface.Set_Y(Y);
end;

function TCounterObj.Get_Width: Integer;
begin
    Result := DefaultInterface.Width;
end;

procedure TCounterObj.Set_Width(Width: Integer);
begin
  DefaultInterface.Set_Width(Width);
end;

function TCounterObj.Get_Height: Integer;
begin
    Result := DefaultInterface.Height;
end;

procedure TCounterObj.Set_Height(Height: Integer);
begin
  DefaultInterface.Set_Height(Height);
end;

function TCounterObj.Get_Rotation: Integer;
begin
    Result := DefaultInterface.Rotation;
end;

procedure TCounterObj.Set_Rotation(Rotation: Integer);
begin
  DefaultInterface.Set_Rotation(Rotation);
end;

function TCounterObj.Get_PreText: WideString;
begin
    Result := DefaultInterface.PreText;
end;

procedure TCounterObj.Set_PreText(const PreText: WideString);
  { Warning: The property PreText has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PreText := PreText;
end;

function TCounterObj.Get_PostText: WideString;
begin
    Result := DefaultInterface.PostText;
end;

procedure TCounterObj.Set_PostText(const PostText: WideString);
  { Warning: The property PostText has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PostText := PostText;
end;

function TCounterObj.Get_Start: Integer;
begin
    Result := DefaultInterface.Start;
end;

procedure TCounterObj.Set_Start(Start: Integer);
begin
  DefaultInterface.Set_Start(Start);
end;

function TCounterObj.Get_Current: Integer;
begin
    Result := DefaultInterface.Current;
end;

procedure TCounterObj.Set_Current(Current: Integer);
begin
  DefaultInterface.Set_Current(Current);
end;

function TCounterObj.Get_MinWidth: Integer;
begin
    Result := DefaultInterface.MinWidth;
end;

procedure TCounterObj.Set_MinWidth(MinWidth: Integer);
begin
  DefaultInterface.Set_MinWidth(MinWidth);
end;

function TCounterObj.Get_Increment: Integer;
begin
    Result := DefaultInterface.Increment;
end;

procedure TCounterObj.Set_Increment(Increment: Integer);
begin
  DefaultInterface.Set_Increment(Increment);
end;

function TCounterObj.Get_UseLeadingZeros: WordBool;
begin
    Result := DefaultInterface.UseLeadingZeros;
end;

procedure TCounterObj.Set_UseLeadingZeros(UseLeadingZeros: WordBool);
begin
  DefaultInterface.Set_UseLeadingZeros(UseLeadingZeros);
end;

function TCounterObj.TextAttributes: ITextAttributes;
begin
  Result := DefaultInterface.TextAttributes;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCounterObjProperties.Create(AServer: TCounterObj);
begin
  inherited Create;
  FServer := AServer;
end;

function TCounterObjProperties.GetDefaultInterface: ICounterObj;
begin
  Result := FServer.DefaultInterface;
end;

function TCounterObjProperties.Get_ObjType: Integer;
begin
    Result := DefaultInterface.ObjType;
end;

function TCounterObjProperties.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

procedure TCounterObjProperties.Set_Name(const Name: WideString);
  { Warning: The property Name has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Name := Name;
end;

function TCounterObjProperties.Get_X: Integer;
begin
    Result := DefaultInterface.X;
end;

procedure TCounterObjProperties.Set_X(X: Integer);
begin
  DefaultInterface.Set_X(X);
end;

function TCounterObjProperties.Get_Y: Integer;
begin
    Result := DefaultInterface.Y;
end;

procedure TCounterObjProperties.Set_Y(Y: Integer);
begin
  DefaultInterface.Set_Y(Y);
end;

function TCounterObjProperties.Get_Width: Integer;
begin
    Result := DefaultInterface.Width;
end;

procedure TCounterObjProperties.Set_Width(Width: Integer);
begin
  DefaultInterface.Set_Width(Width);
end;

function TCounterObjProperties.Get_Height: Integer;
begin
    Result := DefaultInterface.Height;
end;

procedure TCounterObjProperties.Set_Height(Height: Integer);
begin
  DefaultInterface.Set_Height(Height);
end;

function TCounterObjProperties.Get_Rotation: Integer;
begin
    Result := DefaultInterface.Rotation;
end;

procedure TCounterObjProperties.Set_Rotation(Rotation: Integer);
begin
  DefaultInterface.Set_Rotation(Rotation);
end;

function TCounterObjProperties.Get_PreText: WideString;
begin
    Result := DefaultInterface.PreText;
end;

procedure TCounterObjProperties.Set_PreText(const PreText: WideString);
  { Warning: The property PreText has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PreText := PreText;
end;

function TCounterObjProperties.Get_PostText: WideString;
begin
    Result := DefaultInterface.PostText;
end;

procedure TCounterObjProperties.Set_PostText(const PostText: WideString);
  { Warning: The property PostText has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PostText := PostText;
end;

function TCounterObjProperties.Get_Start: Integer;
begin
    Result := DefaultInterface.Start;
end;

procedure TCounterObjProperties.Set_Start(Start: Integer);
begin
  DefaultInterface.Set_Start(Start);
end;

function TCounterObjProperties.Get_Current: Integer;
begin
    Result := DefaultInterface.Current;
end;

procedure TCounterObjProperties.Set_Current(Current: Integer);
begin
  DefaultInterface.Set_Current(Current);
end;

function TCounterObjProperties.Get_MinWidth: Integer;
begin
    Result := DefaultInterface.MinWidth;
end;

procedure TCounterObjProperties.Set_MinWidth(MinWidth: Integer);
begin
  DefaultInterface.Set_MinWidth(MinWidth);
end;

function TCounterObjProperties.Get_Increment: Integer;
begin
    Result := DefaultInterface.Increment;
end;

procedure TCounterObjProperties.Set_Increment(Increment: Integer);
begin
  DefaultInterface.Set_Increment(Increment);
end;

function TCounterObjProperties.Get_UseLeadingZeros: WordBool;
begin
    Result := DefaultInterface.UseLeadingZeros;
end;

procedure TCounterObjProperties.Set_UseLeadingZeros(UseLeadingZeros: WordBool);
begin
  DefaultInterface.Set_UseLeadingZeros(UseLeadingZeros);
end;

{$ENDIF}

class function CoDateTimeObj.Create: IDateTimeObj;
begin
  Result := CreateComObject(CLASS_DateTimeObj) as IDateTimeObj;
end;

class function CoDateTimeObj.CreateRemote(const MachineName: string): IDateTimeObj;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DateTimeObj) as IDateTimeObj;
end;

procedure TDateTimeObj.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{247905CB-AA37-11D2-A5D4-0040054349AF}';
    IntfIID:   '{247905CA-AA37-11D2-A5D4-0040054349AF}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDateTimeObj.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IDateTimeObj;
  end;
end;

procedure TDateTimeObj.ConnectTo(svrIntf: IDateTimeObj);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDateTimeObj.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDateTimeObj.GetDefaultInterface: IDateTimeObj;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TDateTimeObj.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDateTimeObjProperties.Create(Self);
{$ENDIF}
end;

destructor TDateTimeObj.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TDateTimeObj.GetServerProperties: TDateTimeObjProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TDateTimeObj.Get_ObjType: Integer;
begin
    Result := DefaultInterface.ObjType;
end;

function TDateTimeObj.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

procedure TDateTimeObj.Set_Name(const Name: WideString);
  { Warning: The property Name has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Name := Name;
end;

function TDateTimeObj.Get_X: Integer;
begin
    Result := DefaultInterface.X;
end;

procedure TDateTimeObj.Set_X(X: Integer);
begin
  DefaultInterface.Set_X(X);
end;

function TDateTimeObj.Get_Y: Integer;
begin
    Result := DefaultInterface.Y;
end;

procedure TDateTimeObj.Set_Y(Y: Integer);
begin
  DefaultInterface.Set_Y(Y);
end;

function TDateTimeObj.Get_Width: Integer;
begin
    Result := DefaultInterface.Width;
end;

procedure TDateTimeObj.Set_Width(Width: Integer);
begin
  DefaultInterface.Set_Width(Width);
end;

function TDateTimeObj.Get_Height: Integer;
begin
    Result := DefaultInterface.Height;
end;

procedure TDateTimeObj.Set_Height(Height: Integer);
begin
  DefaultInterface.Set_Height(Height);
end;

function TDateTimeObj.Get_Rotation: Integer;
begin
    Result := DefaultInterface.Rotation;
end;

procedure TDateTimeObj.Set_Rotation(Rotation: Integer);
begin
  DefaultInterface.Set_Rotation(Rotation);
end;

function TDateTimeObj.Get_PreText: WideString;
begin
    Result := DefaultInterface.PreText;
end;

procedure TDateTimeObj.Set_PreText(const PreText: WideString);
  { Warning: The property PreText has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PreText := PreText;
end;

function TDateTimeObj.Get_PostText: WideString;
begin
    Result := DefaultInterface.PostText;
end;

procedure TDateTimeObj.Set_PostText(const PostText: WideString);
  { Warning: The property PostText has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PostText := PostText;
end;

function TDateTimeObj.Get_Format: Integer;
begin
    Result := DefaultInterface.Format;
end;

procedure TDateTimeObj.Set_Format(Format: Integer);
begin
  DefaultInterface.Set_Format(Format);
end;

function TDateTimeObj.Get_IncludeTime: WordBool;
begin
    Result := DefaultInterface.IncludeTime;
end;

procedure TDateTimeObj.Set_IncludeTime(IncludeTime: WordBool);
begin
  DefaultInterface.Set_IncludeTime(IncludeTime);
end;

function TDateTimeObj.Get_b24Hour: WordBool;
begin
    Result := DefaultInterface.b24Hour;
end;

procedure TDateTimeObj.Set_b24Hour(b24Hour: WordBool);
begin
  DefaultInterface.Set_b24Hour(b24Hour);
end;

function TDateTimeObj.TextAttributes: ITextAttributes;
begin
  Result := DefaultInterface.TextAttributes;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TDateTimeObjProperties.Create(AServer: TDateTimeObj);
begin
  inherited Create;
  FServer := AServer;
end;

function TDateTimeObjProperties.GetDefaultInterface: IDateTimeObj;
begin
  Result := FServer.DefaultInterface;
end;

function TDateTimeObjProperties.Get_ObjType: Integer;
begin
    Result := DefaultInterface.ObjType;
end;

function TDateTimeObjProperties.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

procedure TDateTimeObjProperties.Set_Name(const Name: WideString);
  { Warning: The property Name has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Name := Name;
end;

function TDateTimeObjProperties.Get_X: Integer;
begin
    Result := DefaultInterface.X;
end;

procedure TDateTimeObjProperties.Set_X(X: Integer);
begin
  DefaultInterface.Set_X(X);
end;

function TDateTimeObjProperties.Get_Y: Integer;
begin
    Result := DefaultInterface.Y;
end;

procedure TDateTimeObjProperties.Set_Y(Y: Integer);
begin
  DefaultInterface.Set_Y(Y);
end;

function TDateTimeObjProperties.Get_Width: Integer;
begin
    Result := DefaultInterface.Width;
end;

procedure TDateTimeObjProperties.Set_Width(Width: Integer);
begin
  DefaultInterface.Set_Width(Width);
end;

function TDateTimeObjProperties.Get_Height: Integer;
begin
    Result := DefaultInterface.Height;
end;

procedure TDateTimeObjProperties.Set_Height(Height: Integer);
begin
  DefaultInterface.Set_Height(Height);
end;

function TDateTimeObjProperties.Get_Rotation: Integer;
begin
    Result := DefaultInterface.Rotation;
end;

procedure TDateTimeObjProperties.Set_Rotation(Rotation: Integer);
begin
  DefaultInterface.Set_Rotation(Rotation);
end;

function TDateTimeObjProperties.Get_PreText: WideString;
begin
    Result := DefaultInterface.PreText;
end;

procedure TDateTimeObjProperties.Set_PreText(const PreText: WideString);
  { Warning: The property PreText has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PreText := PreText;
end;

function TDateTimeObjProperties.Get_PostText: WideString;
begin
    Result := DefaultInterface.PostText;
end;

procedure TDateTimeObjProperties.Set_PostText(const PostText: WideString);
  { Warning: The property PostText has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PostText := PostText;
end;

function TDateTimeObjProperties.Get_Format: Integer;
begin
    Result := DefaultInterface.Format;
end;

procedure TDateTimeObjProperties.Set_Format(Format: Integer);
begin
  DefaultInterface.Set_Format(Format);
end;

function TDateTimeObjProperties.Get_IncludeTime: WordBool;
begin
    Result := DefaultInterface.IncludeTime;
end;

procedure TDateTimeObjProperties.Set_IncludeTime(IncludeTime: WordBool);
begin
  DefaultInterface.Set_IncludeTime(IncludeTime);
end;

function TDateTimeObjProperties.Get_b24Hour: WordBool;
begin
    Result := DefaultInterface.b24Hour;
end;

procedure TDateTimeObjProperties.Set_b24Hour(b24Hour: WordBool);
begin
  DefaultInterface.Set_b24Hour(b24Hour);
end;

{$ENDIF}

class function CoCircularTextObj.Create: ICircularTextObj;
begin
  Result := CreateComObject(CLASS_CircularTextObj) as ICircularTextObj;
end;

class function CoCircularTextObj.CreateRemote(const MachineName: string): ICircularTextObj;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CircularTextObj) as ICircularTextObj;
end;

procedure TCircularTextObj.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{4A10B7D2-B9DF-498F-882F-5B7EF553E3EE}';
    IntfIID:   '{C7FE305D-A385-4491-8100-08541970D37F}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCircularTextObj.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ICircularTextObj;
  end;
end;

procedure TCircularTextObj.ConnectTo(svrIntf: ICircularTextObj);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCircularTextObj.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCircularTextObj.GetDefaultInterface: ICircularTextObj;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TCircularTextObj.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCircularTextObjProperties.Create(Self);
{$ENDIF}
end;

destructor TCircularTextObj.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCircularTextObj.GetServerProperties: TCircularTextObjProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TCircularTextObj.Get_IsVariable: WordBool;
begin
    Result := DefaultInterface.IsVariable;
end;

procedure TCircularTextObj.Set_IsVariable(Value: WordBool);
begin
  DefaultInterface.Set_IsVariable(Value);
end;

function TCircularTextObj.TextAttributes: ICircularTextAttributes;
begin
  Result := DefaultInterface.TextAttributes;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCircularTextObjProperties.Create(AServer: TCircularTextObj);
begin
  inherited Create;
  FServer := AServer;
end;

function TCircularTextObjProperties.GetDefaultInterface: ICircularTextObj;
begin
  Result := FServer.DefaultInterface;
end;

function TCircularTextObjProperties.Get_IsVariable: WordBool;
begin
    Result := DefaultInterface.IsVariable;
end;

procedure TCircularTextObjProperties.Set_IsVariable(Value: WordBool);
begin
  DefaultInterface.Set_IsVariable(Value);
end;

{$ENDIF}

class function CoTextAttributes.Create: ITextAttributes2;
begin
  Result := CreateComObject(CLASS_TextAttributes) as ITextAttributes2;
end;

class function CoTextAttributes.CreateRemote(const MachineName: string): ITextAttributes2;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TextAttributes) as ITextAttributes2;
end;

procedure TTextAttributes.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{5A2D8043-A8A4-11D2-A5D4-0040054349AF}';
    IntfIID:   '{5FCCEB09-361D-42A4-B692-A657961E294A}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TTextAttributes.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ITextAttributes2;
  end;
end;

procedure TTextAttributes.ConnectTo(svrIntf: ITextAttributes2);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TTextAttributes.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TTextAttributes.GetDefaultInterface: ITextAttributes2;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TTextAttributes.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TTextAttributesProperties.Create(Self);
{$ENDIF}
end;

destructor TTextAttributes.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TTextAttributes.GetServerProperties: TTextAttributesProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TTextAttributes.Get_Text: WideString;
begin
    Result := DefaultInterface.Text;
end;

procedure TTextAttributes.Set_Text(const Value: WideString);
  { Warning: The property Text has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Text := Value;
end;

function TTextAttributes.Get_Font_1: WideString;
begin
    Result := DefaultInterface.Font_1;
end;

procedure TTextAttributes.Set_Font_1(const Value: WideString);
  { Warning: The property Font_1 has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Font_1 := Value;
end;

function TTextAttributes.Get_Font_2: WideString;
begin
    Result := DefaultInterface.Font_2;
end;

procedure TTextAttributes.Set_Font_2(const Value: WideString);
  { Warning: The property Font_2 has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Font_2 := Value;
end;

function TTextAttributes.Get_Justify: Integer;
begin
    Result := DefaultInterface.Justify;
end;

procedure TTextAttributes.Set_Justify(Value: Integer);
begin
  DefaultInterface.Set_Justify(Value);
end;

function TTextAttributes.Get_VJustify: Integer;
begin
    Result := DefaultInterface.VJustify;
end;

procedure TTextAttributes.Set_VJustify(Value: Integer);
begin
  DefaultInterface.Set_VJustify(Value);
end;

function TTextAttributes.Get_Mirrored: WordBool;
begin
    Result := DefaultInterface.Mirrored;
end;

procedure TTextAttributes.Set_Mirrored(Value: WordBool);
begin
  DefaultInterface.Set_Mirrored(Value);
end;

function TTextAttributes.Get_Vertical: WordBool;
begin
    Result := DefaultInterface.Vertical;
end;

procedure TTextAttributes.Set_Vertical(Value: WordBool);
begin
  DefaultInterface.Set_Vertical(Value);
end;

function TTextAttributes.Get_TextColor: Integer;
begin
    Result := DefaultInterface.TextColor;
end;

procedure TTextAttributes.Set_TextColor(Value: Integer);
begin
  DefaultInterface.Set_TextColor(Value);
end;

function TTextAttributes.Get_BackGroundColor: Integer;
begin
    Result := DefaultInterface.BackGroundColor;
end;

procedure TTextAttributes.Set_BackGroundColor(Value: Integer);
begin
  DefaultInterface.Set_BackGroundColor(Value);
end;

function TTextAttributes.Get_RichText: WideString;
begin
    Result := DefaultInterface.RichText;
end;

procedure TTextAttributes.Set_RichText(const Value: WideString);
  { Warning: The property RichText has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.RichText := Value;
end;

function TTextAttributes.Get_ShadowEffect: WordBool;
begin
    Result := DefaultInterface.ShadowEffect;
end;

procedure TTextAttributes.Set_ShadowEffect(Value: WordBool);
begin
  DefaultInterface.Set_ShadowEffect(Value);
end;

function TTextAttributes.Get_OutlineEffect: WordBool;
begin
    Result := DefaultInterface.OutlineEffect;
end;

procedure TTextAttributes.Set_OutlineEffect(Value: WordBool);
begin
  DefaultInterface.Set_OutlineEffect(Value);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TTextAttributesProperties.Create(AServer: TTextAttributes);
begin
  inherited Create;
  FServer := AServer;
end;

function TTextAttributesProperties.GetDefaultInterface: ITextAttributes2;
begin
  Result := FServer.DefaultInterface;
end;

function TTextAttributesProperties.Get_Text: WideString;
begin
    Result := DefaultInterface.Text;
end;

procedure TTextAttributesProperties.Set_Text(const Value: WideString);
  { Warning: The property Text has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Text := Value;
end;

function TTextAttributesProperties.Get_Font_1: WideString;
begin
    Result := DefaultInterface.Font_1;
end;

procedure TTextAttributesProperties.Set_Font_1(const Value: WideString);
  { Warning: The property Font_1 has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Font_1 := Value;
end;

function TTextAttributesProperties.Get_Font_2: WideString;
begin
    Result := DefaultInterface.Font_2;
end;

procedure TTextAttributesProperties.Set_Font_2(const Value: WideString);
  { Warning: The property Font_2 has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Font_2 := Value;
end;

function TTextAttributesProperties.Get_Justify: Integer;
begin
    Result := DefaultInterface.Justify;
end;

procedure TTextAttributesProperties.Set_Justify(Value: Integer);
begin
  DefaultInterface.Set_Justify(Value);
end;

function TTextAttributesProperties.Get_VJustify: Integer;
begin
    Result := DefaultInterface.VJustify;
end;

procedure TTextAttributesProperties.Set_VJustify(Value: Integer);
begin
  DefaultInterface.Set_VJustify(Value);
end;

function TTextAttributesProperties.Get_Mirrored: WordBool;
begin
    Result := DefaultInterface.Mirrored;
end;

procedure TTextAttributesProperties.Set_Mirrored(Value: WordBool);
begin
  DefaultInterface.Set_Mirrored(Value);
end;

function TTextAttributesProperties.Get_Vertical: WordBool;
begin
    Result := DefaultInterface.Vertical;
end;

procedure TTextAttributesProperties.Set_Vertical(Value: WordBool);
begin
  DefaultInterface.Set_Vertical(Value);
end;

function TTextAttributesProperties.Get_TextColor: Integer;
begin
    Result := DefaultInterface.TextColor;
end;

procedure TTextAttributesProperties.Set_TextColor(Value: Integer);
begin
  DefaultInterface.Set_TextColor(Value);
end;

function TTextAttributesProperties.Get_BackGroundColor: Integer;
begin
    Result := DefaultInterface.BackGroundColor;
end;

procedure TTextAttributesProperties.Set_BackGroundColor(Value: Integer);
begin
  DefaultInterface.Set_BackGroundColor(Value);
end;

function TTextAttributesProperties.Get_RichText: WideString;
begin
    Result := DefaultInterface.RichText;
end;

procedure TTextAttributesProperties.Set_RichText(const Value: WideString);
  { Warning: The property RichText has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.RichText := Value;
end;

function TTextAttributesProperties.Get_ShadowEffect: WordBool;
begin
    Result := DefaultInterface.ShadowEffect;
end;

procedure TTextAttributesProperties.Set_ShadowEffect(Value: WordBool);
begin
  DefaultInterface.Set_ShadowEffect(Value);
end;

function TTextAttributesProperties.Get_OutlineEffect: WordBool;
begin
    Result := DefaultInterface.OutlineEffect;
end;

procedure TTextAttributesProperties.Set_OutlineEffect(Value: WordBool);
begin
  DefaultInterface.Set_OutlineEffect(Value);
end;

{$ENDIF}

class function CoCircularTextAttributes.Create: ICircularTextAttributes2;
begin
  Result := CreateComObject(CLASS_CircularTextAttributes) as ICircularTextAttributes2;
end;

class function CoCircularTextAttributes.CreateRemote(const MachineName: string): ICircularTextAttributes2;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CircularTextAttributes) as ICircularTextAttributes2;
end;

procedure TCircularTextAttributes.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{DFCE4DD9-6B9B-4CCF-9EA6-7CD5B324435B}';
    IntfIID:   '{08948F61-3396-42C9-9ACD-1D828D40BB14}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCircularTextAttributes.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ICircularTextAttributes2;
  end;
end;

procedure TCircularTextAttributes.ConnectTo(svrIntf: ICircularTextAttributes2);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCircularTextAttributes.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCircularTextAttributes.GetDefaultInterface: ICircularTextAttributes2;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TCircularTextAttributes.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCircularTextAttributesProperties.Create(Self);
{$ENDIF}
end;

destructor TCircularTextAttributes.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCircularTextAttributes.GetServerProperties: TCircularTextAttributesProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TCircularTextAttributes.Get_Text: WideString;
begin
    Result := DefaultInterface.Text;
end;

procedure TCircularTextAttributes.Set_Text(const Value: WideString);
  { Warning: The property Text has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Text := Value;
end;

function TCircularTextAttributes.Get_Font: WideString;
begin
    Result := DefaultInterface.Font;
end;

procedure TCircularTextAttributes.Set_Font(const Value: WideString);
  { Warning: The property Font has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Font := Value;
end;

function TCircularTextAttributes.Get_Mirrored: WordBool;
begin
    Result := DefaultInterface.Mirrored;
end;

procedure TCircularTextAttributes.Set_Mirrored(Value: WordBool);
begin
  DefaultInterface.Set_Mirrored(Value);
end;

function TCircularTextAttributes.Get_DisplayMode: Integer;
begin
    Result := DefaultInterface.DisplayMode;
end;

procedure TCircularTextAttributes.Set_DisplayMode(Value: Integer);
begin
  DefaultInterface.Set_DisplayMode(Value);
end;

function TCircularTextAttributes.Get_TextColor: Integer;
begin
    Result := DefaultInterface.TextColor;
end;

procedure TCircularTextAttributes.Set_TextColor(Value: Integer);
begin
  DefaultInterface.Set_TextColor(Value);
end;

function TCircularTextAttributes.Get_BackGroundColor: Integer;
begin
    Result := DefaultInterface.BackGroundColor;
end;

procedure TCircularTextAttributes.Set_BackGroundColor(Value: Integer);
begin
  DefaultInterface.Set_BackGroundColor(Value);
end;

function TCircularTextAttributes.Get_CenteredOnLabel: WordBool;
begin
    Result := DefaultInterface.CenteredOnLabel;
end;

procedure TCircularTextAttributes.Set_CenteredOnLabel(Value: WordBool);
begin
  DefaultInterface.Set_CenteredOnLabel(Value);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCircularTextAttributesProperties.Create(AServer: TCircularTextAttributes);
begin
  inherited Create;
  FServer := AServer;
end;

function TCircularTextAttributesProperties.GetDefaultInterface: ICircularTextAttributes2;
begin
  Result := FServer.DefaultInterface;
end;

function TCircularTextAttributesProperties.Get_Text: WideString;
begin
    Result := DefaultInterface.Text;
end;

procedure TCircularTextAttributesProperties.Set_Text(const Value: WideString);
  { Warning: The property Text has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Text := Value;
end;

function TCircularTextAttributesProperties.Get_Font: WideString;
begin
    Result := DefaultInterface.Font;
end;

procedure TCircularTextAttributesProperties.Set_Font(const Value: WideString);
  { Warning: The property Font has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Font := Value;
end;

function TCircularTextAttributesProperties.Get_Mirrored: WordBool;
begin
    Result := DefaultInterface.Mirrored;
end;

procedure TCircularTextAttributesProperties.Set_Mirrored(Value: WordBool);
begin
  DefaultInterface.Set_Mirrored(Value);
end;

function TCircularTextAttributesProperties.Get_DisplayMode: Integer;
begin
    Result := DefaultInterface.DisplayMode;
end;

procedure TCircularTextAttributesProperties.Set_DisplayMode(Value: Integer);
begin
  DefaultInterface.Set_DisplayMode(Value);
end;

function TCircularTextAttributesProperties.Get_TextColor: Integer;
begin
    Result := DefaultInterface.TextColor;
end;

procedure TCircularTextAttributesProperties.Set_TextColor(Value: Integer);
begin
  DefaultInterface.Set_TextColor(Value);
end;

function TCircularTextAttributesProperties.Get_BackGroundColor: Integer;
begin
    Result := DefaultInterface.BackGroundColor;
end;

procedure TCircularTextAttributesProperties.Set_BackGroundColor(Value: Integer);
begin
  DefaultInterface.Set_BackGroundColor(Value);
end;

function TCircularTextAttributesProperties.Get_CenteredOnLabel: WordBool;
begin
    Result := DefaultInterface.CenteredOnLabel;
end;

procedure TCircularTextAttributesProperties.Set_CenteredOnLabel(Value: WordBool);
begin
  DefaultInterface.Set_CenteredOnLabel(Value);
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TLabelEngine, TLabelList, TLblInfo, TPrintObject, 
    TObjectsAtEnum, TObjectList, TVarObjectList, TLabelObject, TTextObj, 
    TRectObj, TLineObj, TBarCodeObj, TGraphicObj, TAddressObj, 
    TCounterObj, TDateTimeObj, TCircularTextObj, TTextAttributes, TCircularTextAttributes]);
end;

end.
