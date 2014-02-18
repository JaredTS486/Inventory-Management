(*************************************************************************
 Decl.pas contains general declarations.
 Written 4/30/99 by Natalya Chernokozova

 This program is meant to demonstrate the methods used to communicate with
 the Dymo Label Software programs via Low-Level OLE Automation Interface.

 This code was written and tested using Borland Delphi 3.0.

 Copyright 1999 Dymo-CoStar Corporation

 Permission to use, copy, modify, and distribute this software for any
 purpose and without fee is hereby granted.

************************************************************************)

unit Decl;
interface
  uses Dymo_TLB;

const
  TWIPS = 1440;
  sDirectoriesKey = 'Software\DYMO\LabelWriter\Directories';
  sLabelDirName = 'Label Directory';

var
  // an object variable to communicate with DLS
  L:ILabelEngine;
  // array of object types
  ObjType: Array[0..7] of string = ('TEXT','ADDRESS','GRAPHIC','RECTANGLE','LINE','BARCODE','COUNTER','DATE_TIME');

  // variables for each object type
  LabObj:ILabelObject;
  TextObj:ITextObj;
  TextAttr:ITextAttributes;
  AddrObj:IAddressObj;
  GrObj:IGraphicObj;
  RectObj:IRectObj;
  LineObj:ILineObj;
  BarCodeObj:IBarCodeObj;
  CounterObj:ICounterObj;
  DateTimeObj:IDateTimeObj;

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
end.
