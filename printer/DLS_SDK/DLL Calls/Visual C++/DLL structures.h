// DLL structures.h : header file
//

// Dymo Label Software DLL structures definition
#include <windows.h>

typedef struct tagLABELINFO 
{
	char LabelName[64];
	char PaperName[64];
	POINT PaperSize;
	POINT BitmapSize;
	int LabelCount;
	POINT LabelSize;
} TLABELINFO;
typedef TLABELINFO* PLABELINFO;

typedef int TObjectID;
typedef TObjectID* POBJECTID;

typedef struct tagObjectInfo
{
	TObjectID ObjID;
	int ObjType;
	char ObjName[64];
	RECT Size;
	int Rotate;
} TOBJECTINFO;
typedef TOBJECTINFO* POBJECTINFO;

typedef struct tagTTextBlockAttributes
{
	char* Text;
	char Font1[64];
	char Font2[64];
	int Justify;
	int VertJustify;
	BOOL bMirrored;
	BOOL bVerticalText;
	COLORREF TextColor;
	COLORREF BackgroundColor;
  BOOL IsRichText;
  int Effects;
} TTextBlockAttributes;
typedef TTextBlockAttributes* PTextBlockAttributes;

typedef struct tagTAddressAttributes
{
	PTextBlockAttributes TextInfo;
	int BarCodePos;
	BOOL b9DigitOnly;
  BOOL bFixedAddr;
  BOOL bFormatted;
} TAddressAttributes;
typedef TAddressAttributes* PAddressAttributes;

typedef struct tagTTextAttributes
{
	PTextBlockAttributes TextInfo;
	BOOL bVariable;
} TTextAttributes;
typedef TTextAttributes* PTextAttributes;

typedef struct tagTGraphicAttributes
{
	int GraphicSource;
	char FileName[260];
	HANDLE Picture;
	HPALETTE Palette;
	HWND Window;
	int Border;
	COLORREF BorderColor;
} TGraphicAttributes;
typedef TGraphicAttributes* PGraphicAttributes;

typedef struct tagTLineAttributes
{
	int Length;
	int Orient;
	int Thickness;
	COLORREF LineColor;
} TLineAttributes;
typedef TLineAttributes* PLineAttributes;

typedef struct tagTRectAttributes
{
	BOOL bFilled;
	int Border;
	COLORREF BorderColor;
	COLORREF FillColor;
} TRectAttributes;
typedef TRectAttributes* PRectAttributes;

typedef struct tagTCounterAttributes
{
	PTextBlockAttributes TextInfo;
	char PreText[32];
	char PostText[32];
	int Start;
	int Current;
	int Width;
	int Increment;
	BOOL bLeadingZeros;
} TCounterAttributes;
typedef TCounterAttributes* PCounterAttributes;

typedef struct tagTDateTimeAttributes
{
	PTextBlockAttributes TextInfo;
	char PreText[32];
	char PostText[32];
	int DateFormat;
	BOOL bIncludeTime;
	BOOL b24Hour;
} TDateTimeAttributes;
typedef TDateTimeAttributes* PDateTimeAttributes;

typedef struct tagTBarcodeAttributes
{
	char Text[256];
	char Font[64];
	int HRTextPos;
	int BCType;
	int BCRatio;
	int Justify;
	TObjectID Link;
} TBarcodeAttributes;
typedef TBarcodeAttributes* PBarcodeAttributes;