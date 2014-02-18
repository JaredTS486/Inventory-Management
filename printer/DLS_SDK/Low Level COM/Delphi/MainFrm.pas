{*******************************************************************************
 MainFrm.pas: The main form of the application.
 Written 4/30/99 by Natalya Chernokozova

 This program is meant to demonstrate the methods used to communicate with
 the Dymo Label Software programs via Low-Level OLE Automation Interface.

 This code was written and tested using Borland Delphi 3.0.

 Copyright 1999 Dymo-CoStar Corporation

 Permission to use, copy, modify, and distribute this software for any
 purpose and without fee is hereby granted.

*******************************************************************************}

unit MainFrm;

interface

uses
  Windows, Classes, Controls, Forms, Dialogs, StdCtrls, ExtCtrls,
  Grids, Menus, ComCtrls, ToolWin, Variants,
  SysUtils, Graphics, Printers,  Dymo_TLB, ComObj, Registry, ImgList;

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

procedure TfmMain.RedrawLabel;
begin
  // draw label
  Pad.Width := L.LabelInfo.BitmapWidth;
  Pad.Height := L.LabelInfo.BitmapHeight;
  Pad.Repaint;

  // update Label Info grid
  with grdLabelInfo do begin
    ColWidths[0]:=70;
    ColWidths[1]:=132;
    Cells[0,0]:='LabelName';
    Cells[1,0]:=L.LabelInfo.LabelName;
    Cells[0,1]:='PaperName';
    Cells[1,1]:=L.LabelInfo.PaperName;
    Cells[0,2]:='PaperWidth';
    Cells[1,2]:=IntToStr(L.LabelInfo.PaperWidth);
    Cells[0,3]:='PaperHeight';
    Cells[1,3]:=IntToStr(L.LabelInfo.PaperHeight);
    Cells[0,4]:='BitmapWidth';
    Cells[1,4]:=IntToStr(L.LabelInfo.BitmapWidth);
    Cells[0,5]:='BitmapHeight';
    Cells[1,5]:=IntToStr(L.LabelInfo.BitmapHeight);
    Cells[0,6]:='Modified';
    Cells[1,6]:=IntToStr(Longint(L.LabelInfo.Modified));
    Cells[0,7]:='LabelWidth';
    Cells[1,7]:=IntToStr(Longint(L.LabelInfo.LabelWidth));
    Cells[0,8]:='LabelHeight';
    Cells[1,8]:=IntToStr(Longint(L.LabelInfo.LabelHeight));
  end;
  // fill object list by all objects
  buGetAllClick(Self);
end;

procedure TfmMain.FormCreate(Sender: TObject);
begin
  if L = nil then	// Connect to server
  try
    L := CreateOleObject('Dymo.LabelEngine') as ILabelEngine;
  except
    ShowMessage('Failed to create Automation object');
    Halt;
  End;
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
var i:integer;
begin
  // add each LabelName from collection to the Labels ListBox
  for i:=1 to L.LabelNames().Count do
    lbLabels.Items.Add (L.LabelNames.Item[i]);
  lbLabels.ItemIndex:=0;
  // draw curent label
  RedrawLabel;
end;

procedure TfmMain.lbLabelsClick(Sender: TObject);
begin
  // create a new label based on label name selected in the Label ListBox
  L.NewLabel(lbLabels.Items[lbLabels.ItemIndex]);
  // draw new label
  RedrawLabel;
  // re-form ObjectNames Combo Box in Object Inspector
  fmObjInspector.ReFormLB(ChangeCurAttr);
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
  L.DrawLabel(Pad.Canvas.Handle);
end;

procedure TfmMain.buOpenClick(Sender: TObject);
begin
  // display standard open dialog
  if dlgOpen.Execute then begin
    // open label file
    L.OpenFile(dlgOpen.FileName);
    // draw newly loaded label
    ReDrawLabel;
    // re-form ObjectNames Combo Box in Object Inspector
    fmObjInspector.ReFormLB(ChangeCurAttr);
    // show ObjectInspector
    if not fmObjInspector.Visible then fmObjInspector.Show;
  end;
end;

procedure TfmMain.buSaveClick(Sender: TObject);
begin
  // display standard SaveAs dialog and save label file
  if dlgSave.Execute then L.SaveFile(dlgSave.FileName);
  ReDrawLabel;
end;

