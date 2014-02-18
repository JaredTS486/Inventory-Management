{*******************************************************************************
 Lbltypes.pas contains definitions for all external structures and types.
 Written 4/30/99 by Natalya Chernokozova

 This program is meant to demonstrate the methods used to communicate with
 the Dymo Label Software programs via DLL calls.

 This code was written and tested using Borland Delphi 3.0.

 Copyright 1999 Dymo-CoStar Corporation

 Permission to use, copy, modify, and distribute this software for any
 purpose and without fee is hereby granted.

*******************************************************************************}

unit Lbltypes;

interface
  uses Windows;

type
	TObjectID = TObject;     { This is an object handle. }
	PObjectID = ^TObject;

	{ The LabelInfo structure is used to return information about the selected label name}
	TLABELINFO = Record
		LabelName : Array[0..63] of char;
		PaperName : Array[0..63] of char;
		PaperSize : TPoint;
		BitmapSize : Tpoint;
		LabelCount : Integer;
		LabelSize	: TPoint;
	End;
	PLABELINFO = ^TLabelInfo;

	{ The ObjectInfo structure is used to get and set information that is applicable to all printable object types }
	TOBJECTINFO = Record
		ObjID : TObjectID;	{ This is the object reference pointer, and is used as an object handle}
		ObjType : Integer;	{ Type of Object }
		ObjName : Array[0..63] of char;
		Size : TRect;
		Rotate : Integer;	{ Accepts 0, 90, 180, and 270 }
	End;
	POBJECTINFO = ^TOBJECTINFO;

(*	This structure is used for setting or retrieving information about the
	text that is displayed by Text, Address, Counter, and DateTime objects. With it,
	one can determine the fonts, text, justification, and other settings.
*)
	TTextBlockAttributes = Record
		Text : PCHAR;						{ Text to be displayed }
		Font1 : Array[0..63] of char;	{ in form "Fontname, <size>, style" }
		Font2 : Array[0..63] of char;	{ E.G. "Times New Roman, 12, Bold, Italic, Underline, Strikeout"}
		Justify : Integer; 				{ 0 = Left, 1 = Center, 2 = Right, 3 = Center Block}
			// THE MSB ($80000000) of Justify is used to control ShrinkToFit. If set, then STF is DISABLED.
		VertJustify : Integer; 			{ 0 = Top, 1 = Center, 2 = Bottom}
		bMirrored : BOOL;					{ TRUE = Text is mirrored, ewelse Normal }
		bVerticalText : BOOL;				{ Text is printed vertically, else Normal }
		TextColor : COLORREF;				{ Text color }
		BackGroundColor : COLORREF;	{ Text Background }
		IsRichText: BOOL;						// set this flag if data in text is RTF.
		Effects: Integer;
	End;
	PTextBlockAttributes = ^TTextBlockAttributes;

{
	This structure is used for setting or retrieving information about the
	text that is displayed by the circular text objects. With it,
	one can determine the fonts, text, and other settings.
}
	TDisplayMode = (dmCircleTextAtTop, dmCircleTextAtBottom,
		dmArcTextAtTop, dmArcTextAtBottom);
	TCircularTextBlockAttributes = record
		Text: PCHAR;								// text to be displayed
		Font: array[0..63] of char;	// in form of "font name, <size>, style"
		bMirrored: BOOL;						// TRUE if Text is mirrored, else Normal
		DisplayMode: TDisplayMode;  // Full Circle, Upper Arc, or Lower Arc
		TextColor: COLORREF;				// text color
		BackGroundColor: COLORREF;	// text background color
		bCenteredOnLabel: BOOL;
	end;
	PCircularTextBlockAttributes = ^TCircularTextBlockAttributes;

