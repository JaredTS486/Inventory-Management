unit Dymo_TLB;

{ This file contains pascal declarations imported from a type library.
  This file will be written during each import or refresh of the type
  library editor.  Changes to this file will be discarded during the
  refresh process. }

{ Dymo Library }
{ Version 1.0 }

interface

uses Windows, ActiveX, Classes, Graphics, OleCtrls, StdVCL;

const
  LIBID_Dymo: TGUID = '{1CE3FE80-8EBE-11D2-A3BA-0000E8D57653}';

const

{ Component class GUIDs }
  Class_LabelEngine: TGUID = '{1CE3FE82-8EBE-11D2-A3BA-0000E8D57653}';
  Class_LabelList: TGUID = '{1CE3FE84-8EBE-11D2-A3BA-0000E8D57653}';
  Class_LblInfo: TGUID = '{9603C363-8ECB-11D2-A3BA-0000E8D57653}';
  Class_PrintObject: TGUID = '{B0ADDB04-943F-11D2-A3BA-0000E8D57653}';
  Class_ObjectsAtEnum: TGUID = '{B0ADDB06-943F-11D2-A3BA-0000E8D57653}';
  Class_ObjectList: TGUID = '{F1BE4601-A012-11D2-BE58-0000E8D4216C}';
  Class_VarObjectList: TGUID = '{F1BE4603-A012-11D2-BE58-0000E8D4216C}';
  Class_LabelObject: TGUID = '{5A2D8041-A8A4-11D2-A5D4-0040054349AF}';
  Class_TextAttributes: TGUID = '{5A2D8043-A8A4-11D2-A5D4-0040054349AF}';
  Class_TextObj: TGUID = '{5A2D8045-A8A4-11D2-A5D4-0040054349AF}';
  Class_RectObj: TGUID = '{708E2FC1-A975-11D2-A5D4-0040054349AF}';
  Class_LineObj: TGUID = '{247905C1-AA37-11D2-A5D4-0040054349AF}';
  Class_BarCodeObj: TGUID = '{247905C3-AA37-11D2-A5D4-0040054349AF}';
  Class_GraphicObj: TGUID = '{247905C5-AA37-11D2-A5D4-0040054349AF}';
  Class_AddressObj: TGUID = '{247905C7-AA37-11D2-A5D4-0040054349AF}';
  Class_CounterObj: TGUID = '{247905C9-AA37-11D2-A5D4-0040054349AF}';
  Class_DateTimeObj: TGUID = '{247905CB-AA37-11D2-A5D4-0040054349AF}';

type

{ Forward declarations: Interfaces }
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

{ Forward declarations: CoClasses }
  LabelEngine = ILabelEngine;
  LabelList = ILabelList;
  LblInfo = ILblInfo;
  PrintObject = IPrintObject;
  ObjectsAtEnum = IObjectsAtEnum;
  ObjectList = IObjectList;
  VarObjectList = IVarObjectList;
  LabelObject = ILabelObject;
  TextAttributes = ITextAttributes;
  TextObj = ITextObj;
  RectObj = IRectObj;
  LineObj = ILineObj;
  BarCodeObj = IBarCodeObj;
  GraphicObj = IGraphicObj;
  AddressObj = IAddressObj;
  CounterObj = ICounterObj;
  DateTimeObj = IDateTimeObj;

{ Dispatch interface for LabelEngine Object }

  ILabelEngine = interface(IDispatch)
    ['{1CE3FE81-8EBE-11D2-A3BA-0000E8D57653}']
    function LabelNames: ILabelList; safecall;
    function LabelInfo: ILblInfo; safecall;
    function PrintObject: IPrintObject; safecall;
    procedure NewLabel(const LabelType: WideString); safecall;
    function OpenFile(const FileName: WideString): WordBool; safecall;
    function SaveFile(const FileName: WideString): WordBool; safecall;
    function PrintLabel(const DeviceName, Port: WideString; Quantity: Integer; bShowDialog: WordBool): WordBool; safecall;
    function Output(DC: Integer): WordBool; safecall;
    function OutputXY(DC, X, Y: Integer): WordBool; safecall;
    procedure DrawLabel(DC: Integer); safecall;
    procedure Set_Zoom(Value: Integer); safecall;
    procedure Set_Shadow(Value: WordBool); safecall;
    function ValidateBarCode(const Text: WideString; BCType: Integer): Integer; safecall;
    property Zoom: Integer write Set_Zoom;
    property Shadow: WordBool write Set_Shadow;
  end;

