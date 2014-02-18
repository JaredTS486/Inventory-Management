{*******************************************************************************
 MainFrm.pas: The main form of the application.
 Written 4/30/99 by Natalya Chernokozova

 This program is meant to demonstrate the methods used to communicate with
 the Dymo Label Software programs via DLL calls.

 This code was written and tested using Borland Delphi 3.0.

 Copyright 1999 Dymo-CoStar Corporation

 Permission to use, copy, modify, and distribute this software for any
 purpose and without fee is hereby granted.

*******************************************************************************}

unit MainFrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Printers,
  StdCtrls, ComObj, ExtCtrls, Grids, Menus, Buttons, Registry,
  ComCtrls, ToolWin, Lbltypes, LblFunctions, ImgList;

type
  TfmMain = class(TForm)
    lbLabels: TListBox;
    ScrollBox1: TScrollBox;
    Pad: TPaintBox;
    grdLabelInfo: TStringGrid;
    buOpen: TButton;
    buSave: TButton;
    dlgOpen: TOpenDialog;
    dlgSave: TSaveDialog;
    buPrint: TButton;
    txtZoom: TEdit;
    Label1: TLabel;
    chkShadow: TCheckBox;
    lbObjects: TListBox;
    buGetAll: TButton;
    buGetVar: TButton;
    popMenu: TPopupMenu;
    miGetObjectsAt: TMenuItem;
    miBringToFront: TMenuItem;
    miSendToBack: TMenuItem;
    miDelete: TMenuItem;
    miCopyToClipboard: TMenuItem;
    miPasteFromClipboard: TMenuItem;
    tbAddObj: TToolBar;
    ilAddObj: TImageList;
    tbAddress: TToolButton;
    tbCancel: TToolButton;
    tbText: TToolButton;
    tbGraphic: TToolButton;
    tbRectangle: TToolButton;
    tbVLine: TToolButton;
    tbHLine: TToolButton;
    tbBarCode: TToolButton;
    tbCounter: TToolButton;
    tbDateTime: TToolButton;
    dlgPrint: TPrintDialog;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Bevel2: TBevel;
    buCopy: TButton;
    buPaste: TButton;
    Bevel3: TBevel;
    buExit: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lbLabelsClick(Sender: TObject);
    procedure PadPaint(Sender: TObject);
    procedure buOpenClick(Sender: TObject);
    procedure buSaveClick(Sender: TObject);
    procedure buPrintClick(Sender: TObject);
    procedure txtZoomChange(Sender: TObject);
    procedure chkShadowClick(Sender: TObject);
    procedure buGetAllClick(Sender: TObject);
    procedure lbObjectsClick(Sender: TObject);
    procedure buGetVarClick(Sender: TObject);
    procedure miGetObjectsAtClick(Sender: TObject);
    procedure miBringToFrontClick(Sender: TObject);
    procedure miSendToBackClick(Sender: TObject);
    procedure miDeleteClick(Sender: TObject);
    procedure PadMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure tbAddressClick(Sender: TObject);
    procedure tbCancelClick(Sender: TObject);
    procedure buCopyClick(Sender: TObject);
    procedure buPasteClick(Sender: TObject);
    procedure buExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ReDrawLabel;
    procedure UpdateLabelInfo;
    procedure SetLabelModified (flModified: Boolean);
    function AddNewObject(X,Y: Integer):Integer;
  end;

var
  fmMain: TfmMain;  // Main form
  XXX, YYY,
  CurObjID: Integer;  // ID of current object

const
  AddObjCursor: TCursor = crHandPoint;

implementation

{$R *.DFM}

uses decl,frmObjInspector;

