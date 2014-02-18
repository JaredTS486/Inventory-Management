{*******************************************************************************
 LblFunctions.pas contains general function declarations.
 Written 4/30/99 by Natalya Chernokozova

 This program is meant to demonstrate the methods used to communicate with
 the Dymo Label Software programs via DLL calls.

 This code was written and tested using Borland Delphi 3.0.

 Copyright 1999 Dymo-CoStar Corporation

 Permission to use, copy, modify, and distribute this software for any
 purpose and without fee is hereby granted.

*******************************************************************************}

unit LblFunctions;

interface

uses Windows, LblTypes;

Function GetLabelNames(Buf : PChar; nBytes : Integer) : Integer; stdcall; external 'LABELS.DLL'
Procedure GetLabelInfo(LabelInfo : PLABELINFO); stdcall; external 'LABELS.DLL'
Procedure SetZoom(Percent : Integer); stdcall; external 'LABELS.DLL'
Procedure DrawLabel(DC: HDC); stdcall; external 'LABELS.DLL'
Procedure SetShadow(State : BOOL); stdcall; external 'LABELS.DLL'
Procedure NewLabel(Name : PChar); stdcall; external 'LABELS.DLL'
Function IsModified : BOOL; stdcall; external 'LABELS.DLL'
Function ReadLabelFile(FileName : PChar) : BOOL; stdcall; external 'LABELS.DLL'
Function WriteLabelFile(FileName : PChar) : BOOL; stdcall; external 'LABELS.DLL'
Function PrintLabel(DeviceName : PChar; Port : PChar; Quantity : Integer; ShowDialog : BOOL) : Bool; stdcall; external 'LABELS.DLL'
Function Output(DC: HDC) : BOOL; stdcall; external 'LABELS.DLL'
Function OutputXY(X,Y : Integer; DC : HDC) : BOOL; stdcall; external 'LABELS.DLL'
Function AddObject(ObjType, ObjName : PChar; Size: TRect; Rotation : Integer; Attrib : Pointer) : THandle; stdcall; external 'LABELS.DLL'
Function EnumLabelObjects(Buf : PChar; nBytes : Integer) : Integer; stdcall; external 'LABELS.DLL'
Function DeleteLabelObject(ID : TObjectID) : BOOL; stdcall; external 'LABELS.DLL'
Function BringObjectToFront(ID : TObjectID) : BOOL; stdcall; external 'LABELS.DLL'
Function SendObjectToBack(ID : TObjectID) : BOOL; stdcall; external 'LABELS.DLL'
Function WhichObject(X,Y : Integer) : TObjectID; stdcall; external 'LABELS.DLL'
Function ObjectsAt(X,Y : Integer; Buf : PChar; nBytes : Integer) : Integer; stdcall; external 'LABELS.DLL'
Function SetAttributes(ID : TObjectID; Attrib : Pointer) : BOOL; stdcall; external 'LABELS.DLL'
Function GetAttributes(ID : TObjectID; Attrib : Pointer) : Integer; stdcall; external 'LABELS.DLL'
Function GetInfo(ObjectInfo : POBJECTINFO) : BOOL; stdcall; external 'LABELS.DLL'
Function SetInfo(ObjectInfo : POBJECTINFO) : BOOL; stdcall; external 'LABELS.DLL'
Function ValidateBarCode(Text : PChar; BCType : Integer) : Integer; stdcall; external 'LABELS.DLL'
Function EnumVariableObjects(Buf : PChar; nBytes : Integer) : Integer; stdcall; external 'LABELS.DLL'
Function CopyToClipboard(Buf : PObjectID) : Boolean; stdcall; external 'LABELS.DLL'
Function PasteFromClipboard : Boolean; stdcall; external 'LABELS.DLL'
Function FindObject(Name :PChar) : TObjectID; stdcall;  external 'LABELS.DLL'
Function SetModified(State : BOOL) : BOOL; stdcall;  external 'LABELS.DLL'
Function GetLabelMargins(Margins: PRECT) : BOOL; stdcall;  external 'LABELS.DLL'
Procedure SetPrinterModeState(State : BOOL); stdcall; external 'LABELS.DLL'
procedure SaveLastLabel(); stdcall; external 'LABELS.DLL'
function LoadLastLabel(): BOOL; stdcall; external 'LABELS.DLL'
procedure SetLabelBackground(Color: Integer); stdcall; external 'LABELS.DLL'
function GetLabelInfoByName(LabelName, PaperName: PChar; pWidth, pHeight: Pointer): Integer; stdcall; external 'LABELS.DLL'
function SetAttributesEx(ID: TObjectID; Attrib: Pointer): BOOL; stdcall; external 'LABELS.DLL'
function GetAttributesEx(ID: TObjectID; Attrib: Pointer): Integer; stdcall; external 'LABELS.DLL'
procedure SetPrintDefaultStringMode(Value: BOOL); stdcall; external 'LABELS.DLL'
function GetPrintDefaultStringMode: BOOL; stdcall; external 'LABELS.DLL'

implementation

end.