{ DispInterface declaration for Dual Interface ILabelEngine }

  ILabelEngineDisp = dispinterface
    ['{1CE3FE81-8EBE-11D2-A3BA-0000E8D57653}']
    function LabelNames: ILabelList; dispid 1;
    function LabelInfo: ILblInfo; dispid 2;
    function PrintObject: IPrintObject; dispid 3;
    procedure NewLabel(const LabelType: WideString); dispid 4;
    function OpenFile(const FileName: WideString): WordBool; dispid 5;
    function SaveFile(const FileName: WideString): WordBool; dispid 6;
    function PrintLabel(const DeviceName, Port: WideString; Quantity: Integer; bShowDialog: WordBool): WordBool; dispid 7;
    function Output(DC: Integer): WordBool; dispid 8;
    function OutputXY(DC, X, Y: Integer): WordBool; dispid 9;
    procedure DrawLabel(DC: Integer); dispid 10;
    property Zoom: Integer writeonly dispid 11;
    property Shadow: WordBool writeonly dispid 12;
    function ValidateBarCode(const Text: WideString; BCType: Integer): Integer; dispid 13;
  end;

{ Dispatch interface for LabelList Object }

  ILabelList = interface(IDispatch)
    ['{1CE3FE83-8EBE-11D2-A3BA-0000E8D57653}']
    function Get_Count: Integer; safecall;
    function Get_Item(Index: Integer): WideString; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Count: Integer read Get_Count;
    property Item[Index: Integer]: WideString read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

{ DispInterface declaration for Dual Interface ILabelList }

  ILabelListDisp = dispinterface
    ['{1CE3FE83-8EBE-11D2-A3BA-0000E8D57653}']
    property Count: Integer readonly dispid 1;
    property Item[Index: Integer]: WideString readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

{ Dispatch interface for LabelInfo Object }

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

{ DispInterface declaration for Dual Interface ILblInfo }

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

{ Dispatch interface for PrintObject Object }

  IPrintObject = interface(IDispatch)
    ['{B0ADDB03-943F-11D2-A3BA-0000E8D57653}']
    function ObjectsAt(X, Y: Integer): IObjectsAtEnum; safecall;
    function Objects: IObjectList; safecall;
    function LabelObject(Obj: Integer): ILabelObject; safecall;
    function ObjectAt(X, Y: Integer): Integer; safecall;
    function VarObjects: IVarObjectList; safecall;
    function FindObj(const Name: WideString): Integer; safecall;
    procedure BringToFront(Obj: Integer); safecall;
    procedure SendToBack(Obj: Integer); safecall;
    procedure Delete(Obj: Integer); safecall;
    function AddObject(ObjType: Integer; const Name: WideString; X, Y, Width, Height, Rotation: Integer): Integer; safecall;
    function CopyToClipboard(var Buf: Integer): WordBool; safecall;
    function PasteFromClipboard: WordBool; safecall;
  end;

