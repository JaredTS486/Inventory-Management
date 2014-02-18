{*******************************************************************************
 lb.pas: This form is used as Drop-down list box to change value of property
 in the Object Inspector.

 Written 4/30/99 by Natalya Chernokozova

 This program is meant to demonstrate the methods used to communicate with
 the Dymo Label Software programs via Low-Level OLE Automation Interface.

 This code was written and tested using Borland Delphi 3.0.

 Copyright 1999 Dymo-CoStar Corporation

 Permission to use, copy, modify, and distribute this software for any
 purpose and without fee is hereby granted.

*******************************************************************************}

unit lb;

interface

uses
  Windows, SysUtils, Classes, Graphics, Controls, Forms, StdCtrls, Decl;

type
  TfmLB = class(TForm)
    lb: TListBox;
    procedure FormShow(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure lbKeyPress(Sender: TObject; var Key: Char);
    procedure lbMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure FillLB (RowName, ActiveItem: String);
  end;

var
  fmLB: TfmLB;

type
  TArrString = array [0..16]of string;
const
  // each of arrays declared below are used to fill Drop-down list box
  // by allowable values for particular property

  cc_Boolean = 2;
  ca_Boolean: array [0..cc_Boolean - 1] of string = ('True', 'False');

  cc_Rotation = 4;
  ca_Rotation: array [0..cc_Rotation - 1] of string = ('0', '90', '180', '270');

  cc_BCPosition = 3;
  ca_BCPosition: array [0..cc_BCPosition - 1] of string = ('None','Above','Below');

  cc_GrSource = 4;
  ca_GrSource: array [0..cc_GrSource - 1] of string = ('File', 'Bitmap', 'Window', 'Clipboard');

  cc_Border = 3;
  ca_Border: array [0..cc_Border - 1] of string = ('No Border', 'Thin Border', 'Thick Border');

  cc_LINE = 2;
  ca_LINE: array [0..cc_LINE - 1] of string = ('Horizontal Line', 'Vertical Line');

  cc_Thick = 6;
  ca_Thick: array [0..cc_Thick - 1] of string = ('No Line', 'Thin line', 'Medium-Thin', 'Medium Line', 'Medium-Thick', 'Thick Line');

  cc_TextPos = 3;
  ca_TextPos: array [0..cc_TextPos - 1] of string = ('No text printed', 'Above the bar code', 'Below the bar code');

  cc_BCType = 17;
  ca_BCType: array [0..cc_BCType - 1] of string =
  ('Code 39 (Code 3 of 9)', 'Code 39 w/Mod 43 Checksum', 'Code 128 Auto', 'Code 128A',
   'Code 128B', 'Code 128C', 'Code 2 of 5', 'UPC A','UPC E', 'EAN 8',
    'EAN 13', 'Codabar', 'PostNET',
    'Code 39 Library, L - R', 'Code 39 Library R - L',
    'Codabar Library, L - R', 'Codabar Library, R - L');

  cc_Size = 3;
  ca_Size: array [0..cc_Size - 1] of string = ('Small', 'Medium', 'Large');

  cc_BCJustify = 3;
  ca_BCJustify: array [0..cc_BCJustify - 1] of string = ('Left Justify', 'Center Justify','Right Justify');

  cc_TxtJustify = 4;
  ca_TxtJustify: array [0..cc_TxtJustify - 1] of string = ('Left Justify', 'Center Justify','Right Justify', 'Center Block');

  cc_Format = 15;
  ca_Format: array [0..cc_Format - 1] of string =
  ('Blank', 'Friday, February 6, 1998', 'Friday, 6 February, 1998', 'February 6, 1998', '6 February, 1998',
   '2/6/1998', '6/2/1998', '2/6/98', '6/2/98', '2.6.98',
   '6.2.98', '1998-02-06', '1998-06-02', '6-Feb-98','Feb 6, 1998');

  cc_VJustify = 3;
  ca_VJustify: array [0..cc_VJustify - 1] of string = ('Justify to top of bounds', 'Center between top and bottom', 'Justify against bottom of bounds');

implementation
uses frmObjInspector;

const
  // the maximum number of items displayed in the drop-down list box
  MaxVisItems = 5;

{$R *.DFM}

{*******************************************************************************
  The procedure fills list box by allowable values for particular property.
    RowName    - property's name
    ActiveItem - current value of property.
*******************************************************************************}
procedure TfmLB.FillLB (RowName, ActiveItem: String);

  {-----------------------------------------------------------------------------
    The procedure fills Drop-down list box by items from array.
      arr   - one of allowable values array declared above
      count - length of the arr.
  -----------------------------------------------------------------------------}
  procedure GetItemsFromArr (arr: array of string; count: Integer);
  var Ind: Integer;
  begin
    // cleare list
    lb.Clear;
    // fill list
    for Ind := 0 to count - 1 do
      lb.Items.Add (arr[Ind]);
  end;

var i: Integer;
begin
  if (RowName = 'IsVariable') or (RowName = 'b9DigitOnly') or (RowName = 'bFilled') or (RowName = 'UseLeadingZeros')
  or (RowName = 'IncludeTime') or (RowName = 'b24Hour') or (RowName = 'Mirrored') or (RowName = 'Vertical')
  then begin
    GetItemsFromArr (ca_Boolean, cc_Boolean);
  end;

  //Any LabelObject:
  if RowName = 'Rotation' then begin
    GetItemsFromArr (ca_Rotation, cc_Rotation);
  end;

  //ADDRESS:
  if RowName = 'BarCodePosition' then begin
    GetItemsFromArr (ca_BCPosition, cc_BCPosition);
  end;

  //GRAPHIC:
  if RowName = 'GraphicSource' then begin
    GetItemsFromArr (ca_GrSource, cc_GrSource);
  end;

  //RECTANGLE:
  if RowName = 'Border' then begin
    GetItemsFromArr (ca_Border, cc_Border);
  end;

  //LINE:
  if RowName = 'Orient' then begin
    GetItemsFromArr (ca_LINE, cc_LINE);
  end;
  if RowName = 'Thickness' then begin
    GetItemsFromArr (ca_Thick, cc_Thick);
  end;

  //BARCODE:
  if RowName = 'TextPos' then begin
    GetItemsFromArr (ca_TextPos, cc_TextPos);
  end;
  if RowName = 'BCType' then begin
    GetItemsFromArr (ca_BCType, cc_BCType);
  end;
  if RowName = 'Size' then begin
    GetItemsFromArr (ca_Size, cc_Size);
  end;
  if RowName = 'Justify' then begin
    if LabObj.ObjType = ltBARCODE
       then GetItemsFromArr (ca_BCJustify, cc_BCJustify)
       else GetItemsFromArr (ca_TxtJustify, cc_TxtJustify);
  end;
  if RowName = 'Link' then begin
    // Fill list by names of Text, Address and Counter objects
    // represented in the label
     lb.Clear;
     lb.Items.Add('');
     for i:=1 to L.PrintObject.Objects.Count do
     if L.PrintObject.LabelObject(L.PrintObject.Objects.Item[i]).ObjType
        in [ltTEXT, ltADDRESS, ltCOUNTER]
        then lb.Items.Add(L.PrintObject.LabelObject(L.PrintObject.Objects.Item[i]).Name);
  end;

  //DateTime:
  if RowName = 'Format' then begin
    GetItemsFromArr (ca_Format, cc_Format);
  end;

  //TextAttributes:
  if RowName = 'VJustify' then begin
    GetItemsFromArr (ca_VJustify, cc_VJustify);
  end;

  // activate the current value in list
  lb.ItemIndex := lb.Items.IndexOf (ActiveItem);

end;

procedure TfmLB.FormShow(Sender: TObject);
var
   dx, dy: Integer;
   Ind, MaxWidth: Integer;
begin
  // determine maximum list width
  MaxWidth := fmObjInspector.Canvas.TextWidth(lb.Items[0]);
  for Ind := 1 to lb.Items.Count - 1 do
      if MaxWidth < fmObjInspector.Canvas.TextWidth(lb.Items[Ind])
         then MaxWidth := fmObjInspector.Canvas.TextWidth(lb.Items[Ind]);

  MaxWidth := MaxWidth + 5;
  // determine list height
  if lb.Items.Count > MaxVisItems then begin
    lb.Height := MaxVisItems * lb.ItemHeight + 2;
    MaxWidth := MaxWidth + GetSystemMetrics(SM_CXVSCROLL) + 2*GetSystemMetrics(SM_CXBORDER);
  end
  else begin
    lb.Height := lb.Items.Count * lb.ItemHeight + 2
  end;
  // set the LB form height the same
  fmLB.Height := lb.Height;

  // determine list width
  if MaxWidth > fmObjInspector.grAttr.ColWidths [1]
     then lb.Width := MaxWidth
     else lb.Width := fmObjInspector.grAttr.ColWidths [1] + 1;
  // set the LB form width the same
  fmLB.Width := lb.Width;

  // determine the screen coordinates of the grAttr’s client area
  dy := TControl(fmObjInspector.grattr).ClientOrigin.Y;
  dx := TControl(fmObjInspector.grAttr).ClientOrigin.X;

  // change the top left corner of the LB form
  fmLB.Top := fmObjInspector.sbArr.Top + fmObjInspector.sbArr.Height + dy;
  fmLB.Left := fmObjInspector.sbArr.Left + fmObjInspector.sbArr.Width - fmLB.Width + dx;

  // set focus to list box
  lb.SetFocus;
end;

procedure TfmLB.FormDeactivate(Sender: TObject);
begin
  // hide the LB form when the form loses focus
  if fmLB.Showing then fmLB.Hide;
  fmObjInspector.grAttr.Repaint;
end;

procedure TfmLB.lbKeyPress(Sender: TObject; var Key: Char);
begin
  // if Escape pressed hide the LB form
  if Ord (Key) = VK_ESCAPE then fmLB.Hide;

  // if Enter pressed then call lbMouseUp-procedure to update property value
  if Ord (Key) = VK_RETURN then lbMouseUp(Self,mbLeft, [], 0, 0);
end;

procedure TfmLB.lbMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  // change property in the Object Inspector to new value
  fmObjInspector.grAttr.Cells[1, CurRow] := lb.Items[lb.ItemIndex];
  fmObjInspector.ChangeAttr;
  // hide the LB form
  if fmLB.Showing then fmLB.Hide;
end;

end.
