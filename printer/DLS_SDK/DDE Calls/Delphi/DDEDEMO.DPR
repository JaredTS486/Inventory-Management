program Ddedemo;
(*
 DDEDEMO Project file

 This is the DDEDEMO project file.

 Written 1/97 by David Block
 Modified 4/99 by Natalya Chernokozova

 This code was written and tested using Delphi 3.0, under Windows 95.

 Copyright 1996,97,99 Dymo-CoStar Corporation

 Permission to use, copy, modify, and distribute this software for any
 purpose and without fee is hereby granted.
*)

uses
  Forms,
  Main in 'MAIN.PAS' {Form1},
  Textutil in 'TEXTUTIL.PAS';

{$R *.RES}

begin
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