{ DispInterface declaration for Dual Interface IPrintObject }

  IPrintObjectDisp = dispinterface
    ['{B0ADDB03-943F-11D2-A3BA-0000E8D57653}']
    function ObjectsAt(X, Y: Integer): IObjectsAtEnum; dispid 1;
    function Objects: IObjectList; dispid 2;
    function LabelObject(Obj: Integer): ILabelObject; dispid 3;
    function ObjectAt(X, Y: Integer): Integer; dispid 4;
    function VarObjects: IVarObjectList; dispid 5;
    function FindObj(const Name: WideString): Integer; dispid 6;
    procedure BringToFront(Obj: Integer); dispid 7;
    procedure SendToBack(Obj: Integer); dispid 8;
    procedure Delete(Obj: Integer); dispid 9;
    function AddObject(ObjType: Integer; const Name: WideString; X, Y, Width, Height, Rotation: Integer): Integer; dispid 10;
    function CopyToClipboard(var Buf: Integer): WordBool; dispid 11;
    function PasteFromClipboard: WordBool; dispid 12;
  end;

{ Dispatch interface for ObjectsAtEnum Object }

  IObjectsAtEnum = interface(IDispatch)
    ['{B0ADDB05-943F-11D2-A3BA-0000E8D57653}']
    function Get_Count: Integer; safecall;
    function Get_Item(Index: Integer): Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Count: Integer read Get_Count;
    property Item[Index: Integer]: Integer read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

{ DispInterface declaration for Dual Interface IObjectsAtEnum }

  IObjectsAtEnumDisp = dispinterface
    ['{B0ADDB05-943F-11D2-A3BA-0000E8D57653}']
    property Count: Integer readonly dispid 1;
    property Item[Index: Integer]: Integer readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

{ Dispatch interface for ObjectList Object }

  IObjectList = interface(IDispatch)
    ['{F1BE4600-A012-11D2-BE58-0000E8D4216C}']
    function Get_Item(Index: Integer): Integer; safecall;
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Item[Index: Integer]: Integer read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

{ DispInterface declaration for Dual Interface IObjectList }

  IObjectListDisp = dispinterface
    ['{F1BE4600-A012-11D2-BE58-0000E8D4216C}']
    property Item[Index: Integer]: Integer readonly dispid 0; default;
    property Count: Integer readonly dispid 1;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

{ Dispatch interface for VarObjectList Object }

  IVarObjectList = interface(IDispatch)
    ['{F1BE4602-A012-11D2-BE58-0000E8D4216C}']
    function Get_Item(Index: Integer): Integer; safecall;
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Item[Index: Integer]: Integer read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

{ DispInterface declaration for Dual Interface IVarObjectList }

  IVarObjectListDisp = dispinterface
    ['{F1BE4602-A012-11D2-BE58-0000E8D4216C}']
    property Item[Index: Integer]: Integer readonly dispid 0; default;
    property Count: Integer readonly dispid 1;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

{ Dispatch interface for LabelObject Object }

  ILabelObject = interface(IDispatch)
    ['{5A2D8040-A8A4-11D2-A5D4-0040054349AF}']
    function Get_ObjType: Integer; safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const Value: WideString); safecall;
    function Get_X: Integer; safecall;
    procedure Set_X(Value: Integer); safecall;
    function Get_Y: Integer; safecall;
    procedure Set_Y(Value: Integer); safecall;
    function Get_Width: Integer; safecall;
    procedure Set_Width(Value: Integer); safecall;
    function Get_Height: Integer; safecall;
    procedure Set_Height(Value: Integer); safecall;
    function Get_Rotation: Integer; safecall;
    procedure Set_Rotation(Value: Integer); safecall;
    property ObjType: Integer read Get_ObjType;
    property Name: WideString read Get_Name write Set_Name;
    property X: Integer read Get_X write Set_X;
    property Y: Integer read Get_Y write Set_Y;
    property Width: Integer read Get_Width write Set_Width;
    property Height: Integer read Get_Height write Set_Height;
    property Rotation: Integer read Get_Rotation write Set_Rotation;
  end;

{ DispInterface declaration for Dual Interface ILabelObject }

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

{ Dispatch interface for TextAttributes Object }

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

{ DispInterface declaration for Dual Interface ITextAttributes }

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

