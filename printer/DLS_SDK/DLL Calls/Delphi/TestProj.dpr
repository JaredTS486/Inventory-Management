(*************************************************************************
 TestProj.dpr: The project file of the application.
 Written 4/30/99 by Natalya Chernokozova

 This program is meant to demonstrate the methods used to communicate with
 the Dymo Label Software programs via DLL calls.

 This code was written and tested using Borland Delphi 3.0.

 Copyright 1999 Dymo-CoStar Corporation

 Permission to use, copy, modify, and distribute this software for any
 purpose and without fee is hereby granted.

************************************************************************)

program TestProj;

uses
  Forms,
  MainFrm in 'MainFrm.pas' {fmMain},
  frmObjInspector in 'frmObjInspector.pas' {fmObjInspector},
  TextEditor in 'TextEditor.pas' {fmTextEditor},
  lb in 'lb.pas' {fmLB},
  Color in 'Color.pas' {fmColor},
  Wnds in 'Wnds.pas' {fmWnds},
  Lbltypes in 'Lbltypes.pas',
  LblFunctions in 'Lblfunctions.pas',
  Decl in 'decl.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Delphi DLL Call Demo';
  Application.CreateForm(TfmMain, fmMain);
  Application.CreateForm(TfmObjInspector, fmObjInspector);
  Application.CreateForm(TfmTextEditor, fmTextEditor);
  Application.CreateForm(TfmLB, fmLB);
  Application.CreateForm(TfmColor, fmColor);
  Application.CreateForm(TfmWnds, fmWnds);
  Application.Run;
end.