{	This structure is used for setting or retrieving information about an Address Object }
	TAddressAttributes = record
		TextInfo: PTextBlockAttributes;	{ if nil then ignored}
		BarCodePos: Integer;	{ 0 = None, 1 = Top, 2 = Bottom }
		b9DigitOnly: BOOL;		{ if TRUE, then don't print bar codes for 5 digit ZIPS }
		bFixedAddr: BOOL; { Set to TRUE if the address is not to be automatically filled }
		bFormatted: BOOL; { ReadOnly, TRUE if the address text's font styles have been formatted. }
	end;
	PAddressAttributes = ^TAddressAttributes;

{	This structure is used for setting or retrieving information about a Text Object }
	TTextObjAttributes = Record
		TextInfo : PTextBlockAttributes;	{ if nil then ignored}
		bVariable : BOOL;						{ if True, then this is a variable text object }
	End;
	PTextObjAttributes = ^TTextObjAttributes;

	// This structure is used for setting or retrieving information
	// about a circular text Object
	TCircularTextObjAttributes = Record
		TextInfo: PCircularTextBlockAttributes;	// ignored if set to nil
		bVariable: BOOL; // true if this is a variable circular text object
	End;
	PCircularTextObjAttributes = ^TCircularTextObjAttributes;

{	This structure is used for setting or retrieving information about a Graphic Object }
	TGraphicAttributes = Record
		GraphicSource : Integer;				{ 0 = File, FileName has name }
														{ 1 = hBitmap, Metafile or Enhanced Metafile. Picture has handle }
														{ 2 = Window, Window has hWind to capture }
														{ 3 = Get Image from Clipboard }
		FileName : Array[0..259] of char;	{ Name of file displayed}
		Picture : THANDLE;
		Palette : HPALETTE;
		Window : HWND;
		Border : Integer;							{ 0 = None, 1 = Thin,  2 = Thick}
		BorderColor : COLORREF;				{ Border color }
	End;
	PGraphicAttributes = ^TGraphicAttributes;

{	This structure is used for setting or retrieving information about a Line Object }
	TLineAttributes = Record
		Length : Integer;							{ Length, in TWIPS }
		Orient : Integer;							{ 0 = Horizontal, 1 = Vertical }
		Thickness : Integer;					{ 0 = None, 5 = Thickest }
		LineColor : COLORREF;					{ Line Color}
	End;
	PLineAttributes = ^TLineAttributes;

{	This structure is used for setting or retrieving information about a Rectangle Object }
	TRectAttributes = Record
		bFilled : BOOL;							{ Filled if TRUE }
		Border : Integer;							{ 0 = None, 1 = Thin,  2 = Thick}
		FillColor : COLORREF;				{ Fill color }
		BorderColor : COLORREF;				{ Border color }
	End;
	PRectAttributes = ^TRectAttributes;

{	This structure is used for setting or retrieving information about a Counter Object }
	TCounterAttributes = Record
		TextInfo : PTextBlockAttributes;	{ if nil then ignored}
		PreText : Array[0..31] of char;	{ Text to Prepend to value }
		PostText : Array[0..31] of char; { Text to Postpend to value }
		Start : Integer;						{ Start counter at... Value }
		Current : Integer;					{ Current value of counter object, incremented w/each print }
		Width : Integer;						{ Format numeric width }
		Increment : Integer;					{ Increment by - Decrement if negative }
		bLeadingZeros : BOOL;				{ Add leading zeros if TRUE }
	End;
	PCounterAttributes = ^TCounterAttributes;

{	This structure is used for setting or retrieving information about a Date/Time Object }
	TDateTimeAttributes = Record
		TextInfo : PTextBlockAttributes;	{ if nil then ignored}
		PreText : Array[0..31] of char;	{ Text to Prepend to date/time }
		PostText : Array[0..31] of char; { Text to Postpend to date/time }
		DateFormat : Integer;				{ Sets the date format - See Reference }
		bIncludeTime : BOOL;					{ Includes time if TRUE }
		b24Hour : BOOL;						{ Formats time as 0-23 hours if TRUE, else 1-12}
	End;
	PDateTimeAttributes = ^TDateTimeAttributes;

{	This structure is used for setting or retrieving information about a Bar Code Object }
	TBarcodeAttributes = Record
		Text : Array[0..255] of char;	{ Text to format }
		Font : Array[0..63] of char;	{ in form "Fontname, <size>, style" }
		HRTextPos : Integer;				{ 0 = None, 1 = Top, 2 = Bottom }
		BCType : Integer;					{ Specifies Bar Code Type - See Reference }
		BCRatio : Integer;					{ 0 = Small, 1 = Medium, 2 = Large  (1:1, 1.5:1, or 2:1) }
		Justify : Integer; 				{ 0 = Left, 1 = Center, 2 = Right, 3 = Center Block}
		Link : TObjectID;					{ Linked to this object - none if nil }
	End;
	PBarcodeAttributes = ^TBarcodeAttributes;

implementation

end.