procedure TfmMain.buPrintClick(Sender: TObject);
var
  DeviceName, p: String;
  Ind: Integer;
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
    // print label
    L.PrintLabel(DeviceName, p, dlgPrint.Copies,True);
  end;
end;

procedure TfmMain.txtZoomChange(Sender: TObject);
begin
  try
    // change Zoom property
    L.Zoom:=StrToInt(txtZoom.Text);
    // redraw label with new zoom
    RedrawLabel;
  except
  end;
end;

procedure TfmMain.chkShadowClick(Sender: TObject);
begin
  // change Shadow property
  L.Shadow := chkShadow.Checked;
  // redraw label with new Shadow property
  RedrawLabel;
end;

procedure TfmMain.buGetAllClick(Sender: TObject);
var i:integer;
begin
  lbObjects.Clear;
  // scan objects collection and add ID of every object in the list
  for i:=1 to L.PrintObject.Objects.Count do
    lbObjects.Items.Add(IntToHex(L.PrintObject.Objects.Item[i],8));
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
var i:integer;
begin
  lbObjects.Clear;
  // scan variable objects collection and add ID of every object in the list
  for i:=1 to L.PrintObject.VarObjects.Count do
    lbObjects.Items.Add(IntToHex(L.PrintObject.VarObjects.Item[i],8));
end;

procedure TfmMain.miGetObjectsAtClick(Sender: TObject);
var i:integer;
begin
  lbObjects.Clear;
  // for each object found at the point defined by XXX&YYY add its ID to the list
  for i:=1 to L.PrintObject.ObjectsAt(XXX,YYY).Count do
    lbObjects.Items.Add(IntToHex(L.PrintObject.ObjectsAt(XXX,YYY).Item[i],8));
end;

procedure TfmMain.miBringToFrontClick(Sender: TObject);
begin
  // send selected object to front of the label layout
  L.PrintObject.BringToFront(CurObjID);
  RedrawLabel;
end;

procedure TfmMain.miSendToBackClick(Sender: TObject);
begin
  // send selected object to back of the label layout
  L.PrintObject.SendToBack(CurObjID);
  RedrawLabel;
end;

procedure TfmMain.miDeleteClick(Sender: TObject);
begin
  // delete selected object from the label layout
  L.PrintObject.Delete(CurObjID);
  RedrawLabel;
  // re-form ObjectNames Combo Box in Object Inspector
  fmObjInspector.ReFormLB(ChangeCurAttr);
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
    else CurObjID := L.PrintObject.ObjectAt(XXX,YYY);

  if Button = mbLeft then
    begin
      with fmObjInspector do
        cbObjNames.ItemIndex := cbObjNames.Items.IndexOf (L.PrintObject.LabelObject(CurObjID).Name);
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
  NewObjName: String;
begin
  // define new object type
  for Ind := 1 to tbAddObj.ButtonCount - 1 do
      if tbAddObj.Buttons[Ind].Down then Break;

  if Ind > 5
    then Dec (Ind, 2)
    else Dec (Ind, 1);

  NewObjName := ObjType[Ind];
  // add new object
  ID := L.PrintObject.AddObject(Ind,NewObjName, X, Y, 1000, 1000, 0);
  AddNewObject := ID;

  if tbVLine.Down then begin
    (L.PrintObject.LabelObject(ID) as ILineObj).Orientation := 1;
  end;
  // redraw label
  fmMain.RedrawLabel;

  // activate added object in Object Inspector
  with fmObjInspector.cbObjNames do begin
    ItemIndex := Items.Add(NewObjName);
    fmObjInspector.cbObjNamesChange(Self);
  end;
  // show Object Inspector
  if not fmObjInspector.Visible then fmObjInspector.Show;

  tbCancel.Down := true;
  tbCancelClick(Self);
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
  if L.PrintObject.CopyToClipboard(ObjArr[0])
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
  L.PrintObject.PasteFromClipboard;
  RedrawLabel;
  with fmObjInspector do begin
    // re-form ObjectNames Combo Box in Object Inspector
    ReFormLB(ChangeCurAttr);
    PastedObjName := L.PrintObject.LabelObject(L.PrintObject.Objects.Item[L.PrintObject.Objects.Count]).Name;
    // activate pasted object in Object Inspector
    cbObjNames.ItemIndex := cbObjNames.Items.IndexOf (PastedObjName);
    cbObjNamesChange(Self);
  end;
end;

procedure TfmMain.buExitClick(Sender: TObject);
begin
  // close main form
  Close;
end;

end.
