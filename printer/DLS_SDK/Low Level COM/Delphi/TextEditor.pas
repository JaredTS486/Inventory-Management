(*************************************************************************
 TextEditor.pas: This form is used to change a text property for object.
 Written 4/30/99 by Natalya Chernokozova

 This program is meant to demonstrate the methods used to communicate with
 the Dymo Label Software programs via Low-Level OLE Automation Interface.

 This code was written and tested using Borland Delphi 3.0.

 Copyright 1999 Dymo-CoStar Corporation

 Permission to use, copy, modify, and distribute this software for any
 purpose and without fee is hereby granted.

************************************************************************)

unit TextEditor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls;

type
  TfmTextEditor = class(TForm)
    meText: TMemo;
    pa: TPanel;
    buOk: TButton;
    buCancel: TButton;
    procedure buCancelClick(Sender: TObject);
    procedure buOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTextEditor: TfmTextEditor;

implementation

{$R *.DFM}

procedure TfmTextEditor.buCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmTextEditor.buOkClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfmTextEditor.FormShow(Sender: TObject);
begin
  ActiveControl := buOk;
  meText.SetFocus;
  meText.SelStart := 0;
end;

end.