{*******************************************************************************
  The procedure is used to update Label Info grid.
*******************************************************************************}
procedure TfmMain.UpdateLabelInfo;
begin
  // fill in a TLabelInfo structure with information about the current label
  GetLabelInfo(@LabelInfo);
  Pad.Width := LabelInfo.BitmapSize.X;
  Pad.Height := LabelInfo.BitmapSize.Y;

  with grdLabelInfo do begin
    Cells[1,0] := StrPas(LabelInfo.LabelName);
    Cells[1,1] := StrPas(LabelInfo.PaperName);
    Cells[1,2] := IntToStr(LabelInfo.PaperSize.X);
    Cells[1,3] := IntToStr(LabelInfo.PaperSize.Y);
    Cells[1,4] := IntToStr(LabelInfo.BitmapSize.X);
    Cells[1,5] := IntToStr(LabelInfo.BitmapSize.Y);
    if IsModified
      then grdLabelInfo.Cells[1,6] := 'TRUE'
      else grdLabelInfo.Cells[1,6] := 'FALSE';
    Cells[1,7] := IntToStr(Longint(LabelInfo.LabelSize.X));
    Cells[1,8] := IntToStr(Longint(LabelInfo.LabelSize.Y));
  end;
end;

{*******************************************************************************
  This function is used to RePaint the current label layout
  and update object list.
*******************************************************************************}
procedure TfmMain.RedrawLabel;
begin
  // draw label
  Pad.Repaint;
  // fill object list by all objects
  buGetAllClick(Self);
end;

{*******************************************************************************
  This function is used to set or clear the current label's "modified" flag
  and update "Modified" cell in the LabelInfo grid.
*******************************************************************************}
procedure TfmMain.SetLabelModified (flModified: Boolean);
begin
  SetModified (flModified);
  if flModified
    then grdLabelInfo.Cells[1,6] := 'TRUE'
    else grdLabelInfo.Cells[1,6] := 'FALSE';
end;

procedure TfmMain.FormCreate(Sender: TObject);
begin
  with grdLabelInfo do begin
    ColWidths[0]:=70;
    ColWidths[1]:=132;
    Cells[0,0]:='LabelName';
    Cells[0,1]:='PaperName';
    Cells[0,2]:='PaperWidth';
    Cells[0,3]:='PaperHeight';
    Cells[0,4]:='BitmapWidth';
    Cells[0,5]:='BitmapHeight';
    Cells[0,6]:='Modified';
    Cells[0,7]:='LabelWidth';
    Cells[0,8]:='LabelHeight';
  end;

  Pad.Hint := 'Click for Object Properties' + #13 + 'RightClick for Tools';

  // get the label files directory from Registry
  with TRegistry.Create do begin
    RootKey := HKEY_CURRENT_USER;
    if OpenKey(sDirectoriesKey,FALSE) then begin
      LabelDirName := ReadString(sLabelDirName);
      CloseKey;
    end
    else LabelDirName := '';
  end;
  dlgSave.InitialDir := LabelDirName;
  dlgOpen.InitialDir := LabelDirName;
  
end;

procedure TfmMain.FormShow(Sender: TObject);
var
  i, LabelNamesCount, nBytes : Integer;
  LabelNamesList: PChar;
begin
  // get number of bytes required
  nBytes := GetLabelNames (nil, 0);
  // allocate a buffer for a string
  LabelNamesList := StrAlloc (nBytes);
  // fill in a buffer with the names of all Label Paper Names
  GetLabelNames(LabelNamesList, nBytes);
  // determine count of label names
  LabelNamesCount := (nBytes) div 64;
  // add each LabelName from collection to the Labels ListBox
  for i:= 0 to LabelNamesCount - 1  do
    lbLabels.Items.Add (StrPas(LabelNamesList+64*(i)));
  // dispose buffer
  StrDispose (LabelNamesList);
  lbLabels.ItemIndex := 0;
  // draw curent label
  RedrawLabel;
  UpdateLabelInfo;
end;

procedure TfmMain.lbLabelsClick(Sender: TObject);
var
  NewName : PChar;
  LabelType: String;