{ Dispatch interface for TextObj Object }

  ITextObj = interface(ILabelObject)
    ['{5A2D8044-A8A4-11D2-A5D4-0040054349AF}']
    function Get_IsVariable: WordBool; safecall;
    procedure Set_IsVariable(Value: WordBool); safecall;
    function TextAttributes: ITextAttributes; safecall;
    property IsVariable: WordBool read Get_IsVariable write Set_IsVariable;
  end;

{ DispInterface declaration for Dual Interface ITextObj }

  ITextObjDisp = dispinterface
    ['{5A2D8044-A8A4-11D2-A5D4-0040054349AF}']
    property ObjType: Integer readonly dispid 1;
    property Name: WideString dispid 2;
    property X: Integer dispid 3;
    property Y: Integer dispid 4;
    property Width: Integer dispid 5;
    property Height: Integer dispid 6;
    property Rotation: Integer dispid 7;
    property IsVariable: WordBool dispid 8;
    function TextAttributes: ITextAttributes; dispid 9;
  end;

{ Dispatch interface for RectObj Object }

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

{ DispInterface declaration for Dual Interface IRectObj }

  IRectObjDisp = dispinterface
    ['{708E2FC0-A975-11D2-A5D4-0040054349AF}']
    property ObjType: Integer readonly dispid 1;
    property Name: WideString dispid 2;
    property X: Integer dispid 3;
    property Y: Integer dispid 4;
    property Width: Integer dispid 5;
    property Height: Integer dispid 6;
    property Rotation: Integer dispid 7;
    property bFilled: WordBool dispid 8;
    property Border: Integer dispid 9;
    property BorderColor: Integer dispid 10;
    property FillColor: Integer dispid 11;
  end;

{ Dispatch interface for LineObj Object }

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

{ DispInterface declaration for Dual Interface ILineObj }

  ILineObjDisp = dispinterface
    ['{247905C0-AA37-11D2-A5D4-0040054349AF}']
    property ObjType: Integer readonly dispid 1;
    property Name: WideString dispid 2;
    property X: Integer dispid 3;
    property Y: Integer dispid 4;
    property Width: Integer dispid 5;
    property Height: Integer dispid 6;
    property Rotation: Integer dispid 7;
    property Length: Integer dispid 8;
    property Orientation: Integer dispid 9;
    property Thickness: Integer dispid 10;
    property LineColor: Integer dispid 11;
  end;

{ Dispatch interface for BarCodeObj Object }

  IBarCodeObj = interface(ILabelObject)
    ['{247905C2-AA37-11D2-A5D4-0040054349AF}']
    function Get_Text: WideString; safecall;
    procedure Set_Text(const Value: WideString); safecall;
    function Get_Font: WideString; safecall;
    procedure Set_Font(const Value: WideString); safecall;
    function Get_TextPos: Integer; safecall;
    procedure Set_TextPos(Value: Integer); safecall;
    function Get_BCType: Integer; safecall;
    procedure Set_BCType(Value: Integer); safecall;
    function Get_Size: Integer; safecall;
    procedure Set_Size(Value: Integer); safecall;
    function Get_Justify: Integer; safecall;
    procedure Set_Justify(Value: Integer); safecall;
    function Get_Link: Integer; safecall;
    procedure Set_Link(Value: Integer); safecall;
    property Text: WideString read Get_Text write Set_Text;
    property Font: WideString read Get_Font write Set_Font;
    property TextPos: Integer read Get_TextPos write Set_TextPos;
    property BCType: Integer read Get_BCType write Set_BCType;
    property Size: Integer read Get_Size write Set_Size;
    property Justify: Integer read Get_Justify write Set_Justify;
    property Link: Integer read Get_Link write Set_Link;
  end;

