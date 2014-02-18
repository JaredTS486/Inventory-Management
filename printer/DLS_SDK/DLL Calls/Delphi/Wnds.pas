(*************************************************************************
 Wnds.pas: This form is used to select a window for a graphic object.
 Written 4/30/99 by Natalya Chernokozova

 This program is meant to demonstrate the methods used to communicate with
 the Dymo Label Software programs via DLL calls.

 This code was written and tested using Borland Delphi 3.0.

 Copyright 1999 Dymo-CoStar Corporation

 Permission to use, copy, modify, and distribute this software for any
 purpose and without fee is hereby granted.

************************************************************************)

unit Wnds;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, ExtCtrls, StdCtrls;

type
  TfmWnds = class(TForm)
    buSelect: TButton;
    buCancel: TButton;
    paWnds: TPanel;
    grWnds: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GetAllWnds;
  end;

var
  fmWnds: TfmWnds;

implementation

{$R *.DFM}

{*******************************************************************************
  The procedure fills the grid by window's captions and handles.
*******************************************************************************}
procedure TfmWnds.GetAllWnds;
const
  PStr2: PChar ='                                                  ';
var
  hWnd, hWndFirst, hWndLast: Integer;
  Ind, res, TextLen: Integer;
  pWndName: PChar;
begin
  hWnd := GetActiveWindow;
  hWndFirst := GetWindow(hWnd,GW_HWNDFIRST);
  hWndLast := GetWindow(hWnd,GW_HWNDLAST);
  Ind := 0;
  grWnds.RowCount := 2;
  repeat
    hWnd := hWndFirst;
    TextLen := GetWindowTextLength(hWnd);
    If TextLen > 0 then begin
        pWndName := StrAlloc (TextLen + 1);
        res := GetWindowText (hWnd, pWndName, TextLen + 1);
        if res <> 0 then begin
           Inc (Ind);
           grWnds.RowCount := Ind + 1;
           grWnds.Cells[0,Ind] := IntToStr (hWnd);
           grWnds.Cells[1,Ind] := pWndName;
        end;
        StrDispose (pWndName);
    end;
    if hWnd <> hWndLast then hWndFirst := GetWindow(hWnd,GW_HWNDNEXT);
  until hWnd = hWndLast;
end;

procedure TfmWnds.FormCreate(Sender: TObject);
begin
  grWnds.ColWidths[1] := grWnds.Width - grWnds.ColWidths[0] - GetSystemMetrics(SM_CXVSCROLL) - 5;
  grWnds.Cells [0,0] := 'WndHandle';
  grWnds.Cells [1,0] := 'WndTitle';
end;

procedure TfmWnds.FormShow(Sender: TObject);
begin
  // fill the grid
  GetAllWnds;
  grWnds.SetFocus;
end;

end.