begin
  // determine label name selected in the Label ListBox
  LabelType := lbLabels.Items[lbLabels.ItemIndex];
  NewName := StrAlloc (Length(LabelType) + 1);
  StrPCopy (NewName, LabelType);
  // create a new label based on selected label name
  NewLabel (NewName);
  SetLabelModified (False);
  UpdateLabelInfo;
  StrDispose (NewName);
  // re-form ObjectNames Combo Box in Object Inspector
  fmObjInspector.ReFormLB(ChangeCurAttr);
  // draw new label
  RedrawLabel;
end;

procedure TfmMain.PadPaint(Sender: TObject);
begin
  // draw current label
  with Pad.Canvas do
  Begin
    Brush.Color := clBtnFace;
    Brush.Style := bsSolid;
    FillRect(ClientRect);
  End;
  DrawLabel(Pad.Canvas.Handle);
end;

procedure TfmMain.buOpenClick(Sender: TObject);
var
  Name : PChar;
begin
  // display standard open dialog
  if dlgOpen.Execute then begin
    // allocate a buffer for a null-terminated string
    Name := StrAlloc (Length(dlgOpen.FileName) + 1);
    StrPCopy(Name, dlgOpen.FileName);
    // open label file
    ReadLabelFile(Name);
    SetLabelModified (False);
    UpdateLabelInfo;
    // dispose buffer
    StrDispose (Name);
    // re-form ObjectNames Combo Box in Object Inspector
    fmObjInspector.ReFormLB(ChangeCurAttr);
    // draw newly loaded label
    ReDrawLabel;

    // show ObjectInspector
    if not fmObjInspector.Visible then fmObjInspector.Show;
  end;
end;

procedure TfmMain.buSaveClick(Sender: TObject);
var
  Name : PChar;
begin
  // display standard SaveAs dialog and save label file
  if dlgSave.Execute then begin
    // allocate a buffer for a null-terminated string
    Name := StrAlloc (Length(dlgSave.FileName) + 1);
    StrPCopy(Name, dlgSave.FileName);
    WriteLabelFile(Name);
    // dispose buffer
    StrDispose (Name);
    // draw newly loaded label
    ReDrawLabel;
  end;
end;

procedure TfmMain.buPrintClick(Sender: TObject);
var
  DeviceName, p: String;
  Ind: Integer;
  dn, prt : PChar;
begin
  // display standard Print dialog
  if dlgPrint.Execute then begin
    // get name of selected printer
    with Printer do p := Printers[PrinterIndex];
    // extract DeviceName and Port from one
    Ind := Pos(' on ', p);
    if Ind > 0
      then begin
        DeviceName := Copy (p, 1, Ind - 1);
        Delete (p, 1, Length (DeviceName) + 4);
      end
      else begin
        DeviceName := p;
        p := '';
      end;

      // copy Device and Port strings to a null-terminated strings
      dn := StrAlloc (Length(DeviceName) + 1);
      StrPCopy(dn, DeviceName);
      prt := StrAlloc (Length(p)+1);
      StrPCopy(prt, p);
      // print label
      PrintLabel(dn, prt, dlgPrint.Copies,True);
      // dispose strings
      StrDispose (dn);
      StrDispose (prt);
  end;
end;

procedure TfmMain.txtZoomChange(Sender: TObject);
begin
  try
    // change Zoom property
    SetZoom (StrToInt(txtZoom.Text));
    // redraw label with new zoom
    RedrawLabel;
    UpdateLabelInfo;
  except
  end;
end;

procedure TfmMain.chkShadowClick(Sender: TObject);
begin
  // change Shadow property
  SetShadow (chkShadow.Checked);
  // redraw label with new Shadow property
  RedrawLabel;
  UpdateLabelInfo;
end;

procedure TfmMain.buGetAllClick(Sender: TObject);
var
  Ind: Integer;
begin
  lbObjects.Clear;

  // scan objects collection and add ID of every object in the list
  for Ind := 1 to ObjectCount do
    lbObjects.Items.Add(IntToHex(Integer(POBJECTINFO(ObjectList + SizeOf(TOBJECTINFO)*(Ind - 1))^.ObjID),8));