{ DispInterface declaration for Dual Interface IBarCodeObj }

  IBarCodeObjDisp = dispinterface
    ['{247905C2-AA37-11D2-A5D4-0040054349AF}']
    property ObjType: Integer readonly dispid 1;
    property Name: WideString dispid 2;
    property X: Integer dispid 3;
    property Y: Integer dispid 4;
    property Width: Integer dispid 5;
    property Height: Integer dispid 6;
    property Rotation: Integer dispid 7;
    property Text: WideString dispid 8;
    property Font: WideString dispid 9;
    property TextPos: Integer dispid 10;
    property BCType: Integer dispid 11;
    property Size: Integer dispid 12;
    property Justify: Integer dispid 13;
    property Link: Integer dispid 14;
  end;

{ Dispatch interface for GraphicObj Object }

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
    procedure Set_WindowHandle(Value: Integer); safecall;
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

{ DispInterface declaration for Dual Interface IGraphicObj }

  IGraphicObjDisp = dispinterface
    ['{247905C4-AA37-11D2-A5D4-0040054349AF}']
    property ObjType: Integer readonly dispid 1;
    property Name: WideString dispid 2;
    property X: Integer dispid 3;
    property Y: Integer dispid 4;
    property Width: Integer dispid 5;
    property Height: Integer dispid 6;
    property Rotation: Integer dispid 7;
    property GraphicSource: Integer dispid 8;
    property FileName: WideString dispid 9;
    property BitmapHandle: Integer dispid 10;
    property PaletteHandle: Integer dispid 11;
    property WindowHandle: Integer writeonly dispid 12;
    property Border: Integer dispid 13;
    property BorderColor: Integer dispid 14;
    procedure GrabClipboard; dispid 15;
  end;

{ Dispatch interface for AddressObj Object }

  IAddressObj = interface(ILabelObject)
    ['{247905C6-AA37-11D2-A5D4-0040054349AF}']
    function Get_BarCodePosition: Integer; safecall;
    procedure Set_BarCodePosition(Value: Integer); safecall;
    function Get_b9DigitOnly: WordBool; safecall;
    procedure Set_b9DigitOnly(Value: WordBool); safecall;
    function TextAttributes: ITextAttributes; safecall;
    property BarCodePosition: Integer read Get_BarCodePosition write Set_BarCodePosition;
    property b9DigitOnly: WordBool read Get_b9DigitOnly write Set_b9DigitOnly;
  end;

{ DispInterface declaration for Dual Interface IAddressObj }

  IAddressObjDisp = dispinterface
    ['{247905C6-AA37-11D2-A5D4-0040054349AF}']
    property ObjType: Integer readonly dispid 1;
    property Name: WideString dispid 2;
    property X: Integer dispid 3;
    property Y: Integer dispid 4;
    property Width: Integer dispid 5;
    property Height: Integer dispid 6;
    property Rotation: Integer dispid 7;
    property BarCodePosition: Integer dispid 8;
    property b9DigitOnly: WordBool dispid 9;
    function TextAttributes: ITextAttributes; dispid 10;
  end;

{ Dispatch interface for CounterObj Object }

  ICounterObj = interface(ILabelObject)
    ['{247905C8-AA37-11D2-A5D4-0040054349AF}']
    function Get_PreText: WideString; safecall;
    procedure Set_PreText(const Value: WideString); safecall;
    function Get_PostText: WideString; safecall;
    procedure Set_PostText(const Value: WideString); safecall;
    function Get_Start: Integer; safecall;
    procedure Set_Start(Value: Integer); safecall;
    function Get_Current: Integer; safecall;
    procedure Set_Current(Value: Integer); safecall;
    function Get_MinWidth: Integer; safecall;
    procedure Set_MinWidth(Value: Integer); safecall;
    function Get_Increment: Integer; safecall;
    procedure Set_Increment(Value: Integer); safecall;
    function Get_UseLeadingZeros: WordBool; safecall;
    procedure Set_UseLeadingZeros(Value: WordBool); safecall;
    function TextAttributes: ITextAttributes; safecall;
    property PreText: WideString read Get_PreText write Set_PreText;
    property PostText: WideString read Get_PostText write Set_PostText;
    property Start: Integer read Get_Start write Set_Start;
    property Current: Integer read Get_Current write Set_Current;
    property MinWidth: Integer read Get_MinWidth write Set_MinWidth;
    property Increment: Integer read Get_Increment write Set_Increment;
    property UseLeadingZeros: WordBool read Get_UseLeadingZeros write Set_UseLeadingZeros;
  end;

