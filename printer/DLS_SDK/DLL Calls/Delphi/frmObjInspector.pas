{*******************************************************************************
 frmObjInspector.pas: This form is used to modify properties of a label object.
 Written 4/30/99 by Natalya Chernokozova

 This program is meant to demonstrate the methods used to communicate with
 the Dymo Label Software programs via DLL calls.

 This code was written and tested using Borland Delphi 3.0.

 Copyright 1999 Dymo-CoStar Corporation

 Permission to use, copy, modify, and distribute this software for any
 purpose and without fee is hereby granted.

*******************************************************************************}

unit frmObjInspector;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, StdCtrls, ExtDlgs, ExtCtrls, Buttons, Lbltypes, Lblfunctions;

type
  TfmObjInspector = class(TForm)
    pdPicture: TOpenPictureDialog;
    paCB: TPanel;
    cbObjNames: TComboBox;
    paSB: TPanel;
    grAttr: TStringGrid;
    ed: TEdit;
    sb3pts: TSpeedButton;
    sbArr: TSpeedButton;
    fdFont: TFontDialog;
    cdColor: TColorDialog;
    procedure grAttrSelectCell(Sender: TObject; Col, Row: Integer;
      var CanSelect: Boolean);
    procedure buExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure paCBResize(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure cbObjNamesChange(Sender: TObject);
    procedure sb3ptsClick(Sender: TObject);
    procedure edKeyPress(Sender: TObject; var Key: Char);
    procedure paSBResize(Sender: TObject);
    procedure grAttrMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grAttrMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grAttrMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grAttrDrawCell(Sender: TObject; Col, Row: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure grAttrTopLeftChanged(Sender: TObject);
    procedure edKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbArrClick(Sender: TObject);
    procedure grAttrDblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure WMGetMinMaxInfo(var M:TWMGetMinMaxInfo);
                message WM_GETMINMAXINFO;
  public
    { Public declarations }
    bmp: TBitMap;
    procedure FillRow(r: Integer; s :string; v: Variant; obj: TObject);
    procedure FillSettings(ObjId:Integer);
    function ChangeAttr: Boolean;

    procedure ActivateCellObjects (Row: Integer);

    procedure SetEdit(var edit: TEdit);
    procedure SetButton(var button: TSpeedButton);
    procedure RePaintObject;
    procedure ReFormLB(ChangeAttr: Boolean);
  end;

var
  fmObjInspector: TfmObjInspector;
  CurRow, CurCol: Integer;
  OldX: Integer;
  BorderMoving: Boolean;
  Error: Boolean = false;

function StrToBool (s: String): Boolean;
function BoolToStr (b: Boolean): String;

const
  ChangeCurAttr = True;

implementation

uses Decl,MainFrm, TextEditor, lb, Color, Wnds;

{$R *.DFM}

procedure ReAllocText(ID:TObjectID; var P: PCHAR);
var z: Integer;
begin
  z := GetAttributesEx (ID, nil);
  if P <> nil then begin
    if z = StrLen(P) then Exit;
    StrDispose(P);
  end;
  P := StrAlloc (z + 1);
end;

{*******************************************************************************
  StrToBool converts a string to a boolean.
*******************************************************************************}
function StrToBool (s: String): Boolean;
begin
  StrToBool :=  (UpperCase(s) = 'TRUE');
end;

{*******************************************************************************
  BoolToStr converts a boolean to a string.
*******************************************************************************}
function BoolToStr (b: Boolean): String;
begin
  if b then BoolToStr := 'True' else BoolToStr := 'False';
end;

{*******************************************************************************
  FontStyleToStr converts a font style to a string.
*******************************************************************************}
function FontStyleToStr(s:TFontStyles): String;
var res: String;
begin
  res := '';
  if fsBold in s then res := res + ', Bold';
  if fsItalic in s then res := res + ', Italic';
  if fsUnderline in s then res := res + ', Underline';
  if fsStrikeout in s then res := res + ', Strikeout';
  FontStyleToStr := res;
end;

{*******************************************************************************
  The procedure sets the window's minimum or maximum tracking size.
*******************************************************************************}
procedure TfmObjInspector.WMGetMinMaxInfo(var M:TWMGetMinMaxInfo);
begin
  inherited;
  M.MinMaxInfo^.ptMinTrackSize.x:=113;
  M.MinMaxInfo^.ptMinTrackSize.y:=100;
end;

{*******************************************************************************
  FillRow fills grAttr's row and associates object with one.
      r   - row number
      s   - property name (for first Cell)
      v   - property value (for second Cell)
      obj - object associated with the property to change it's value
*******************************************************************************}
procedure TfmObjInspector.FillRow(r: Integer; s :string; v: Variant; obj: TObject);
begin
  // fill property name Cell
  grAttr.Cells[0,r]:= s;
  // fill property value Cell
  grAttr.Cells[1,r]:= v;
  // associate object with the property
  grAttr.Objects[1,r] := obj;
End;

{*******************************************************************************
  The procedure fills the ObjNames Combo Box by all label objects names.
  If ChangeAttr is true then activate the first item of the ObjNames Combo Box.
*******************************************************************************}
procedure TfmObjInspector.ReFormLB(ChangeAttr: Boolean);
var
  nBytes, Ind: Integer;
begin
  StrDispose (ObjectList);
  // get number of bytes required
  nBytes := EnumLabelObjects(nil, 0);
  // get object count
  ObjectCount := (nBytes) div SizeOf(TOBJECTINFO);
  // allocate a buffer for a null-terminated string
  ObjectList := StrAlloc (nBytes + 1);
  // fill a buffer with Object Info structures
  EnumLabelObjects (ObjectList, nBytes);

  with cbObjNames do begin
     // clear Combo Box
     Clear;
     // scan all label's objects and add name of every object in the label
     for Ind := 1 to ObjectCount do
         Items.Add( StrPas (POBJECTINFO(ObjectList + SizeOf(TOBJECTINFO)*(Ind - 1))^.ObjName));
     if ChangeAttr and (Items.Count > 0) then begin
        // activate the first item of ObjNames Combo Box
        ItemIndex := 0;
        // update grAttr with first object's properties
        cbObjNamesChange (Self);
     end;
     // if there is no object in the label then clear grAttr and display 'INVALID OBJECT'
     if Items.Count = 0 then cbObjNamesChange (Self);
  end;
end;

{*******************************************************************************
  The procedure fills the Object Inspector's grAttr by all properties available
  for the label object with ID=ObjId.
*******************************************************************************}
procedure TfmObjInspector.FillSettings(ObjId:Integer);
var
  LastInd:Integer;
  LinkObjectInfo: TObjectInfo;
begin
  // display 'INVALID OBJECT' if not valid object
  if ObjID = 0 then begin
    FillRow(0, '', 'INVALID OBJECT', nil);
    grAttr.RowCount:=1;
  end
  else begin
    grAttr.RowCount:=7;
    // treat the objects as general
    // this allows to get all general properties
    ObjectInfo.ObjID := TObjectID(ObjID);
    GetInfo (@ObjectInfo);

    // fill grid by general properties that available for any object type
    FillRow (0, 'Type', ObjType[ObjectInfo.ObjType], nil);   // no changeable
    FillRow (1, 'Name', StrPas(ObjectInfo.ObjName), ed);
    FillRow (2, 'X', ObjectInfo.Size.Left, ed);
    FillRow (3, 'Y', ObjectInfo.Size.Top, ed);
    FillRow (4, 'Width', ObjectInfo.Size.Right, ed);
    FillRow (5, 'Height', ObjectInfo.Size.Bottom, ed);
    FillRow (6, 'Rotation', ObjectInfo.Rotate, sbArr);

    // retrieve the current object attributes for the specified object

    if ObjectInfo.ObjType in [ltTEXT, ltADDRESS, ltCOUNTER, ltDATE_TIME]
      then ReAllocText (ObjectInfo.ObjID, TextAttributes.TextInfo^.Text);

    // now go for special properties
    Case ObjectInfo.ObjType of
    ltTEXT:
       begin
        GetAttributesEx (ObjectInfo.ObjID, @TextAttributes);
        grAttr.RowCount := 7 + 1;
        FillRow (7, 'IsVariable', BoolToStr(TextAttributes.bVariable), sbArr);
       end;
    ltADDRESS:
       begin
        GetAttributesEx (ObjectInfo.ObjID, @AddrAttr);
        grAttr.RowCount := 7 + 2;
        FillRow (7, 'BarCodePosition', ca_BCPosition[AddrAttr.BarCodePos], sbArr);
        FillRow (8, 'b9DigitOnly', BoolToStr(AddrAttr.b9DigitOnly), sbArr);
       end;
    ltGRAPHIC:
       begin
        GetAttributesEx (ObjectInfo.ObjID, @GraphicAttr);
        grAttr.RowCount := 7 + 7;
        FillRow (7, 'GraphicSource', ca_GrSource[GraphicAttr.GraphicSource], sbArr);
        if GraphicAttr.GraphicSource <> 0 then StrPCopy (GraphicAttr.FileName, '');
        FillRow (8, 'FileName', StrPas(GraphicAttr.FileName), sb3pts);
        FillRow (9, 'BitmapHandle', GraphicAttr.Picture, sb3pts);
        FillRow (10, 'PaletteHandle', GraphicAttr.Palette, ed);
        FillRow (11, 'WindowHandle', ''{'Write Only'}, sb3pts);
        FillRow (12, 'Border', GraphicAttr.Border, ed);
        FillRow (13, 'BorderColor', ColorToString (GraphicAttr.BorderColor), sbArr);
       end;
    ltRECTANGLE:
       begin
        GetAttributesEx (ObjectInfo.ObjID, @RectAttr);
        grAttr.RowCount:= 7 + 4;
        FillRow (7, 'bFilled', BoolToStr(RectAttr.bFilled), sbArr);
        FillRow (8, 'Border', ca_Border[RectAttr.Border], sbArr);
        FillRow (9, 'BorderColor', ColorToString (RectAttr.BorderColor), sbArr);
        FillRow (10, 'FillColor', ColorToString (RectAttr.FillColor), sbArr);
       end;
    ltLINE:
       begin
        GetAttributesEx (ObjectInfo.ObjID, @LineAttr);
        grAttr.RowCount := 7 + 4;
        FillRow (7, 'Length', LineAttr.Length, ed);
        FillRow (8, 'Orient', ca_LINE[LineAttr.Orient], sbArr);
        FillRow (9, 'Thickness', ca_Thick[LineAttr.Thickness], sbArr);
        FillRow (10, 'LineColor', ColorToString (LineAttr.LineColor), sbArr);
       end;
    ltBARCODE:
       begin
        GetAttributesEx (ObjectInfo.ObjID, @BarCodeAttributes);
        grAttr.RowCount := 7 + 7;
        FillRow (7, 'Text', StrPas(BarCodeAttributes.Text), ed);
        FillRow (8, 'Font', '(Font)', sb3pts);
        FillRow (9, 'TextPos', ca_TextPos[BarCodeAttributes.HRTextPos], sbArr);
        FillRow (10, 'BCType', ca_BCType[BarCodeAttributes.BCType], sbArr);
        FillRow (11, 'Size', ca_Size[BarCodeAttributes.BCRatio], sbArr);
        FillRow (12, 'Justify', ca_BCJustify[BarCodeAttributes.Justify], sbArr);
        if BarCodeAttributes.Link <> nil
        then begin
          LinkObjectInfo.ObjID := TObjectID(BarCodeAttributes.Link);
          GetInfo (@LinkObjectInfo);
          FillRow (13, 'Link', StrPas(LinkObjectInfo.ObjName), sbArr);
        end
        else FillRow (13, 'Link', '', sbArr);
       end;
    ltCOUNTER:
       begin
        GetAttributesEx (ObjectInfo.ObjID, @CounterAttr);
        grAttr.RowCount := 7 + 7;
        FillRow (7, 'PreText', StrPas(CounterAttr.PreText), ed);
        FillRow (8, 'PostText', StrPas(CounterAttr.PostText), ed);
        FillRow (9, 'Start', CounterAttr.Start, ed);
        FillRow (10, 'Current', CounterAttr.Current, ed);
        FillRow (11, 'Width', CounterAttr.Width, ed);
        FillRow (12, 'Increment', CounterAttr.Increment, ed);
        FillRow (13, 'UseLeadingZeros', BoolToStr(CounterAttr.bLeadingZeros), sbArr);
       end;
    ltDATE_TIME:
       begin
        GetAttributesEx (ObjectInfo.ObjID, @DateTimeAttr);
        grAttr.RowCount := 7 + 5;
        FillRow (7, 'PreText', StrPas(DateTimeAttr.PreText), ed);
        FillRow (8, 'PostText', StrPas(DateTimeAttr.PostText), ed);
        FillRow (9, 'Format', ca_Format[DateTimeAttr.DateFormat], sbArr);
        FillRow (10, 'IncludeTime', BoolToStr(DateTimeAttr.bIncludeTime), sbArr);
        FillRow (11, 'b24Hour', BoolToStr(DateTimeAttr.b24Hour), sbArr);
       end;
    else
        grAttr.RowCount := 7
    end; {of case}

    // text properties available only for TEXT, ADDRESS, COUNTER or DATE-TIME
    if ObjectInfo.ObjType in [ltTEXT, ltADDRESS, ltCOUNTER, ltDATE_TIME] then begin
      LastInd := grAttr.RowCount - 1;
      grAttr.RowCount := grAttr.RowCount + 9;
      FillRow (LastInd + 1, 'Text', '(Lines)', sb3pts);
      FillRow (LastInd + 2, 'Font1', '(Font)', sb3pts);
      FillRow (LastInd + 3, 'Font2', '(Font)', sb3pts);
      FillRow (LastInd + 4, 'Justify', ca_TxtJustify[TextBlockAttr.Justify], sbArr);
      FillRow (LastInd + 5, 'VJustify', ca_VJustify[TextBlockAttr.VertJustify], sbArr);
      FillRow (LastInd + 6, 'Mirrored', BoolToStr(TextBlockAttr.bMirrored), sbArr);
      FillRow (LastInd + 7, 'Vertical', BoolToStr(TextBlockAttr.bVerticalText), sbArr);
      FillRow (LastInd + 8, 'TextColor', ColorToString (TextBlockAttr.TextColor), sbArr);
      FillRow (LastInd + 9, 'BackGroundColor', ColorToString (TextBlockAttr.BackGroundColor), sbArr);
      fmTextEditor.meText.Text := StrPas(TextBlockAttr.Text);
    end;
  end;

  // set new height for grid
  with grAttr do
       grAttr.Height := (DefaultRowHeight + GridLineWidth) * RowCount + 1;
  grAttr.Repaint;
End;

{*******************************************************************************
  When user select a property it should to display object associated with one
  (edit or button with down arrow or with 3 points)
  in order user could change the property.
*******************************************************************************}
procedure TfmObjInspector.ActivateCellObjects (Row: Integer);
begin
  if grAttr.Objects[1, Row] = ed then begin
    // display edit
    SetEdit (ed);
    // fill text of edit object by current property value
    ed.Text := grAttr.Cells[1, Row];
    ed.SelectAll;
  end
  else if ed.Visible then ed.Hide;

  if grAttr.Objects[1, Row] = sb3pts then begin
    // display button with 3 points
    SetButton (sb3pts);
  end
  else if sb3pts.Visible then sb3pts.Hide;

  if grAttr.Objects[1, Row] = sbArr then begin
    // display buton with down arrow
    SetButton (sbArr);
    fmLB.FillLB (grAttr.Cells [0, Row],grAttr.Cells [1, Row]);
  end
  else if sbArr.Visible then sbArr.Hide;

  if grAttr.Objects[1, Row] = nil then ActiveControl := grAttr;
end;

procedure TfmObjInspector.grAttrSelectCell(Sender: TObject; Col, Row: Integer;
  var CanSelect: Boolean);
var
  SelRow: Integer;
  ss: String;
begin
  if Error then begin Exit; end;

  if (grAttr.Cursor = crHSplit) then begin
    // grArr columns are resizing
    CanSelect := false;
    Exit;
  end;
  if CurRow = Row then begin
    // the same row has been selected
    CanSelect := false;
    if ed.Visible then begin
       ActiveControl := ed;
       ed.SelectAll;
    end;
    Exit;
  end;

  if ed.Visible and (ed.Text <> grAttr.Cells[1,CurRow]) then begin
     // fill Cell by new value from edit
     ss := grAttr.Cells[1,CurRow];
     grAttr.Cells[1,CurRow] := ed.Text;

     if not ChangeAttr then begin
       Error := false;
       grAttr.Cells[1,CurRow] := ss;
       ActiveControl := ed;
       ed.SelectAll;
       CanSelect := false;
       Exit;
     end;
  end;

  SelRow := CurRow;
  CurRow := Row;
  grAttrDrawCell(Self, (CurCol + 1) mod 2, SelRow, grAttr.CellRect ((CurCol + 1) mod 2, SelRow), []);
  CurCol := Col;
  grAttrDrawCell(Self, (CurCol + 1) mod 2, CurRow, grAttr.CellRect ((CurCol + 1) mod 2, CurRow), [gdFocused]);

  ActivateCellObjects (CurRow);
end;

procedure TfmObjInspector.buExitClick(Sender: TObject);
begin
  // close Object Inspector
  Close
end;

procedure TfmObjInspector.FormCreate(Sender: TObject);
begin
  grAttr.Align := alClient;
  Left := 5; Top := 120;
  (sb3pts as  TControl).Parent := grAttr;
  (sbArr as  TControl).Parent := grAttr;
  (ed as  TControl).Parent := grAttr;
  // create bitmap for BitmapHandle property of graphic object
  bmp := TBitMap.Create;
end;

procedure TfmObjInspector.paCBResize(Sender: TObject);
begin
  cbObjNames.Width := paCB.Width - 2;
end;

procedure TfmObjInspector.FormResize(Sender: TObject);
  var hRow, dh: Integer;
begin
  // change Object Inspector's height to not display partial items of grArr
  with grAttr do begin
    hRow := DefaultRowHeight + GridLineWidth;
    dh := (paSB.Height - 2* (paSB.BevelWidth + paSB.BorderWidth)) mod hRow;
    if dh <> 0 then
      fmObjInspector.Height := fmObjInspector.Height + hRow - dh;
  end;
end;

procedure TfmObjInspector.cbObjNamesChange(Sender: TObject);
var
  ObjName: String;
  PObjName: PChar;
begin
  ObjName := cbObjNames.Items[cbObjNames.ItemIndex];
  PObjName := StrAlloc (Length(ObjName) + 1);
  StrPCopy (PObjName, ObjName);
  // determine ID of selected object
  CurObjID := Integer (FindObject (PObjName));
  StrDispose (PObjName);

  grAttr.Row := 0;
  // fills the grArr by properties of the object
  FillSettings(CurObjID);
  paSBResize(self);
  CurRow := 0;
  // activate first property
  ActivateCellObjects (CurRow);
end;

procedure TfmObjInspector.sb3ptsClick(Sender: TObject);
var
  s, fdName, fdSize, fdStrStyle: String;
  fdStyle: TFontStyles;
begin
  if grAttr.Cells [0, grAttr.Row] = 'Text' then begin
    // display TextEditor form to change text property
    fmTextEditor.meText.Text := StrPas(TextBlockAttr.Text);
    if fmTextEditor.ShowModal = mrOk then ChangeAttr;
  end;

  if Pos ('Font', grAttr.Cells [0, grAttr.Row]) = 1 then
    with fdFont do begin
      // get current font of object
      if grAttr.Cells [0, grAttr.Row] = 'Font' then begin
        s := StrPas (BarCodeAttributes.Font);
        Options := Options - [fdEffects];
      end
      else begin
        if grAttr.Cells [0, grAttr.Row] = 'Font1' then s := StrPas(TextBlockAttr.Font1);
        if grAttr.Cells [0, grAttr.Row] = 'Font2' then s := StrPas(TextBlockAttr.Font2);
        Options := Options + [fdEffects];
        // set current font color in FontDialog
        fdFont.Font.Color := TextBlockAttr.TextColor;
      end;

      // extract current font name
      fdName := Copy (s, 1, Pos (',', s) - 1);
      Delete (s, 1, Pos (',', s));
      fdStyle := [];

      if Pos (',', s) > 0 then begin
         // extract current font size
         fdSize := Copy (s, 1, Pos (',', s) - 1);
         Delete (s, 1, Pos (',', s));
         // extract current font style
         fdStrStyle := s;
         if Pos ('Bold', fdStrStyle) <> 0 then fdStyle := fdStyle + [fsBold];
         if Pos ('Italic', fdStrStyle) <> 0 then fdStyle := fdStyle + [fsItalic];
         if Pos ('Underline', fdStrStyle) <> 0 then fdStyle := fdStyle + [fsUnderline];
         if Pos ('Strikeout', fdStrStyle) <> 0 then fdStyle := fdStyle + [fsStrikeout];
      end
      else fdSize := s;

      // set property of current font in FontDialog
      Font.Name := fdName;
      Font.Size := StrToInt (fdSize);
      Font.Style := fdStyle;

      // display FontDialog to change font property
      if fdFont.Execute then ChangeAttr;
    end;

  if grAttr.Cells [0, grAttr.Row] =  'FileName' then begin
    // display OpenPictureDialog to change file name property
    pdPicture.Filter := 'All (*.bmp;*.emf;*.wmf)|*.bmp;*.emf;*.wmf|Bitmaps (*.bmp)|*.bmp|Enhanced Metafiles (*.emf)|*.emf|Metafiles (*.wmf)|*.wmf';
    pdPicture.Title := 'Open picture';
    if not pdPicture.Execute then Exit;
    // change FileName property in grid and in label object
    grAttr.Cells[1,8] := pdPicture.FileName;
    ChangeAttr;
    // change GraphicSource property in grid and in label object to update label
    grAttr.Cells[1,7] := ca_GrSource[0];
    GraphicAttr.GraphicSource := 0;
    // redraw label
    fmMain.ReDrawLabel;
  end;

  if grAttr.Cells [0, grAttr.Row] =  'BitmapHandle' then begin
    // display OpenPictureDialog to change Bitmap Handle property
    pdPicture.Filter := 'Bitmaps (*.bmp)|*.bmp';
    pdPicture.Title := 'Open bitmap';
    if not pdPicture.Execute then Exit;
    bmp.FreeImage;
    // load picture into the BitMap
    bmp.LoadFromFile (pdPicture.FileName);
    // change BitmapHandle property in grid and in label object
    grAttr.Cells[1,9] := IntToStr (bmp.Handle);
    ChangeAttr;
    // change GraphicSource property in grid and in label object to update label
    grAttr.Cells[1,7] := ca_GrSource[1];
    GraphicAttr.GraphicSource := 1;
    // redraw label
    fmMain.RedrawLabel;
  end;

  if (grAttr.Cells [0, grAttr.Row] =  'WindowHandle') and
      // display fmWnds form to change Window Handle property
    (fmWnds.ShowModal = mrOk) then begin
    // change WindowHandle property in grid and in label object
    with fmWnds.grWnds do grAttr.Cells[1,11] := Cells[0,Row];
    ChangeAttr;
    // change GraphicSource property in grid and in label object to update label
    grAttr.Cells[1,7] := ca_GrSource[2];
    GraphicAttr.GraphicSource := 2;
    // redraw label
    fmMain.RedrawLabel;
  end;
end;

{*******************************************************************************
  The function fills a property of current object by new value.
  Name of property and new value are in Cells
  with row coordinate stored in CurRow variable.
*******************************************************************************}
function TfmObjInspector.ChangeAttr: Boolean;
var
  FirstInd: Integer;
  ObjName : String;
begin
  ChangeAttr := true;
    if grAttr.RowCount=1 then Exit;

  try
    // write properties common for all objects
    case CurRow of
      1: begin
           ObjName := grAttr.Cells[1,1];
           StrPCopy (ObjectInfo.ObjName, ObjName);
         end;
      2: ObjectInfo.Size.Left := StrToInt(grAttr.Cells[1,2]);
      3: ObjectInfo.Size.Top := StrToInt(grAttr.Cells[1,3]);
      4: ObjectInfo.Size.Right := StrToInt(grAttr.Cells[1,4]);
      5: ObjectInfo.Size.Bottom := StrToInt(grAttr.Cells[1,5]);
      6: ObjectInfo.Rotate := StrToInt(grAttr.Cells[1,6]);
    end;
    if CurRow < 7 then SetInfo (@ObjectInfo);
    if CurRow = 1 then begin
      // change Object Name in the ObjNames combo box but don't redraw label
      ReFormLB(not ChangeCurAttr);
      // select current item from the list
      with cbObjNames do ItemIndex := Items.IndexOf (ObjName);
    end;

    // text properties available only for TEXT, ADDRESS, COUNTER or DATE-TIME
    if ObjectInfo.ObjType in [ltTEXT, ltADDRESS, ltCOUNTER, ltDATE_TIME] then begin
       FirstInd := grAttr.RowCount - 10;
       case (CurRow - FirstInd) of
         1: begin
              if TextBlockAttr.Text <> nil
                then StrDispose (TextBlockAttr.Text);
              TextBlockAttr.Text := StrAlloc(Length (fmTextEditor.meText.Text) + 1);
              StrPCopy (TextBlockAttr.Text, fmTextEditor.meText.Text);
            end;
         2: begin
              StrPCopy (TextBlockAttr.Font1, Format ('%s, %d', [fdFont.Font.Name, fdFont.Font.Size]) +
                               FontStyleToStr(fdFont.Font.Style));
              TextBlockAttr.TextColor := fdFont.Font.Color;
            end;
         3: begin
              StrPCopy (TextBlockAttr.Font2, Format ('%s, %d', [fdFont.Font.Name, fdFont.Font.Size]) +
                               FontStyleToStr(fdFont.Font.Style));
              TextBlockAttr.TextColor := fdFont.Font.Color;
            end;
         4: TextBlockAttr.Justify := fmLB.lb.ItemIndex;
         5: TextBlockAttr.VertJustify := fmLB.lb.ItemIndex;
         6: TextBlockAttr.bMirrored := StrToBool(grAttr.Cells[1,FirstInd + 6]);
         7: TextBlockAttr.bVerticalText := StrToBool(grAttr.Cells[1,FirstInd + 7]);
         8: TextBlockAttr.TextColor := StringToColor(grAttr.Cells[1,FirstInd + 8]);
         9: TextBlockAttr.BackGroundColor := StringToColor(grAttr.Cells[1,FirstInd + 9]);
       end;
      TextBlockAttr.IsRichText := False;
    end;

    // write specific properties for particular object type
    Case ObjectInfo.ObjType of
    ltTEXT:begin
       case CurRow of
         7: TextAttributes.bVariable := StrToBool(grAttr.Cells[1,7]);
       end;
       SetAttributesEx (ObjectInfo.ObjID, @TextAttributes);end;
    ltAddress:begin
       case CurRow of
         7: AddrAttr.BarCodePos := fmLB.lb.ItemIndex;
         8: AddrAttr.b9DigitOnly := StrToBool(grAttr.Cells[1,8]);
       end;
       SetAttributesEx (ObjectInfo.ObjID, @AddrAttr);end;
    ltGRAPHIC:begin
      case CurRow of
        7:  GraphicAttr.GraphicSource := fmLB.lb.ItemIndex;
        8:  begin
              StrPCopy (GraphicAttr.FileName, grAttr.Cells[1,8]);
              GraphicAttr.GraphicSource := 0;
            end;
        9:  begin
              GraphicAttr.Picture := StrToInt(grAttr.Cells[1,9]);
              GraphicAttr.GraphicSource := 1;
            end;
        10: GraphicAttr.Palette := StrToInt(grAttr.Cells[1,10]);
        11: begin
              GraphicAttr.Window := StrToInt(grAttr.Cells[1,11]);
              GraphicAttr.GraphicSource := 2;
            end;
        12: GraphicAttr.Border := StrToInt(grAttr.Cells[1,12]);
        13: GraphicAttr.BorderColor := StringToColor(grAttr.Cells[1,13]);
      end;
      SetAttributesEx (ObjectInfo.ObjID, @GraphicAttr);end;
    ltRECTANGLE:begin
       case CurRow of
         7: RectAttr.bFilled := StrToBool(grAttr.Cells[1,7]);
         8: RectAttr.Border := fmLB.lb.ItemIndex;
         9: RectAttr.BorderColor := StringToColor(grAttr.Cells[1,9]);
         10: RectAttr.FillColor := StringToColor(grAttr.Cells[1,10]);
       end;
       SetAttributesEx (ObjectInfo.ObjID, @RectAttr);end;
    ltLINE:begin
       case CurRow of
         7: LineAttr.Length := StrToInt(grAttr.Cells[1,7]);
         8: LineAttr.Orient := fmLB.lb.ItemIndex;
         9: LineAttr.Thickness := fmLB.lb.ItemIndex;
         10: LineAttr.LineColor := StringToColor(grAttr.Cells[1,10]);
       end;
       SetAttributesEx (ObjectInfo.ObjID, @LineAttr);end;
    ltBARCODE:begin
       case CurRow of
         7: StrPCopy (BarCodeAttributes.Text, grAttr.Cells[1,7]);
         8: StrPCopy (BarCodeAttributes.Font, Format ('%s, %d', [fdFont.Font.Name, fdFont.Font.Size]) +
                               FontStyleToStr(fdFont.Font.Style));
         9: BarCodeAttributes.HRTextPos := fmLB.lb.ItemIndex;
         10: BarCodeAttributes.BCType := fmLB.lb.ItemIndex;
         11: BarCodeAttributes.BCRatio := fmLB.lb.ItemIndex;
         12: BarCodeAttributes.Justify := fmLB.lb.ItemIndex;
         13: BarCodeAttributes.Link := FindObject(PChar(grAttr.Cells[1,CurRow]));
       end;
       SetAttributesEx (ObjectInfo.ObjID, @BarCodeAttributes);end;
    ltCOUNTER:begin
       case CurRow of
         7: StrPCopy (CounterAttr.PreText, grAttr.Cells[1,7]);
         8: StrPCopy (CounterAttr.PostText, grAttr.Cells[1,8]);
         9: CounterAttr.Start := StrToInt(grAttr.Cells[1,9]);
         10: CounterAttr.Current := StrToInt(grAttr.Cells[1,10]);
         11: CounterAttr.Width := StrToInt(grAttr.Cells[1,11]);
         12: CounterAttr.Increment := StrToInt(grAttr.Cells[1,12]);
         13: CounterAttr.bLeadingZeros := StrToBool(grAttr.Cells[1,13]);
       end;
       SetAttributesEx (ObjectInfo.ObjID, @CounterAttr);end;
    ltDATE_TIME:begin
       case CurRow of
         7: StrPCopy (DateTimeAttr.PreText, grAttr.Cells[1,7]);
         8: StrPCopy (DateTimeAttr.PostText, grAttr.Cells[1,8]);
         9: DateTimeAttr.DateFormat := fmLB.lb.ItemIndex;
         10: DateTimeAttr.bIncludeTime := StrToBool(grAttr.Cells[1,10]);
         11: DateTimeAttr.b24Hour := StrToBool(grAttr.Cells[1,11]);
       end;
       SetAttributesEx (ObjectInfo.ObjID, @DateTimeAttr);end;
    end; {of case}

    // redraw changed label
    fmMain.ReDrawLabel;
    fmMain.SetLabelModified (True);
    Error := false;
  except
    ChangeAttr := false;
    Error := true;
  end;
end;

procedure TfmObjInspector.edKeyPress(Sender: TObject; var Key: Char);
var ss: String;
begin
  if Ord(Key) = VK_RETURN then begin
    // if Enter key pressed then fill Cell by new text value
    ss := grAttr.Cells[1,CurRow];
    grAttr.Cells[1,CurRow] := ed.Text;
    ed.SelectAll;
    // change text property of current object
    if not ChangeAttr then grAttr.Cells[1,CurRow] := ss;
  end;

  if Ord (Key) = VK_ESCAPE then begin
    // if Escape pressed then restore text value
    ed.Text := grAttr.Cells [1, CurRow];
    ed.SelectAll;
  end;

end;

procedure TfmObjInspector.paSBResize(Sender: TObject);
begin
  // change with of right column
  grAttr.ColWidths[1]:= paSB.Width - 2* (paSB.BevelWidth + paSB.BorderWidth) - grAttr.ColWidths[0] - 2 + grAttr.GridLineWidth;
  with grAttr do
  if (DefaultRowHeight + GridLineWidth)*RowCount > (paSB.Height - 2* (paSB.BevelWidth + paSB.BorderWidth))
     // grid has a scrollbar
     then grAttr.ColWidths[1] := grAttr.ColWidths[1] - GetSystemMetrics(SM_CXVSCROLL);
  // change with of grid
  grAttr.Width := paSB.Width - 2* (paSB.BevelWidth + paSB.BorderWidth);
  // repaint object associated with selected property
  RePaintObject;
end;

procedure TfmObjInspector.grAttrMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if BorderMoving then begin
    // columns are resizing using the mouse
    // clean old line split columns
    grAttr.Canvas.Pen.Mode := pmXor;
    grAttr.Canvas.MoveTo (OldX, 0);
    grAttr.Canvas.LineTo (OldX, paSB.Height - 1);
    // draw shifted line split columns
    grAttr.Canvas.MoveTo (X, 0);
    grAttr.Canvas.LineTo (X, paSB.Height - 1);
    // store X coordinat of split line
    OldX := X;
    grAttr.Canvas.Pen.Mode := pmCopy;
  end
  else
    if ((X - 3) <  grAttr.ColWidths[0]) and (grAttr.ColWidths[0] < (X + 3))
      // if the mouse pointer is over line split columns then change Cursor to crHSplit
      then grAttr.Cursor := crHSplit
      // else restore Cursor
      else grAttr.Cursor := crDefault;
end;

procedure TfmObjInspector.grAttrMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (grAttr.Cursor = crHSplit) and (Shift = [ssLeft])then begin
    // user wants to resize columns using the mouse

    // store X coordinat of split line
    OldX := grAttr.ColWidths[0];
    // draw shifted line split columns
    grAttr.Canvas.Pen.Mode := pmXor;
    grAttr.Canvas.MoveTo (OldX, 0);
    grAttr.Canvas.LineTo (OldX, paSB.Height - 1);
    // begin of resizing
    BorderMoving := true;
    grAttr.Canvas.Pen.Mode := pmCopy;
  end;
end;

procedure TfmObjInspector.grAttrMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var dx: Integer;
begin
  if BorderMoving then with grAttr do begin
    // columns have been resized using the mouse

    // clean line split columns
     grAttr.Canvas.Pen.Mode := pmXor;
     grAttr.Canvas.MoveTo (OldX, 0);
     grAttr.Canvas.LineTo (OldX, paSB.Height - 1);

     grAttr.Canvas.Pen.Mode := pmCopy;
     // resize columns
     dx := ColWidths[0] - X;
     ColWidths[0] := X;
     ColWidths[1]:= ColWidths[1] + dx;

     // repaint object associated with selected property
     RePaintObject;
     // restore Cursor
     grAttr.Cursor := crDefault;

     // end of resizing
     BorderMoving := false;
  end;
end;

procedure TfmObjInspector.grAttrDrawCell(Sender: TObject; Col,
  Row: Integer; Rect: TRect; State: TGridDrawState);
var
  CellSelected: Boolean;
begin
  // determine style of Cell
  CellSelected := (gdFocused in State) or (CurRow = Row);
  with grAttr.Canvas do begin
    // set background color
    if CellSelected and (Col = 1)
      then Brush.Color := clWhite
      else Brush.Color := grAttr.FixedColor;
    // fills the Cell rectangle using the current brush
    FillRect(Rect);
    // set font color
    if (not CellSelected) and (Col = 1)
      then Font.Color := clNavy
      else Font.Color := clBlack;
    // write a string inside the Cell rectangle
    TextRect (Rect, Rect.Left + 5, Rect.Top + 2, grAttr.Cells [Col, Row]);

    if CellSelected then begin
      // draw selected Cell
      if Col = 0  then begin
        // draw Cell with name of property
        Pen.Color := clBlack;
        MoveTo(Rect.Right, Rect.Top);
        LineTo(Rect.Left, Rect.Top);
        LineTo(Rect.Left, Rect.Bottom);
        Pen.Color := clWhite;
        LineTo(Rect.Right + 1, Rect.Bottom);
        Pen.Color := clGray;
        MoveTo(Rect.Right, Rect.Bottom - 1);
        LineTo(Rect.Right, Rect.Top);
      end
      else begin
        // draw Cell with value of property
        Pen.Color := clBlack;
        MoveTo(Rect.Right, Rect.Top);
        LineTo(Rect.Left - 1, Rect.Top);
        Pen.Color := clWhite;
        MoveTo(Rect.Left - 1, Rect.Bottom);
        LineTo(Rect.Right - 1, Rect.Bottom);
        Pen.Color := clLtGray;
        LineTo(Rect.Right - 1, Rect.Top);
      end;
    end
    else begin
      // draw non-selected Cell
      Pen.Color := clGray;
      MoveTo(Rect.Left, Rect.Bottom);
      LineTo(Rect.Right, Rect.Bottom);
      if Col = 1 then begin
        Pen.Color := clWhite;
        MoveTo(Rect.Left, Rect.Top);
        LineTo(Rect.Left, Rect.Bottom);
      end;
    end;
  end; {with}
end;

procedure TfmObjInspector.grAttrTopLeftChanged(Sender: TObject);
begin
  // repaint object associated with selected property
  RePaintObject;
end;

{*******************************************************************************
  Show edit control associated with property selected in the Object Inspector grid.
*******************************************************************************}
procedure TfmObjInspector.SetEdit(var edit: TEdit);
var Rect: TRect;
begin
  // determine the screen coordinates of the selected cell in the grid
  Rect := grAttr.CellRect (1, CurRow);
  // change the size of the edit control
  edit.Height := Rect.Bottom - Rect.Top - 3;
  edit.Width := Rect.Right - Rect.Left - 7;
  // change the top left corner of the edit control
  edit.Top := Rect.Top + 2;
  edit.Left := Rect.Left + 6;

  // then show the edit
  edit.Visible := true;
  // and activate it
  ActiveControl := edit;
end;

{*******************************************************************************
  Show button object associated with property selected in the Object Inspector grid.
*******************************************************************************}
procedure TfmObjInspector.SetButton(var button: TSpeedButton);
var Rect: TRect;
begin
  // determine the screen coordinates of the selected cell in the grid
  Rect := grAttr.CellRect (1, CurRow);
  // change the size of the button control
  button.Height := Rect.Bottom - Rect.Top - 1;
  button.Width := GetSystemMetrics(SM_CXVSCROLL);
  // change the top left corner of the button control
  button.Top := Rect.Top + 1;
  button.Left := Rect.Right - button.Width;
  // then show the button
  button.Visible := true;
  // and activate the grid
  ActiveControl := grAttr;
end;

{*******************************************************************************
  The procedure repaints object associated with selected property.
*******************************************************************************}
procedure TfmObjInspector.RePaintObject;
begin
  if ed.Visible then SetEdit (ed);
  if sb3pts.Visible then SetButton (sb3pts);
  if sbArr.Visible then SetButton (sbArr);
end;

procedure TfmObjInspector.edKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // if Up key is pressed then select previous Cell
  if (Key = VK_UP) and (CurRow > 0)
    then grAttr.Row := grAttr.Row - 1;

  // if Down key is pressed then select next Cell
  if (Key = VK_DOWN) and (CurRow < (grAttr.RowCount - 1))
    then grAttr.Row := grAttr.Row + 1;

  if (Key = VK_UP) or (Key = VK_DOWN) then Key := 0;
end;

procedure TfmObjInspector.sbArrClick(Sender: TObject);
begin
  if Pos ('Color', grAttr.Cells [0, grAttr.Row]) > 0 then begin
    // select current color in the color list box
    // and display Color form
    with fmColor.lbColor do
      ItemIndex := Items.IndexOf (grAttr.Cells[1,grAttr.Row]);
    fmColor.Show;
  end
  else begin
    // call the procedure filling list box by allowable values of selected property,
    // pass name and value of the property as parameters
    fmLB.FillLB (grAttr.Cells [0, grAttr.Row], grAttr.Cells [1, grAttr.Row]);
    // and display fmLB form
    fmLB.Show;
  end;
end;

procedure TfmObjInspector.grAttrDblClick(Sender: TObject);
var ListBox: TListBox;
begin
  if (grAttr.Row = CurRow) and sbArr.Visible then begin
    // change value of selected property to next in the list of available values
    if Pos ('Color', grAttr.Cells [0, grAttr.Row]) > 0
      // assign ListBox variable with Color list
      then ListBox := fmColor.lbColor
      // assign ListBox variable with list stored in the LB form
      else ListBox := fmLB.lb;

    // select next value in the list
    if ListBox.ItemIndex + 1 < ListBox.Items.Count
      then ListBox.ItemIndex := ListBox.ItemIndex + 1
      else ListBox.ItemIndex := 0;

    // change value of selected property in the Object Inspector
    if Pos ('Color', grAttr.Cells [0, grAttr.Row]) > 0
      then fmColor.lbColorMouseUp (Self,mbLeft, [], 0, 0)
      else fmLB.lbMouseUp(Self,mbLeft, [], 0, 0);
  end;

  if (grAttr.Row = CurRow) and sb3pts.Visible then begin
    // show form to change selected property
    sb3ptsClick(Self);
  end;

end;

procedure TfmObjInspector.FormDestroy(Sender: TObject);
begin
  // destroy bitmap for BitmapHandle property of graphic object
  bmp.Free;
end;

end.