end;

procedure TfmMain.lbObjectsClick(Sender: TObject);
begin
///if user clicked on some object ID in the list
// then display object properties
  with fmObjInspector do begin
     // get ID of selected object
     CurObjID := StrToInt('$'+lbObjects.Items[lbObjects.ItemIndex]);
     // pass ID of object to FillSettings procedure
     fmObjInspector.FillSettings(CurObjID);
     // activate the same object in the ObjNames Combo Box in ObjectInspector
     cbObjNames.ItemIndex := cbObjNames.Items.IndexOf(grAttr.Cells[1,1]);
     fmObjInspector.grAttr.Row := 0;
     fmObjInspector.paSBResize(self);
     // show ObjectInspector
     if not fmObjInspector.Visible then fmObjInspector.Show;
  end;
end;

procedure TfmMain.buGetVarClick(Sender: TObject);
var
  VarObjectList : PChar;
  nBytes, Ind, VarObjectCount: Integer;
begin
  lbObjects.Clear;
  // get number of bytes required
  nBytes := EnumVariableObjects (nil, 0);
  // get object count
  VarObjectCount := (nBytes) div SizeOf(TOBJECTINFO);
  // allocate a buffer for a null-terminated string
  VarObjectList := StrAlloc (nBytes + 1);
  // fill a buffer with Object Info structures
  EnumVariableObjects (VarObjectList, nBytes);

  // scan variable objects collection and add ID of every object in the list
  for Ind := 1 to VarObjectCount do
    lbObjects.Items.Add(IntToHex(Integer(POBJECTINFO(VarObjectList + SizeOf(TOBJECTINFO)*(Ind - 1))^.ObjID),8));

  StrDispose (VarObjectList);
end;

procedure TfmMain.miGetObjectsAtClick(Sender: TObject);
var
  Ind, nBytes, Count: Integer;
  ObjectsAtList: PChar;
begin
  lbObjects.Clear;
  // get number of bytes required
  nBytes := ObjectsAt (XXX, YYY, nil, 0);
  Count := (nBytes) div SizeOf (TOBJECTINFO);
  ObjectsAtList := StrAlloc (nBytes + 1);
  ObjectsAt (XXX, YYY, ObjectsAtList, nBytes);

  // for each object found at the point defined by XXX&YYY add its ID to the list
  for Ind := 1 to Count do
    lbObjects.Items.Add(IntToHex(Integer(POBJECTINFO(ObjectsAtList + SizeOf(TOBJECTINFO)*(Ind - 1))^.ObjID),8));

  StrDispose (ObjectsAtList);
end;

procedure TfmMain.miBringToFrontClick(Sender: TObject);
begin
  // send selected object to front of the label layout
  BringObjectToFront (TObjectID(CurObjID));
  SetLabelModified (True);
  RedrawLabel;
end;

procedure TfmMain.miSendToBackClick(Sender: TObject);
begin
  // send selected object to back of the label layout
  SendObjectToBack(TObjectID(CurObjID));
  SetLabelModified (true);
  RedrawLabel;
end;

procedure TfmMain.miDeleteClick(Sender: TObject);
begin
  // delete selected object from the label layout
  DeleteLabelObject(TObjectID(CurObjID));
  SetLabelModified (True);

  // re-form ObjectNames Combo Box in Object Inspector
  fmObjInspector.ReFormLB(ChangeCurAttr);
  RedrawLabel;
end;