{ DispInterface declaration for Dual Interface ICounterObj }

  ICounterObjDisp = dispinterface
    ['{247905C8-AA37-11D2-A5D4-0040054349AF}']
    property ObjType: Integer readonly dispid 1;
    property Name: WideString dispid 2;
    property X: Integer dispid 3;
    property Y: Integer dispid 4;
    property Width: Integer dispid 5;
    property Height: Integer dispid 6;
    property Rotation: Integer dispid 7;
    property PreText: WideString dispid 8;
    property PostText: WideString dispid 9;
    property Start: Integer dispid 11;
    property Current: Integer dispid 12;
    property MinWidth: Integer dispid 13;
    property Increment: Integer dispid 14;
    property UseLeadingZeros: WordBool dispid 15;
    function TextAttributes: ITextAttributes; dispid 10;
  end;

{ Dispatch interface for DateTimeObj Object }

  IDateTimeObj = interface(ILabelObject)
    ['{247905CA-AA37-11D2-A5D4-0040054349AF}']
    function Get_PreText: WideString; safecall;
    procedure Set_PreText(const Value: WideString); safecall;
    function Get_PostText: WideString; safecall;
    procedure Set_PostText(const Value: WideString); safecall;
    function Get_Format: Integer; safecall;
    procedure Set_Format(Value: Integer); safecall;
    function Get_IncludeTime: WordBool; safecall;
    procedure Set_IncludeTime(Value: WordBool); safecall;
    function Get_b24Hour: WordBool; safecall;
    procedure Set_b24Hour(Value: WordBool); safecall;
    function TextAttributes: ITextAttributes; safecall;
    property PreText: WideString read Get_PreText write Set_PreText;
    property PostText: WideString read Get_PostText write Set_PostText;
    property Format: Integer read Get_Format write Set_Format;
    property IncludeTime: WordBool read Get_IncludeTime write Set_IncludeTime;
    property b24Hour: WordBool read Get_b24Hour write Set_b24Hour;
  end;

{ DispInterface declaration for Dual Interface IDateTimeObj }

  IDateTimeObjDisp = dispinterface
    ['{247905CA-AA37-11D2-A5D4-0040054349AF}']
    property ObjType: Integer readonly dispid 1;
    property Name: WideString dispid 2;
    property X: Integer dispid 3;
    property Y: Integer dispid 4;
    property Width: Integer dispid 5;
    property Height: Integer dispid 6;
    property Rotation: Integer dispid 7;
    property PreText: WideString dispid 8;
    property PostText: WideString dispid 9;
    property Format: Integer dispid 11;
    property IncludeTime: WordBool dispid 12;
    property b24Hour: WordBool dispid 13;
    function TextAttributes: ITextAttributes; dispid 10;
  end;

{ LabelEngineObject }

  CoLabelEngine = class
    class function Create: ILabelEngine;
    class function CreateRemote(const MachineName: string): ILabelEngine;
  end;

{ LabelListObject }

  CoLabelList = class
    class function Create: ILabelList;
    class function CreateRemote(const MachineName: string): ILabelList;
  end;

{ LabelInfoObject }

  CoLblInfo = class
    class function Create: ILblInfo;
    class function CreateRemote(const MachineName: string): ILblInfo;
  end;

{ PrintObjectObject }

  CoPrintObject = class
    class function Create: IPrintObject;
    class function CreateRemote(const MachineName: string): IPrintObject;
  end;

{ ObjectsAtEnumObject }

  CoObjectsAtEnum = class
    class function Create: IObjectsAtEnum;
    class function CreateRemote(const MachineName: string): IObjectsAtEnum;
  end;

