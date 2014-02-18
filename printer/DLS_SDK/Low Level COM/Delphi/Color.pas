{*******************************************************************************
 Color.pas: This form is used to change a color properties for object.
 Written 4/30/99 by Natalya Chernokozova

 This program is meant to demonstrate the methods used to communicate with
 the Dymo Label Software programs via Low-Level OLE Automation Interface.

 This code was written and tested using Borland Delphi 3.0.

 Copyright 1999 Dymo-CoStar Corporation

 Permission to use, copy, modify, and distribute this software for any
 purpose and without fee is hereby granted.

*******************************************************************************}

unit Color;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ColorGrd, StdCtrls;

type
  TfmColor = class(TForm)
    sbColor: TScrollBox;
    cgColor: TColorGrid;
    lbColor: TListBox;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure cgColorClick(Sender: TObject);
    procedure lbColorKeyPress(Sender: TObject; var Key: Char);
    procedure lbColorMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lbColorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ItemInView(Ind: Integer);
    function ItemIsVisible (Ind: Integer): Boolean;
  end;

var
  fmColor: TfmColor;

const
  // the maximum number of items displayed in the color list
  VisItemsCount = 4;

implementation

uses frmObjInspector;

{$R *.DFM}

procedure TfmColor.FormShow(Sender: TObject);
var
   dx, dy: Integer;
   MaxWidth: Integer;
begin
  // in the Color form are the Color Names list box (lbColor)
  // and the Color Grid (cgColor) contained in the scroll box (sbColor)

  // determine width of the scroll box
  MaxWidth := fmObjInspector.Canvas.TextWidth('clFuchsia');
  MaxWidth := MaxWidth + cgColor.Width + GetSystemMetrics(SM_CXVSCROLL) + 2*GetSystemMetrics(SM_CXBORDER);

  if MaxWidth > fmObjInspector.grAttr.ColWidths [1]
     then sbColor.Width := MaxWidth
     else sbColor.Width := fmObjInspector.grAttr.ColWidths [1] + 1;

  // set Color form width the same
  fmColor.Width := sbColor.Width;
  // determine width of the list box
  lbColor.Width := sbColor.Width - cgColor.Width - GetSystemMetrics(SM_CXVSCROLL) - 2*GetSystemMetrics(SM_CXBORDER) + 1;

  // determine the screen coordinates of the grAttr’s client area
  dy := TControl(fmObjInspector.grAttr).ClientOrigin.Y;
  dx := TControl(fmObjInspector.grAttr).ClientOrigin.X;

  // determine the top left corner of the Color form
  fmColor.Top := fmObjInspector.sbArr.Top + fmObjInspector.sbArr.Height + dy;
  fmColor.Left := fmObjInspector.sbArr.Left + fmObjInspector.sbArr.Width - fmColor.Width + dx;

  // select current value for property
  sbColor.VertScrollBar.Position := lbColor.ItemIndex  * lbColor.ItemHeight;
  // scroll the sbColor to view Ind-item
  ItemInView(lbColor.ItemIndex);
  lbColor.SetFocus;
end;

procedure TfmColor.FormCreate(Sender: TObject);
begin
  fmColor.Height := sbColor.Height;
end;

procedure TfmColor.FormDeactivate(Sender: TObject);
begin
  // hide the Color form when the form loses focus
  if Showing then Hide;
  fmObjInspector.grAttr.Repaint;
end;

procedure TfmColor.cgColorClick(Sender: TObject);
begin
  // set item in the Color list box the same as selected in Color Grid
  lbColor.ItemIndex := cgColor.Selection;
  lbColorMouseUp(Self,mbLeft,[],0,0);
end;

procedure TfmColor.lbColorKeyPress(Sender: TObject; var Key: Char);
begin
  // if Escape pressed hide the Color form
  if Ord (Key) = VK_ESCAPE then Hide;

  // if Enter pressed then call lbColorMouseUp-procedure
  // to update Color property value
  if Ord (Key) = VK_RETURN then lbColorMouseUp(Self,mbLeft, [], 0, 0);
end;

procedure TfmColor.lbColorMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  // change Color property in the Object Inspector to new Color value
  fmObjInspector.grAttr.Cells[1, CurRow] := lbColor.Items[lbColor.ItemIndex];
  fmObjInspector.ChangeAttr;
  // hide the Color form
  if Showing then Hide;
end;

procedure TfmColor.lbColorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  NewItemInd : Integer;
begin
  // process only UP, DOWN, PageUP and PageDOWN keys
  if (Key <> VK_UP) and (Key <> VK_DOWN) and
     (Key <> VK_NEXT) and (Key <> VK_PRIOR) then Exit;

  NewItemInd := lbColor.ItemIndex;

  // if UP key is pressed then scrolls the sbColor up by 1
  if (Key = VK_UP) and (lbColor.ItemIndex > 0)
    then NewItemInd := lbColor.ItemIndex - 1;

  // if DOWN key is pressed then scrolls the sbColor down by 1
  if (Key = VK_DOWN) and (lbColor.ItemIndex < lbColor.Items.Count - 1)
    then NewItemInd := lbColor.ItemIndex + 1;

  // if PageUP key is pressed then scrolls the sbColor up by VisItemsCount
  if (Key = VK_PRIOR) then begin
    if (lbColor.ItemIndex - VisItemsCount + 1 > 0)
      then NewItemInd := lbColor.ItemIndex - VisItemsCount + 1
      else NewItemInd := 0;
    lbColor.ItemIndex := NewItemInd;
    Key := 0;
  end;

  // if PageDOWN key is pressed then scrolls the sbColor down by VisItemsCount
  if (Key = VK_NEXT) then begin
    if (lbColor.ItemIndex + VisItemsCount - 1 < lbColor.Items.Count - 1)
      then NewItemInd := lbColor.ItemIndex + VisItemsCount - 1
      else NewItemInd := lbColor.Items.Count - 1;
    lbColor.ItemIndex := NewItemInd;
    Key := 0;
  end;

  // scroll sbColor to view selected item
  ItemInView(NewItemInd);
end;

{*******************************************************************************
  The function returns true if Ind-item is in view else returns false.
*******************************************************************************}
function TfmColor.ItemIsVisible (Ind: Integer): Boolean;
  var ItemPos: Integer;
begin
  ItemPos := lbColor.ItemRect(Ind).Top;
  Result := ((ItemPos >= sbColor.VertScrollBar.ScrollPos) and
             (ItemPos < (sbColor.VertScrollBar.ScrollPos + lbColor.ItemHeight*VisItemsCount)))
end;

{*******************************************************************************
  The procedure scrolls the sbColor to view Ind-item.
*******************************************************************************}
procedure TfmColor.ItemInView(Ind: Integer);
begin
  if not ItemIsVisible (Ind) then begin
    if lbColor.ItemRect(Ind).Top < sbColor.VertScrollBar.ScrollPos
      // Ind-item is higher
      then sbColor.VertScrollBar.Position := Ind  * lbColor.ItemHeight
      // Ind-item is lower
      else sbColor.VertScrollBar.Position := Ind * lbColor.ItemHeight - lbColor.ItemHeight*(VisItemsCount - 1) ;
  end;
end;

end.