procedure TfmMain.PadMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  // if user clicked left mouse button on the label layout
  // then try to find object at this point and then display
  // Object Inspector that allows to modify object's properties

  // if user clicked right mouse button on the label layout
  // then display tools pop-up menu

  XXX := MulDiv(X, TWIPS, Screen.PixelsPerInch);
  YYY := MulDiv(Y, TWIPS, Screen.PixelsPerInch);

  if (Pad.Cursor = AddObjCursor) and (Button = mbLeft)
    then CurObjID := AddNewObject (XXX, YYY)
    else CurObjID := Integer (WhichObject(XXX,YYY));

  if Button = mbLeft then
    begin
      // find the object with the ObjID passed in the TObjectInfo structure,
      // and fill in the rest of the fields of the TObjectInfo structure with information about the object
      ObjectInfo.ObjID := TObjectID(CurObjID);
      GetInfo (@ObjectInfo);
      with fmObjInspector do
        if CurObjID <> 0
          then cbObjNames.ItemIndex := cbObjNames.Items.IndexOf (StrPas(ObjectInfo.ObjName))
          else cbObjNames.ItemIndex := -1; 

      fmObjInspector.grAttr.Row := 0;
      fmObjInspector.FillSettings(CurObjID);
      fmObjInspector.paSBResize(self);
      if not fmObjInspector.Visible then fmObjInspector.Show;
    end
  else PopMenu.Popup(Left+ScrollBox1.Left+Pad.Left+X,Top+ScrollBox1.Top+Pad.TOp+Y);
end;

procedure TfmMain.tbAddressClick(Sender: TObject);
begin
  // change cursor to AddCursor
  Pad.Cursor := AddObjCursor;
end;

procedure TfmMain.tbCancelClick(Sender: TObject);
begin
  // restore defaulte cursor
  if Pad.Cursor <> crDefault
     then Pad.Cursor := crDefault;
end;

function TfmMain.AddNewObject(X,Y: Integer):Integer;
var
  Ind, ID: Integer;
  r: TRect;
  NewObjType: Integer;
  NewObjName: String;
  PNewObjName, PObjType: PChar;
  pAttr: Pointer;
const
  DefWidth = 1000;
  DefHeight = 1000;

begin
try
  // define new object type
  for Ind := 1 to tbAddObj.ButtonCount - 1 do
      if tbAddObj.Buttons[Ind].Down then Break;

  if Ind > 5
    then Dec (Ind, 2)
    else Dec (Ind, 1);

  NewObjType := Ind;
  NewObjName := ObjType[NewObjType];

  // add new object

  r.Left := X;
  r.Top := Y;
  r.Right := DefWidth;
  r.Bottom := DefHeight;
  PNewObjName := StrAlloc (Length (NewObjName) + 1);
  StrPCopy (PNewObjName, NewObjName);
  PObjType := StrAlloc (50);
  StrPCopy (PObjType, ObjType[NewObjType]);

  if NewObjType in [ltTEXT, ltADDRESS, ltCOUNTER, ltDATE_TIME] then
    with TextBlockAttr do begin
      if TextBlockAttr.Text <> nil then StrDispose (TextBlockAttr.Text);
      TextBlockAttr.Text := StrAlloc(1);
      StrPCopy (Text, '');
      StrPCopy (Font1, '');
      StrPCopy (Font2, '');
      Justify := 0;
      VertJustify := 0;
      bMirrored := False;
      bVerticalText := False;
      TextColor := 0;
      BackGroundColor := $FFFFFF;
    end;

  case NewObjType of
   ltTEXT:
     with TextAttributes do begin
       bVariable := FALSE;
       pAttr := @TextAttributes;
     end;
   ltADDRESS:
     with AddrAttr do begin
       BarCodePos := 1;
       b9DigitOnly := TRUE;
       pAttr := @AddrAttr;
     end;
   ltGRAPHIC:
     with GraphicAttr do begin
       GraphicSource := 1;
       StrPCopy (FileName, '');
       Picture := 0;
       Palette := 0;
       Window := 0;
       Border := 0;
       BorderColor := 0;
       pAttr := @GraphicAttr;
     end;
   ltRECTANGLE:
     with RectAttr do begin
       bFilled := FALSE;
       Border := 1;
       FillColor := $FFFFFF;
       BorderColor := 0;
       pAttr := @RectAttr;
     end;
   ltLINE:
     with LineAttr do begin
       Length := Width;
       if tbVLine.Down
         then Orient := 1
         else Orient := 0;
       Thickness := 2;
       LineColor := 0;
       pAttr := @LineAttr;
     end;
   ltBARCODE:
     with BarcodeAttributes do begin
       StrPCopy (Text, '');
       StrPCopy (Font, '');
       HRTextPos := 2;
       BCType := 0;
       BCRatio := 1;
       Justify := 1;
       Link := nil;
       pAttr := @BarcodeAttributes;
     end;
   ltCOUNTER:
     with CounterAttr do begin
       StrPCopy (PreText, '');
       StrPCopy (PostText, '');
       Start := 1;
       Current := 1;
       Width := 3;
       Increment := 1;
       bLeadingZeros := TRUE;
       pAttr := @CounterAttr;
     end;
   ltDATE_TIME:
     with DateTimeAttr do begin
       StrPCopy (PreText, '');
       StrPCopy (PostText, '');
       DateFormat := 1;
       bIncludeTime := FALSE;
       b24Hour := FALSE;
       pAttr := @DateTimeAttr;
     end;
  end;

  ID := AddObject (PObjType, PNewObjName, r, 0, PAttr);
  StrDispose (PNewObjName);
  StrDispose (PObjType);

  AddNewObject := ID;

  // activate added object in Object Inspector
 with fmObjInspector{.cbObjNames} do begin
    ReFormLB (ChangeAttr);
    cbObjNames.ItemIndex := cbObjNames.Items.IndexOf(NewObjName);
    cbObjNamesChange(Self);
  end;
  // redraw label
  fmMain.RedrawLabel;

  // show Object Inspector
  if not fmObjInspector.Visible then fmObjInspector.Show;

  tbCancel.Down := true;
  tbCancelClick(Self);

  SetLabelModified (True);