{ ObjectListObject }

  CoObjectList = class
    class function Create: IObjectList;
    class function CreateRemote(const MachineName: string): IObjectList;
  end;

{ VarObjectListObject }

  CoVarObjectList = class
    class function Create: IVarObjectList;
    class function CreateRemote(const MachineName: string): IVarObjectList;
  end;

{ LabelObjectObject }

  CoLabelObject = class
    class function Create: ILabelObject;
    class function CreateRemote(const MachineName: string): ILabelObject;
  end;

{ TextPropertiesObject }

  CoTextAttributes = class
    class function Create: ITextAttributes;
    class function CreateRemote(const MachineName: string): ITextAttributes;
  end;

{ TextObjObject }

  CoTextObj = class
    class function Create: ITextObj;
    class function CreateRemote(const MachineName: string): ITextObj;
  end;

{ RectObjObject }

  CoRectObj = class
    class function Create: IRectObj;
    class function CreateRemote(const MachineName: string): IRectObj;
  end;

{ LineObjObject }

  CoLineObj = class
    class function Create: ILineObj;
    class function CreateRemote(const MachineName: string): ILineObj;
  end;

{ BarCodeObjObject }

  CoBarCodeObj = class
    class function Create: IBarCodeObj;
    class function CreateRemote(const MachineName: string): IBarCodeObj;
  end;

{ GraphicObjObject }

  CoGraphicObj = class
    class function Create: IGraphicObj;
    class function CreateRemote(const MachineName: string): IGraphicObj;
  end;

{ AddressObjObject }

  CoAddressObj = class
    class function Create: IAddressObj;
    class function CreateRemote(const MachineName: string): IAddressObj;
  end;

{ CounterObjObject }

  CoCounterObj = class
    class function Create: ICounterObj;
    class function CreateRemote(const MachineName: string): ICounterObj;
  end;

{ DateTimeObjObject }

  CoDateTimeObj = class
    class function Create: IDateTimeObj;
    class function CreateRemote(const MachineName: string): IDateTimeObj;
  end;



implementation

uses ComObj;

class function CoLabelEngine.Create: ILabelEngine;
begin
  Result := CreateComObject(Class_LabelEngine) as ILabelEngine;
end;

class function CoLabelEngine.CreateRemote(const MachineName: string): ILabelEngine;
begin
  Result := CreateRemoteComObject(MachineName, Class_LabelEngine) as ILabelEngine;
end;

class function CoLabelList.Create: ILabelList;
begin
  Result := CreateComObject(Class_LabelList) as ILabelList;
end;

class function CoLabelList.CreateRemote(const MachineName: string): ILabelList;
begin
  Result := CreateRemoteComObject(MachineName, Class_LabelList) as ILabelList;
end;

class function CoLblInfo.Create: ILblInfo;
begin
  Result := CreateComObject(Class_LblInfo) as ILblInfo;
end;

class function CoLblInfo.CreateRemote(const MachineName: string): ILblInfo;
begin
  Result := CreateRemoteComObject(MachineName, Class_LblInfo) as ILblInfo;
end;

class function CoPrintObject.Create: IPrintObject;
begin
  Result := CreateComObject(Class_PrintObject) as IPrintObject;
end;

class function CoPrintObject.CreateRemote(const MachineName: string): IPrintObject;
begin
  Result := CreateRemoteComObject(MachineName, Class_PrintObject) as IPrintObject;
end;

class function CoObjectsAtEnum.Create: IObjectsAtEnum;
begin
  Result := CreateComObject(Class_ObjectsAtEnum) as IObjectsAtEnum;
end;

class function CoObjectsAtEnum.CreateRemote(const MachineName: string): IObjectsAtEnum;
begin
  Result := CreateRemoteComObject(MachineName, Class_ObjectsAtEnum) as IObjectsAtEnum;
end;

class function CoObjectList.Create: IObjectList;
begin
  Result := CreateComObject(Class_ObjectList) as IObjectList;
end;

