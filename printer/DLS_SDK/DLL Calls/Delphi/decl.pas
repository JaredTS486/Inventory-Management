(*************************************************************************
 Decl.pas contains general declarations.
 Written 4/30/99 by Natalya Chernokozova

 This program is meant to demonstrate the methods used to communicate with
 the Dymo Label Software programs via DLL calls.

 This code was written and tested using Borland Delphi 3.0.

 Copyright 1999 Dymo-CoStar Corporation

 Permission to use, copy, modify, and distribute this software for any
 purpose and without fee is hereby granted.

************************************************************************)

unit Decl;
interface
  uses SysUtils, Lbltypes;

const
  TWIPS = 1440;
  sDirectoriesKey = 'Software\DYMO\LabelWriter\Directories';
  sLabelDirName = 'Label Directory';

var
  // array of object types
  ObjType: Array[0..7] of string = ('TEXT','ADDRESS','GRAPHIC','RECTANGLE','LINE','BARCODE','COUNTER','DATE-TIME');


  LabelInfo: TLABELINFO;
  ObjectInfo: TOBJECTINFO;
  TextBlockAttr: TTextBlockAttributes;
  // variables for each object type
  AddrAttr: TAddressAttributes;
  TextAttributes: TTextObjAttributes;
  GraphicAttr: TGraphicAttributes;
  LineAttr: TLineAttributes;
  RectAttr: TRectAttributes;
  CounterAttr: TCounterAttributes;
  DateTimeAttr: TDateTimeAttributes;
  BarcodeAttributes: TBarcodeAttributes;

  ObjectList : PChar;   // all label's objects
  ObjectCount: Integer; // label's object count

  LabelDirName: String;
  
const
  ltTEXT = 0;
  ltADDRESS = 1;
  ltGRAPHIC = 2;
  ltRECTANGLE = 3;
  ltLINE = 4;
  ltBARCODE = 5;
  ltCOUNTER = 6;
  ltDATE_TIME = 7;

implementation

initialization
  TextAttributes.TextInfo := @TextBlockAttr;
  AddrAttr.TextInfo := @TextBlockAttr;
  CounterAttr.TextInfo := @TextBlockAttr;
  DateTimeAttr.TextInfo := @TextBlockAttr;
  ObjectList := StrAlloc (1);
  StrPCopy (ObjectList, '');
  ObjectCount := 0;

finalization
  if TextBlockAttr.Text <> nil then StrDispose (TextBlockAttr.Text);
  StrDispose (ObjectList);
end.