except
end;

end;

procedure TfmMain.buCopyClick(Sender: TObject);
type
  // this will work for no more than 20 objects
  TArr = array[0..20] of Integer;
var
  ObjArr: TArr;
  Ind, SelInd: Integer;
begin
  SelInd := -1;
  // if button Copy in the main form clicked
  if (Sender as TComponent).Name = 'buCopy' then
    for Ind:= 0 to lbObjects.Items.Count - 1 do
      // fill array by ID of selected objects
      if lbObjects.Selected[Ind] then begin
        Inc(SelInd);
        ObjArr[SelInd] := StrToInt('$' + lbObjects.Items[Ind]);
      end;

  // if item Copy in the pop-up menu clicked
  if (Sender as TComponent).Name = 'miCopyToClipboard' then begin
    // fill array by ID of selected object
    Inc(SelInd);
    ObjArr[SelInd] := CurObjID;
  end;

  // set next one to zero as a terminator
  Inc(SelInd);
  ObjArr[SelInd] := 0;

  // pass first element of the array to CopyToClipboard method
  if CopyToClipboard(@ObjArr[0])
    then
      if ((Sender as TComponent).Name = 'buCopy')
         then ShowMessage (Format ('%d object(s) copied.',[SelInd]))
         else
    else ShowMessage ('Error...');
end;

procedure TfmMain.buPasteClick(Sender: TObject);
var
  PastedObjName: String;
begin
  // paste from clipboard
  PasteFromClipboard;
  SetLabelModified (True);

  with fmObjInspector do begin
    // re-form ObjectNames Combo Box in Object Inspector
    ReFormLB(ChangeCurAttr);
    PastedObjName := StrPas (POBJECTINFO(ObjectList + SizeOf(TOBJECTINFO)*(ObjectCount - 1))^.ObjName);
    // activate pasted object in Object Inspector
    cbObjNames.ItemIndex := cbObjNames.Items.IndexOf (PastedObjName);
    cbObjNamesChange(Self);
  end;
  RedrawLabel;
end;

procedure TfmMain.buExitClick(Sender: TObject);
begin
  // close main form
  Close;
end;

end.