class function CoObjectList.CreateRemote(const MachineName: string): IObjectList;
begin
  Result := CreateRemoteComObject(MachineName, Class_ObjectList) as IObjectList;
end;

class function CoVarObjectList.Create: IVarObjectList;
begin
  Result := CreateComObject(Class_VarObjectList) as IVarObjectList;
end;

class function CoVarObjectList.CreateRemote(const MachineName: string): IVarObjectList;
begin
  Result := CreateRemoteComObject(MachineName, Class_VarObjectList) as IVarObjectList;
end;

class function CoLabelObject.Create: ILabelObject;
begin
  Result := CreateComObject(Class_LabelObject) as ILabelObject;
end;

class function CoLabelObject.CreateRemote(const MachineName: string): ILabelObject;
begin
  Result := CreateRemoteComObject(MachineName, Class_LabelObject) as ILabelObject;
end;

class function CoTextAttributes.Create: ITextAttributes;
begin
  Result := CreateComObject(Class_TextAttributes) as ITextAttributes;
end;

class function CoTextAttributes.CreateRemote(const MachineName: string): ITextAttributes;
begin
  Result := CreateRemoteComObject(MachineName, Class_TextAttributes) as ITextAttributes;
end;

class function CoTextObj.Create: ITextObj;
begin
  Result := CreateComObject(Class_TextObj) as ITextObj;
end;

class function CoTextObj.CreateRemote(const MachineName: string): ITextObj;
begin
  Result := CreateRemoteComObject(MachineName, Class_TextObj) as ITextObj;
end;

class function CoRectObj.Create: IRectObj;
begin
  Result := CreateComObject(Class_RectObj) as IRectObj;
end;

class function CoRectObj.CreateRemote(const MachineName: string): IRectObj;
begin
  Result := CreateRemoteComObject(MachineName, Class_RectObj) as IRectObj;
end;

class function CoLineObj.Create: ILineObj;
begin
  Result := CreateComObject(Class_LineObj) as ILineObj;
end;

class function CoLineObj.CreateRemote(const MachineName: string): ILineObj;
begin
  Result := CreateRemoteComObject(MachineName, Class_LineObj) as ILineObj;
end;

class function CoBarCodeObj.Create: IBarCodeObj;
begin
  Result := CreateComObject(Class_BarCodeObj) as IBarCodeObj;
end;

class function CoBarCodeObj.CreateRemote(const MachineName: string): IBarCodeObj;
begin
  Result := CreateRemoteComObject(MachineName, Class_BarCodeObj) as IBarCodeObj;
end;

class function CoGraphicObj.Create: IGraphicObj;
begin
  Result := CreateComObject(Class_GraphicObj) as IGraphicObj;
end;

class function CoGraphicObj.CreateRemote(const MachineName: string): IGraphicObj;
begin
  Result := CreateRemoteComObject(MachineName, Class_GraphicObj) as IGraphicObj;
end;

class function CoAddressObj.Create: IAddressObj;
begin
  Result := CreateComObject(Class_AddressObj) as IAddressObj;
end;

class function CoAddressObj.CreateRemote(const MachineName: string): IAddressObj;
begin
  Result := CreateRemoteComObject(MachineName, Class_AddressObj) as IAddressObj;
end;

class function CoCounterObj.Create: ICounterObj;
begin
  Result := CreateComObject(Class_CounterObj) as ICounterObj;
end;

class function CoCounterObj.CreateRemote(const MachineName: string): ICounterObj;
begin
  Result := CreateRemoteComObject(MachineName, Class_CounterObj) as ICounterObj;
end;

class function CoDateTimeObj.Create: IDateTimeObj;
begin
  Result := CreateComObject(Class_DateTimeObj) as IDateTimeObj;
end;

class function CoDateTimeObj.CreateRemote(const MachineName: string): IDateTimeObj;
begin
  Result := CreateRemoteComObject(MachineName, Class_DateTimeObj) as IDateTimeObj;
end;


end.
