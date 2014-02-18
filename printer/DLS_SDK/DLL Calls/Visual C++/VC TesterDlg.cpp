//***********************************************************************
// VCTESTERDLG.CPP
// Written 05/17/99 by Alexei Zapari
//
// This implements main MFC application dialog with ID: IDD_VCTESTER_DIALOG.
//
// This program is meant to demonstrate the methods used to communicate with
// the Dymo Label Software DLL (directly) from C++.
//
// This code was written and tested using MS Visual C++ 6.0, under Windows 95.
//
// Copyright 1996,2002 DYMO Corporation
//
// Permission to use, copy, modify, and distribute this software for any
// purpose and without fee is hereby granted.
//
//***********************************************************************

// VC TesterDlg.cpp : implementation file
//

#include "stdafx.h"
#include "VC Tester.h"
#include "VC TesterDlg.h"
#include "PrintLabelDlg.h"
#include "OutputXYDlg.h"
#include "ValidateBarCodeDlg.h"
#include "ZoomDlg.h"
#include "FindObjectDlg.h"
#include "AddObjectDlg.h"
#include "TextObjectDlg.h"
#include "AddressObjectDlg.h"
#include "GraphicObjectDlg.h"
#include "RectangleObjectDlg.h"
#include "LineObjectDlg.h"
#include "BarCodeObjectDlg.h"
#include "CounterObjectDlg.h"
#include "DateTimeObjectDlg.h"
#include <afxtempl.h>
#include <afxctl.h>

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

///////////////////////////////////////////////////////////////////////////////
// DLL linkage (temporary)
#include "DLL structures.h"

HINSTANCE hLib;

BOOL (WINAPI *READLABELFILE)(LPCSTR);
#define ReadLabelFile(FileName) ((*READLABELFILE)(FileName))

BOOL (WINAPI *WRITELABELFILE)(LPCSTR);
#define WriteLabelFile(FileName) ((*WRITELABELFILE)(FileName))

BOOL (WINAPI *PRINTLABEL)(LPCSTR, LPCSTR, int, BOOL);
#define PrintLabel(DeviceName, Port, Quantity, bShowDialog) ((*PRINTLABEL)(DeviceName, Port, Quantity, bShowDialog))

BOOL (WINAPI *OUTPUT)(HDC);
#define Output(hDC) ((*OUTPUT)(hDC))

BOOL (WINAPI *OUTPUTXY)(int, int, HDC);
#define OutputXY(X, Y, hDC) ((*OUTPUTXY)(X, Y, hDC))

void (WINAPI *DRAWLABEL)(HDC);
#define DrawLabel(hDC) ((*DRAWLABEL)(hDC))

void (WINAPI *SETZOOM)(int);
#define SetZoom(Percent) ((*SETZOOM)(Percent))

void (WINAPI *SETSHADOW)(BOOL);
#define SetShadow(State) ((*SETSHADOW)(State))

void (WINAPI *GETLABELINFO)(PLABELINFO);
#define GetLabelInfo(LabelInfo) ((*GETLABELINFO)(LabelInfo))

int (WINAPI *GETLABELNAMES)(char*, int);
#define GetLabelNames(Buf, nBytes) ((*GETLABELNAMES)(Buf, nBytes))

void (WINAPI *NEWLABEL)(LPCSTR);
#define NewLabel(Name) ((*NEWLABEL)(Name))

BOOL (WINAPI *ISMODIFIED)(void);
#define IsModified() ((*ISMODIFIED)())

BOOL (WINAPI *SETMODIFIED)(BOOL);
#define SetModified(State) ((*SETMODIFIED)(State))

HANDLE (WINAPI *ADDOBJECT)(LPCSTR, LPCSTR, RECT, int, void*);
#define AddObject(ObjType, ObjName, Size, Rotation, Attrib) ((*ADDOBJECT)(ObjType, ObjName, Size, Rotation, Attrib))

int (WINAPI *ENUMLABELOBJECTS)(char*, int);
#define EnumLabelObjects(Buf, nBytes) ((*ENUMLABELOBJECTS)(Buf, nBytes))

int (WINAPI *ENUMVARIABLEOBJECTS)(char*, int);
#define EnumVariableObjects(Buf, nBytes) ((*ENUMVARIABLEOBJECTS)(Buf, nBytes))

TObjectID (WINAPI *WHICHOBJECT)(int, int);
#define WhichObject(X, Y) ((*WHICHOBJECT)(X, Y))

int (WINAPI *OBJECTSAT)(int, int, char*, int);
#define ObjectsAt(X, Y, Buf, nBytes) ((*OBJECTSAT)(X, Y, Buf, nBytes))

BOOL (WINAPI *COPYTOCLIPBOARD)(POBJECTID);
#define CopyToClipboard(Buf) ((*COPYTOCLIPBOARD)(Buf))

BOOL (WINAPI *PASTEFROMCLIPBOARD)(void);
#define PasteFromClipboard() ((*PASTEFROMCLIPBOARD)())

TObjectID (WINAPI *FINDOBJECT)(char*);
#define FindObject(Name) ((*FINDOBJECT)(Name))

BOOL (WINAPI *DELETELABELOBJECT)(TObjectID);
#define DeleteLabelObject(ID) ((*DELETELABELOBJECT)(ID))

BOOL (WINAPI *BRINGOBJECTTOFRONT)(TObjectID);
#define BringObjectToFront(ID) ((*BRINGOBJECTTOFRONT)(ID))

BOOL (WINAPI *SENDOBJECTTOBACK)(TObjectID);
#define SendObjectToBack(ID) ((*SENDOBJECTTOBACK)(ID))

BOOL (WINAPI *SETATTRIBUTESEX)(TObjectID, void*);
#define SetAttributesEx(ID, Attrib) ((*SETATTRIBUTESEX)(ID, Attrib))

int (WINAPI *GETATTRIBUTESEX)(TObjectID, void*);
#define GetAttributesEx(ID, Attrib) ((*GETATTRIBUTESEX)(ID, Attrib))

BOOL (WINAPI *GETINFO)(POBJECTINFO);
#define GetInfo(ObjectInfo) ((*GETINFO)(ObjectInfo))

BOOL (WINAPI *SETINFO)(POBJECTINFO);
#define SetInfo(ObjectInfo) ((*SETINFO)(ObjectInfo))

int (WINAPI *VALIDATEBARCODE)(LPCSTR, int);
#define ValidateBarCode(Text, BCType) ((*VALIDATEBARCODE)(Text, BCType))


///////////////////////////////////////////////////////////////////////////////
// DLL linkage functions (temporary)
HINSTANCE OpenLib(void)
{
	if ((hLib = LoadLibrary("labels.dll")) != NULL)
	{
		READLABELFILE = (BOOL(WINAPI *)(LPCSTR))GetProcAddress(hLib, "ReadLabelFile");
		WRITELABELFILE = (BOOL(WINAPI *)(LPCSTR))GetProcAddress(hLib, "WriteLabelFile");
		PRINTLABEL = (BOOL(WINAPI *)(LPCSTR, LPCSTR, int, BOOL))GetProcAddress(hLib, "PrintLabel");
		OUTPUT = (BOOL(WINAPI *)(HDC))GetProcAddress(hLib, "Output");
		OUTPUTXY = (BOOL(WINAPI *)(int, int, HDC))GetProcAddress(hLib, "OutputXY");
		DRAWLABEL = (void(WINAPI *)(HDC))GetProcAddress(hLib, "DrawLabel");
		SETZOOM = (void(WINAPI *)(int))GetProcAddress(hLib, "SetZoom");
		SETSHADOW = (void(WINAPI *)(BOOL))GetProcAddress(hLib, "SetShadow");
		GETLABELINFO = (void(WINAPI *)(PLABELINFO))GetProcAddress(hLib, "GetLabelInfo");
		GETLABELNAMES = (int(WINAPI *)(char*, int))GetProcAddress(hLib, "GetLabelNames");
		NEWLABEL = (void(WINAPI *)(LPCSTR))GetProcAddress(hLib, "NewLabel");
		ISMODIFIED = (BOOL(WINAPI *)(void))GetProcAddress(hLib, "IsModified");
		SETMODIFIED = (BOOL(WINAPI *)(BOOL))GetProcAddress(hLib, "SetModified");
		ADDOBJECT = (HANDLE(WINAPI *)(LPCSTR, LPCSTR, RECT, int, void*))GetProcAddress(hLib, "AddObject");
		ENUMLABELOBJECTS = (int(WINAPI *)(char*, int))GetProcAddress(hLib, "EnumLabelObjects");
		ENUMVARIABLEOBJECTS = (int(WINAPI *)(char*, int))GetProcAddress(hLib, "EnumVariableObjects");
		WHICHOBJECT = (TObjectID(WINAPI *)(int, int))GetProcAddress(hLib, "WhichObject");
		OBJECTSAT = (int(WINAPI *)(int, int, char*, int))GetProcAddress(hLib, "ObjectsAt");
		COPYTOCLIPBOARD = (BOOL(WINAPI *)(POBJECTID))GetProcAddress(hLib, "CopyToClipboard");
		PASTEFROMCLIPBOARD = (BOOL(WINAPI *)(void))GetProcAddress(hLib, "PasteFromClipboard");
		FINDOBJECT = (TObjectID(WINAPI *)(char*))GetProcAddress(hLib, "FindObject");
		DELETELABELOBJECT = (BOOL(WINAPI *)(TObjectID))GetProcAddress(hLib, "DeleteLabelObject");
		BRINGOBJECTTOFRONT = (BOOL(WINAPI *)(TObjectID))GetProcAddress(hLib, "BringObjectToFront");
		SENDOBJECTTOBACK = (BOOL(WINAPI *)(TObjectID))GetProcAddress(hLib, "SendObjectToBack");
		SETATTRIBUTESEX = (BOOL(WINAPI *)(TObjectID, void*))GetProcAddress(hLib, "SetAttributesEx");
		GETATTRIBUTESEX = (int(WINAPI *)(TObjectID, void*))GetProcAddress(hLib, "GetAttributesEx");
		GETINFO = (BOOL(WINAPI *)(POBJECTINFO))GetProcAddress(hLib, "GetInfo");
		SETINFO = (BOOL(WINAPI *)(POBJECTINFO))GetProcAddress(hLib, "SetInfo");
		VALIDATEBARCODE = (int(WINAPI *)(LPCSTR, int))GetProcAddress(hLib, "ValidateBarCode");
	}
	return hLib;
}

BOOL CloseLib(void)
{
	return FreeLibrary(hLib);
}

/////////////////////////////////////////////////////////////////////////////
// CVCTesterDlg dialog

CVCTesterDlg::CVCTesterDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CVCTesterDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CVCTesterDlg)
	m_Shadow = TRUE;
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);

}

CVCTesterDlg::~CVCTesterDlg()
{
}

void CVCTesterDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CVCTesterDlg)
	DDX_Control(pDX, IDC_LABEL_LIST, m_LabelsList);
	DDX_Control(pDX, IDC_OBJECTS_LIST, m_ObjectsList);
	DDX_Control(pDX, IDC_ZOOM_BUTTON, m_ZoomButton);
	DDX_Control(pDX, IDC_STATIC_PICTURE, m_Picture);
	DDX_Check(pDX, IDC_SHADOW_CHECK, m_Shadow);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CVCTesterDlg, CDialog)
	//{{AFX_MSG_MAP(CVCTesterDlg)
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_WM_CLOSE()
	ON_LBN_SELCHANGE(IDC_LABEL_LIST, OnSelchangeLabelsList)
	ON_BN_CLICKED(IDC_LOAD_BUTTON, OnLoadLabelClick)
	ON_BN_CLICKED(IDC_SAVE_BUTTON, OnSaveLabelClick)
	ON_BN_CLICKED(IDC_PRINT_LABEL_BUTTON, OnPrintLabelClick)
	ON_BN_CLICKED(IDC_OUTPUT_BUTTON, OnOutputClick)
	ON_BN_CLICKED(IDC_OUTPUTXY_BUTTON, OnOutputXYClick)
	ON_BN_CLICKED(IDC_VALIDATEBARCODE_BUTTON, OnValidateBarCodeClick)
	ON_BN_CLICKED(IDC_ZOOM_BUTTON, OnZoomClick)
	ON_BN_CLICKED(IDC_SHADOW_CHECK, OnShadowClick)
	ON_BN_CLICKED(IDC_OBJECTS_BUTTON, OnAllObjectsClick)
	ON_BN_CLICKED(IDC_VAROBJECTS_BUTTON, OnVarObjectsClick)
	ON_BN_CLICKED(IDC_BRINGTOFRONT_BUTTON, OnBringToFrontClick)
	ON_BN_CLICKED(IDC_FINDOBJECT_BUTTON, OnFindObjectClick)
	ON_BN_CLICKED(IDC_SENDTOBACK_BUTTON, OnSendToBackClick)
	ON_BN_CLICKED(IDC_DELETE_BUTTON, OnDeleteClick)
	ON_BN_CLICKED(IDC_ADDOBJECT_BUTTON, OnAddObjectClick)
	ON_BN_CLICKED(IDC_GENERAL_BUTTON, OnGeneralClick)
	ON_BN_CLICKED(IDC_COPYTO_BUTTON, OnCopyToClipboardClick)
	ON_BN_CLICKED(IDC_PASTEFROM_BUTTON, OnPasteFromClipboardClick)
	ON_BN_CLICKED(IDC_SPECIAL_BUTTON, OnSpecialClick)
	ON_BN_CLICKED(IDC_GETMODIFIED_BUTTON, OnGetModifiedClick)
	ON_BN_CLICKED(IDC_STATIC_PICTURE, OnStaticPictureClick)

	ON_COMMAND(ID_OBJECT_AT, OnObjectAtSelected)
	ON_COMMAND(ID_OBJECTS_AT, OnObjectsAtSelected)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

//////////////////////////////////////////////////////////////////////
// Global variables
extern BOOL bAddObject;	// used for correct caption of 
						// Add/Modify Object's General Attributes dialog

/////////////////////////////////////////////////////////////////////////////
// CVCTesterDlg message handlers

BOOL CVCTesterDlg::OnInitDialog()
{
	CDialog::OnInitDialog();

	// Set the icon for this dialog.  The framework does this automatically
	//  when the application's main window is not a dialog
	SetIcon(m_hIcon, TRUE);			// Set big icon
	SetIcon(m_hIcon, FALSE);		// Set small icon

	
	// Make (temporary) preparation
	if (OpenLib() == NULL)
	{
		MessageBox("Please copy this application to the DYMO Label Software Folder and run it again.");
		exit(-1);
	}
	PopupMenu.LoadMenu(IDR_POPUP_MENU);

	// Show total number of labels available
	char s[50];
	int nBytes = GetLabelNames(NULL, 0);	// Get number of bytes required
	char* Buf = new char[nBytes];
	wsprintf(s, "Label List (Total Labels = %d)", nBytes/64);
	SetDlgItemText(IDC_LBL_LABELLIST, s);

	// and fill labels list with the names of the labels
	GetLabelNames(Buf, nBytes);
	char* pName = Buf;
	while (*pName != NULL)
	{
		m_LabelsList.AddString(pName);
		pName += 64;
	}
	delete[] Buf;

	return TRUE;  // return TRUE  unless you set the focus to a control
}

// If you add a minimize button to your dialog, you will need the code below
//  to draw the icon.  For MFC applications using the document/view model,
//  this is automatically done for you by the framework.
   
void CVCTesterDlg::OnPaint() 
{
	if (IsIconic())
	{
		CPaintDC dc(this); // device context for painting

		SendMessage(WM_ICONERASEBKGND, (WPARAM) dc.GetSafeHdc(), 0);

		// Center icon in client rectangle
		int cxIcon = GetSystemMetrics(SM_CXICON);
		int cyIcon = GetSystemMetrics(SM_CYICON);
		CRect rect;
		GetClientRect(&rect);
		int x = (rect.Width() - cxIcon + 1) / 2;
		int y = (rect.Height() - cyIcon + 1) / 2;

		// Draw the icon
		dc.DrawIcon(x, y, m_hIcon);
	}
	else
	{
		CDialog::OnPaint();
	}
}

// The system calls this to obtain the cursor to display while the user drags
//  the minimized window.
HCURSOR CVCTesterDlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

// Automation servers should not exit when a user closes the UI
//  if a controller still holds on to one of its objects.  These
//  message handlers make sure that if the proxy is still in use,
//  then the UI is hidden but the dialog remains around if it
//  is dismissed.

void CVCTesterDlg::OnClose() 
{
	CloseLib();
	if (CanExit())
		CDialog::OnClose();
}

BOOL CVCTesterDlg::CanExit()
{
	return TRUE;
}

void CVCTesterDlg::FillLabelInfo()
{
	// Fills label info with label data
	TLABELINFO pLI;
	GetLabelInfo(&pLI);
	SetDlgItemText(IDC_LI_LABELNAME, pLI.LabelName);
	SetDlgItemText(IDC_LI_PAPERNAME, pLI.PaperName);
	SetDlgItemInt(IDC_LI_PAPERWIDTH, pLI.PaperSize.x);
	SetDlgItemInt(IDC_LI_PAPERHEIGHT, pLI.PaperSize.y);
	SetDlgItemInt(IDC_LI_BITMAPWIDTH, pLI.BitmapSize.x);
	SetDlgItemInt(IDC_LI_BITMAPHEIGHT, pLI.BitmapSize.y);
	SetDlgItemInt(IDC_LI_LABELCOUNT, pLI.LabelCount);
	SetDlgItemInt(IDC_LI_LABELWIDTH, pLI.LabelSize.x);
	SetDlgItemInt(IDC_LI_LABELHEIGHT, pLI.LabelSize.y);
	if (IsModified())
		SetDlgItemInt(IDC_LI_MODIFIED, 1);
	else
		SetDlgItemInt(IDC_LI_MODIFIED, 0);
}

void CVCTesterDlg::ReDrawLabel()
{
	// Redraws label picture
	m_Picture.RedrawWindow();

	CWindowDC pWDC(&m_Picture);
	HDC MyHDC = pWDC.GetSafeHdc();
	DrawLabel(MyHDC);

	// If the label is displayed for the first time,
	// set current selection of the label list to the first label
	// to show the label to which other information pertain
	if (m_LabelsList.GetCurSel() == LB_ERR)
		m_LabelsList.SetCurSel(0);
}

void CVCTesterDlg::OnSelchangeLabelsList() 
{
	// If the selection of the label list is changed,
	// load new label, and update label info and label picture
	CString CurItem;
	m_LabelsList.GetText(m_LabelsList.GetCurSel(), CurItem);
	NewLabel(CurItem);
	FillLabelInfo();
	ReDrawLabel();
}

void CVCTesterDlg::OnLoadLabelClick() 
{
	// Loads label from file
	CFileDialog fodlg(TRUE);
	char ss[256];
	DWORD l=256,x;
	HKEY hKey;

	RegOpenKeyEx(HKEY_CURRENT_USER, "Software\\DYMO\\LabelWriter\\Directories", 0,KEY_ALL_ACCESS,&hKey);
	RegQueryValueEx(hKey, "Label Directory", NULL, &x, (LPBYTE)ss, &l);
	RegCloseKey(hKey);

	SetCurrentDirectory(ss);
	if (fodlg.DoModal() == IDOK)
	{
		if (ReadLabelFile(fodlg.GetFileName()))
			FillLabelInfo();
		else 
			MessageBox("ReadLabelFile() returned FALSE!", NULL, MB_OK | MB_ICONSTOP);
	}
	ReDrawLabel();
}

void CVCTesterDlg::OnSaveLabelClick() 
{
	// Saves current label into file
	CFileDialog fodlg(FALSE);
	char ss[256];
	DWORD l=256,x;
	HKEY hKey;

	RegOpenKeyEx(HKEY_CURRENT_USER, "Software\\DYMO\\LabelWriter\\Directories", 0,KEY_ALL_ACCESS,&hKey);
	RegQueryValueEx(hKey, "Label Directory", NULL, &x, (LPBYTE)ss, &l);
	RegCloseKey(hKey);

	SetCurrentDirectory(ss);
	if (fodlg.DoModal() == IDOK)
	{
		if (!WriteLabelFile(fodlg.GetFileName()))
			MessageBox("WriteLabelFile() returned FALSE!", NULL, MB_OK | MB_ICONSTOP);
	}
	ReDrawLabel();
}

void CVCTesterDlg::OnPrintLabelClick() 
{
	// Prints current label
	CPrintLabelDlg pldlg;
	if (pldlg.DoModal() == IDOK)
	{
		if (!PrintLabel(pldlg.m_DeviceName, pldlg.m_Port, pldlg.m_Quantity, pldlg.m_IsShowDialog))
			MessageBox("PrintLabel() returned FALSE!", NULL, MB_OK | MB_ICONSTOP);
	}
	ReDrawLabel();
}

void CVCTesterDlg::OnOutputClick() 
{
	// Prints current label to the default device
	CPrintDialog Mypd(FALSE);
	CDC MyDC;
	DOCINFO di;
	
	Mypd.GetDefaults();
	MyDC.Attach(Mypd.m_pd.hDC);
	di.lpszDocName = "VC Tester: Output() function test";
	di.lpszOutput = NULL;
	di.cbSize = sizeof(di);
	MyDC.StartDoc(&di);
	MyDC.StartPage();
	if (!Output(MyDC.GetSafeHdc()))
		MessageBox("Output() returned FALSE!", NULL, MB_OK | MB_ICONSTOP);
	MyDC.EndPage();
	MyDC.EndDoc();
	MyDC.Detach();
}

void CVCTesterDlg::OnOutputXYClick() 
{
	// Prints current label to the default device 
	// at the position specified in the dialog
	COutputXYDlg dlg;
	if (dlg.DoModal() == IDOK)
	{
		CPrintDialog Mypd(FALSE);
		CDC MyDC;
		DOCINFO di;
	
		Mypd.GetDefaults();
		MyDC.Attach(Mypd.m_pd.hDC);
		di.lpszDocName = "VC Tester: Output() function test";
		di.lpszOutput = NULL;
		di.cbSize = sizeof(di);
		MyDC.StartDoc(&di);
		MyDC.StartPage();
		if (!OutputXY(dlg.m_X, dlg.m_Y, MyDC.GetSafeHdc()))
			MessageBox("OutputXY() returned FALSE!", NULL, MB_OK | MB_ICONSTOP);
		MyDC.EndPage();
		MyDC.EndDoc();
		MyDC.Detach();
	}
	ReDrawLabel();
}

void CVCTesterDlg::OnValidateBarCodeClick() 
{
	// Validates bar code of the bar code type 
	// specified in the dialog 
	// and displays appropriate message
	CValidateBarCodeDlg dlg;
	if (dlg.DoModal() == IDOK)
	{
		CString res;
		switch(ValidateBarCode(dlg.m_Text, dlg.m_Type))
		{
		case 0: res = "No Error";
				break;
		case 1: res = "Text contains an invalid character";
				break;
		case 2: res = "Text is too long";
				break;
		case 3: res = "The text string is empty";
				break;
		case 4: res = "The Bar Code type is unsupported";
				break;
		case 5: res = "Numeric only bar code, and text contains non-numeric characters";
				break;
		case 6: res = "Text string must have an odd number of characters";
				break;
		case 7: res = "Text may not contain control characters";
				break;
		case 8: res = "Text may not contain lower case characters";
				break;
		case 9: res = "Text has not 7-bit ASCII characters";
				break;
		case 10: res = "Text has invalid start/stop codes";
				break;
		case 11: res = "Invalid Postnet bar code length (must be 7, 9, or 11 digits only).";
				break;
		case 12: res = "Library bar codes must have 13 or 14 digits";
				break;
		default: res = "UNREGISTERED RESULT!";
		}
		MessageBox("ValidateBarCode() returned: '"+res+"'", NULL, MB_OK | MB_ICONINFORMATION);
	}
	ReDrawLabel();
}

void CVCTesterDlg::OnZoomClick() 
{
	// Changes zoom level of the current label
	// displaying new zoom value as the text on the button
	CZoomDlg dlg;
	if (dlg.DoModal() == IDOK)
	{
		SetZoom(dlg.m_Zoom);
		char s[20];
		wsprintf(s,"Zoom: %d%%", dlg.m_Zoom);
		m_ZoomButton.SetWindowText(s);
	}
	ReDrawLabel();
}

void CVCTesterDlg::OnShadowClick() 
{
	// When shadow control is clicked,
	// update label info and label picture
	UpdateData(TRUE);
	SetShadow(m_Shadow);
	FillLabelInfo();
	ReDrawLabel();
}

void CVCTesterDlg::OnAllObjectsClick() 
{
	// Enumerates all objects on the current label
	// and fills objects list with their IDs
	m_ObjectsList.ResetContent();
	char s[16];
	int nBytes = EnumLabelObjects(NULL, 0);	// Get number of bytes required
	int nObj = nBytes/sizeof(TOBJECTINFO);	// Get number of objects
	char* Buf = new char[nBytes];

	EnumLabelObjects(Buf, nBytes);
	POBJECTINFO pID = (POBJECTINFO) Buf;
	while (nObj != 0)
	{
		wsprintf(s, "0x%x", pID->ObjID);
		m_ObjectsList.AddString(s);
		++pID;
		--nObj;
	}
	delete[] Buf;
}

void CVCTesterDlg::OnVarObjectsClick() 
{
	// Enumerates all variable objects on the current label
	// and fills objects list with their IDs
	m_ObjectsList.ResetContent();
	char s[16];
	int nBytes = EnumVariableObjects(NULL, 0);	// Get number of bytes required
	int nObj = nBytes/sizeof(TOBJECTINFO);	// Get number of objects
	char* Buf = new char[nBytes];

	EnumVariableObjects(Buf, nBytes);
	POBJECTINFO pID = (POBJECTINFO) Buf;
	while (nObj != 0)
	{
		wsprintf(s, "0x%x", pID->ObjID);
		m_ObjectsList.AddString(s);
		++pID;
		--nObj;
	}
	delete[] Buf;
}

void CVCTesterDlg::OnFindObjectClick() 
{
	// Finds an object (if any) on the current label 
	// by its name specified in the dialog
	// and fills objects list with its ID 
	CFindObjectDlg dlg;
	if (dlg.DoModal() == IDOK)
	{
		m_ObjectsList.ResetContent();
		int objid = FindObject(dlg.m_ObjectName.GetBuffer(64));
		dlg.m_ObjectName.ReleaseBuffer();
		if (objid == 0)
			MessageBox("FindObj() returned 0 ('Object not found').", NULL, MB_OK | MB_ICONINFORMATION);
		else
		{
			char s[16];
			wsprintf(s, "0x%x", objid);
			m_ObjectsList.AddString(s);
		}
	}
	ReDrawLabel();
}

void CVCTesterDlg::OnBringToFrontClick() 
{
	// Moves the object with the ID selected in the objects list
	// to the foreground of all the other objects on the current label
	int num = m_ObjectsList.GetCaretIndex();
	if (m_ObjectsList.GetSel(num) != LB_ERR)
	{
		CString CurItem;
		m_ObjectsList.GetText(num, CurItem);
		BringObjectToFront(strtol(CurItem, NULL, 16));
		ReDrawLabel();
		// Then updates the objects list by refilling it
		// with the IDs of all objects on the label
		OnAllObjectsClick();
	}
}

void CVCTesterDlg::OnSendToBackClick() 
{
	// Moves the object with the ID selected in the objects list
	// to the background of all the other objects on the current label
	int num = m_ObjectsList.GetCaretIndex();
	if (m_ObjectsList.GetSel(num) != LB_ERR)
	{
		CString CurItem;
		m_ObjectsList.GetText(num, CurItem);
		SendObjectToBack(strtol(CurItem, NULL, 16));
		ReDrawLabel();
		// Then updates the objects list by refilling it
		// with the IDs of all objects on the label
		OnAllObjectsClick();
	}
}

void CVCTesterDlg::OnDeleteClick() 
{
	// Deletes all objects on the current label 
	// selected in the objects list
	int count = m_ObjectsList.GetCount();
	if (count != LB_ERR)
	{
		for (int i=0; i<count; i++)
			if (m_ObjectsList.GetSel(i))
			{
				CString CurItem;
				m_ObjectsList.GetText(i, CurItem);
				DeleteLabelObject(strtol(CurItem, NULL, 16));
			}
		ReDrawLabel();
		// Then updates the objects list by refilling it
		// with the IDs of all the rest objects on the label
		OnAllObjectsClick();
	}
}

void CVCTesterDlg::OnAddObjectClick() 
{
	// Adds a new object to the current label
	// by specifying its general attributes
	CAddObjectDlg dlg;
	bAddObject = TRUE;
	if (dlg.DoModal() == IDOK)
	{
		CString str;
		void* Attr;
		TTextBlockAttributes TBAttr;
		// Set default TTextBlockAttributes settings
		TBAttr.Text = "";
		TBAttr.Font1[0] = NULL;
		TBAttr.Font2[0] = NULL;
		TBAttr.Justify = -1;
		TBAttr.VertJustify = -1;
		TBAttr.bMirrored = FALSE;
		TBAttr.bVerticalText = FALSE;
		TBAttr.TextColor = 0;
		TBAttr.BackgroundColor = 0;
    TBAttr.IsRichText = FALSE;

		TAddressAttributes AAttr;
		TTextAttributes TAttr;
		TGraphicAttributes GAttr;
		TLineAttributes LAttr;
		TRectAttributes RAttr;
		TCounterAttributes CAttr;
		TDateTimeAttributes DTAttr;
		TBarcodeAttributes BAttr;
		// Fill default object specific attributes structure
		switch(dlg.m_ObjType)
		{
		case 0: // TEXT object selected
			{
				str = "TEXT";
				TAttr.TextInfo = &TBAttr;
				TAttr.bVariable = FALSE;
				Attr = &TAttr;
			}
			break;
		case 1: // ADDRESS object selected
			{
				str = "ADDRESS";
				AAttr.TextInfo = &TBAttr;
				AAttr.BarCodePos = -1;
				AAttr.b9DigitOnly = FALSE;
				Attr = &AAttr;
			}
			break;
		case 2: // GRAPHIC object selected
			{
				str = "GRAPHIC";
				GAttr.GraphicSource = 0;
				GAttr.FileName[0] = NULL;
				GAttr.Picture = NULL;
				GAttr.Palette = NULL;
				GAttr.Window = NULL;
				GAttr.Border = -1;
				GAttr.BorderColor = 0;
				Attr = &GAttr;
			}	
			break;
		case 3: // RECTANGLE object selected
			{
				str = "RECTANGLE";
				RAttr.bFilled = FALSE;
				RAttr.Border = -1;
				RAttr.BorderColor = 0;
				RAttr.FillColor = 0;
				Attr = &RAttr;
			}
			break;
		case 4: // LINE object selected
			{
				str = "LINE";
				LAttr.Length = 100;
				LAttr.Orient = -1;
				LAttr.Thickness = -1;
				LAttr.LineColor = 0;
				Attr = &LAttr;
			}
			break;
		case 5:	// BARCODE object selected 
			{
				str = "BARCODE";
				BAttr.Text[0] = NULL;
				BAttr.Font[0] = NULL;
				BAttr.HRTextPos = -1;
				BAttr.BCType = -1;
				BAttr.BCRatio = -1;
				BAttr.Justify = -1;
				BAttr.Link = NULL;
				Attr = &BAttr;
			}
			break;
		case 6: // COUNTER object selected
			{
				str = "COUNTER";
				CAttr.TextInfo = &TBAttr;
				CAttr.PreText[0] = NULL;
				CAttr.PostText[0] = NULL;
				CAttr.Start = -1;
				CAttr.Current = -1;
				CAttr.Width = -1;
				CAttr.Increment = 0;
				CAttr.bLeadingZeros = FALSE;
				Attr = &CAttr;
			}
			break;
		case 7: // DATE-TIME object selected
			{
				str = "DATE-TIME";
				DTAttr.TextInfo = &TBAttr;
				DTAttr.PreText[0] = NULL;
				DTAttr.PostText[0] = NULL;
				DTAttr.DateFormat = -1;
				DTAttr.bIncludeTime = FALSE;
				DTAttr.b24Hour = FALSE;
				Attr = &DTAttr;
			}
			break;
		}
		RECT r;
		r.left = dlg.m_X;
		r.top = dlg.m_Y;
		r.right = dlg.m_Width;
		r.bottom = dlg.m_Height;
		int objid = (int) AddObject(str.GetBuffer(10), dlg.m_Name.GetBuffer(64), r, dlg.m_Rotation, Attr);
		str.ReleaseBuffer();
		dlg.m_Name.ReleaseBuffer();
		// Displays ID of the added object
		str.Format("0x%x", objid);
		MessageBox("AddObject() returned objid: '" + str + "'", NULL, MB_OK | MB_ICONINFORMATION);
	}
	ReDrawLabel();
}

void CVCTesterDlg::OnGeneralClick() 
{
	// Shows general attributes of the object on the current label
	// which ID is selected in the objects list
	int num = m_ObjectsList.GetCaretIndex();
	if (m_ObjectsList.GetSel(num) == LB_ERR)
		return;
	CString CurItem;
	m_ObjectsList.GetText(num, CurItem);
	TOBJECTINFO ObjInfo;
	ObjInfo.ObjID = strtol(CurItem, NULL, 16);
	if (GetInfo(&ObjInfo))
	{
		CAddObjectDlg dlg;
		bAddObject = FALSE;
		
		// Fill dialog fields with object's general attributes
		dlg.m_ObjType = ObjInfo.ObjType;
		dlg.m_Name = ObjInfo.ObjName;
		dlg.m_X = ObjInfo.Size.left;
		dlg.m_Y = ObjInfo.Size.top;
		dlg.m_Width = ObjInfo.Size.right;
		dlg.m_Height = ObjInfo.Size.bottom;
		dlg.m_Rotation = ObjInfo.Rotate;
		if (dlg.DoModal() == IDOK)
		{
			// Save new general attributes of the object
			ObjInfo.ObjType = dlg.m_ObjType;
			strcpy(ObjInfo.ObjName, dlg.m_Name);
			ObjInfo.Size.left = dlg.m_X;
			ObjInfo.Size.top = dlg.m_Y;
			ObjInfo.Size.right = dlg.m_Width;
			ObjInfo.Size.bottom = dlg.m_Height;
			ObjInfo.Rotate = dlg.m_Rotation;
			SetInfo(&ObjInfo);
		}
		ReDrawLabel();
	}
}

void CVCTesterDlg::OnCopyToClipboardClick() 
{
	// Copies all objects on the current label 
	// selected in the objects list to the clipboard
	int count = m_ObjectsList.GetCount();
	if (count == LB_ERR)
		return;
	CArray<int, int> SelIDArray;
	for (int i=0; i<count; i++)
		if (m_ObjectsList.GetSel(i))
		{
			CString CurItem;
			m_ObjectsList.GetText(i, CurItem);
			SelIDArray.Add(strtol(CurItem, NULL, 16));
		}
	SelIDArray.Add(0);
	if (CopyToClipboard(SelIDArray.GetData()))
	{
		// Then displays a message indicating 
		// the number of objects copied
		CString str;
		str.Format("%d", SelIDArray.GetSize() - 1);
		MessageBox(str + " object(s) copied successfully.", NULL, MB_OK | MB_ICONINFORMATION);
	}
	else
		MessageBox("CopyToClipboard() returned FALSE!", NULL, MB_OK | MB_ICONSTOP);
}

void CVCTesterDlg::OnPasteFromClipboardClick() 
{
	// Pastes objects from the clipboard onto the current label
	if (PasteFromClipboard())
		ReDrawLabel();
	else
		MessageBox("PasteFromClipboard() returned FALSE!", NULL, MB_OK | MB_ICONSTOP);
}

void CVCTesterDlg::OnSpecialClick() 
{
	// Shows specific attributes of the object on the current label
	// which ID is selected in the objects list
	int num = m_ObjectsList.GetCaretIndex();
	if (m_ObjectsList.GetSel(num) == LB_ERR)
		return;
	CString CurItem;
	m_ObjectsList.GetText(num, CurItem);
	int ObjectID = strtol(CurItem, NULL, 16);
	TOBJECTINFO ObjInfo;
	ObjInfo.ObjID = ObjectID;
	if (!GetInfo(&ObjInfo))
		return;
	// Show dialog corresponding to the type of the object
	switch(ObjInfo.ObjType)
	{
	case 0: // Object of type TEXT
		{
			int nBytes = GetAttributesEx(ObjectID, NULL);	// Get number of bytes required for the text field
			TTextBlockAttributes TBAttr;
			TBAttr.Text = new char[nBytes];;	// Allocate the memory required
			TTextAttributes Attrib;
			Attrib.TextInfo = &TBAttr;
			if (!GetAttributesEx(ObjectID, &Attrib))
				return;
			// Fill dialog with default object's special attributes
			CTextObjectDlg dlg;
			dlg.m_Text = Attrib.TextInfo->Text;
			dlg.m_Font1 = Attrib.TextInfo->Font1;
			dlg.m_Font2 = Attrib.TextInfo->Font2;
			dlg.m_Justify = Attrib.TextInfo->Justify;
			dlg.m_VJustify = Attrib.TextInfo->VertJustify;
			dlg.m_Mirrored = (bool)Attrib.TextInfo->bMirrored;
			dlg.m_Vertical = (bool)Attrib.TextInfo->bVerticalText;
			dlg.m_TextColor.Format("0x%x", Attrib.TextInfo->TextColor);
			dlg.m_BackGroundColor.Format("0x%x", Attrib.TextInfo->BackgroundColor);
			dlg.m_IsVariable = (bool)Attrib.bVariable;
			
			if (dlg.DoModal() == IDOK)
			{
				// Save new special attributes of the object
				delete[] TBAttr.Text;
				Attrib.TextInfo->Text = new char[dlg.m_Text.GetLength() + 1];
				strcpy(Attrib.TextInfo->Text, dlg.m_Text);
				strcpy(Attrib.TextInfo->Font1, dlg.m_Font1);
				strcpy(Attrib.TextInfo->Font2, dlg.m_Font2);
				Attrib.TextInfo->Justify = dlg.m_Justify;
				Attrib.TextInfo->VertJustify = dlg.m_VJustify;
				Attrib.TextInfo->bMirrored = dlg.m_Mirrored;
				Attrib.TextInfo->bVerticalText = dlg.m_Vertical;
				Attrib.TextInfo->TextColor = strtol(dlg.m_TextColor, NULL, 16);
				Attrib.TextInfo->BackgroundColor = strtol(dlg.m_BackGroundColor, NULL, 16);
				Attrib.bVariable = dlg.m_IsVariable;
        TBAttr.IsRichText = FALSE;
				
				SetAttributesEx(ObjectID, &Attrib);
			}
		}
		break;
	case 1: // Object of type ADDRESS 
		{
			int nBytes = GetAttributesEx(ObjectID, NULL);	// Get number of bytes required for the text field
			TTextBlockAttributes TBAttr;
			TBAttr.Text = new char[nBytes];	// Allocate the memory required
			TAddressAttributes Attrib;
			Attrib.TextInfo = &TBAttr;
			if (!GetAttributesEx(ObjectID, &Attrib))
				return;
			// Fill dialog with default object's special attributes
			CAddressObjectDlg dlg;
			dlg.m_Text = Attrib.TextInfo->Text;
			dlg.m_Font1 = Attrib.TextInfo->Font1;
			dlg.m_Font2 = Attrib.TextInfo->Font2;
			dlg.m_Justify = Attrib.TextInfo->Justify;
			dlg.m_VJustify = Attrib.TextInfo->VertJustify;
			dlg.m_Mirrored = (bool)Attrib.TextInfo->bMirrored;
			dlg.m_Vertical = (bool)Attrib.TextInfo->bVerticalText;
			dlg.m_TextColor.Format("0x%x", Attrib.TextInfo->TextColor);
			dlg.m_BackGroundColor.Format("0x%x", Attrib.TextInfo->BackgroundColor);
			dlg.m_BarCodePosition = Attrib.BarCodePos;
			dlg.m_b9DigitOnly = (bool)Attrib.b9DigitOnly;
			
			if (dlg.DoModal() == IDOK)
			{
				// Save new special attributes of the object
				delete[] TBAttr.Text;
				Attrib.TextInfo->Text = new char[dlg.m_Text.GetLength() + 1];
				strcpy(Attrib.TextInfo->Text, dlg.m_Text);
				strcpy(Attrib.TextInfo->Font1, dlg.m_Font1);
				strcpy(Attrib.TextInfo->Font2, dlg.m_Font2);
				Attrib.TextInfo->Justify = dlg.m_Justify;
				Attrib.TextInfo->VertJustify = dlg.m_VJustify;
				Attrib.TextInfo->bMirrored = dlg.m_Mirrored;
				Attrib.TextInfo->bVerticalText = dlg.m_Vertical;
				Attrib.TextInfo->TextColor = strtol(dlg.m_TextColor, NULL, 16);
				Attrib.TextInfo->BackgroundColor = strtol(dlg.m_BackGroundColor, NULL, 16);
				Attrib.BarCodePos = dlg.m_BarCodePosition;
				Attrib.b9DigitOnly = dlg.m_b9DigitOnly;
        TBAttr.IsRichText = FALSE;
				
				SetAttributesEx(ObjectID, &Attrib);
			}
		}
		break;
	case 2: // Object of type GRAPHIC
		{
			TGraphicAttributes Attrib;
			if (!GetAttributesEx(ObjectID, &Attrib))
				return;
			// Fill dialog with default object's special attributes
			CGraphicObjectDlg dlg;
			dlg.m_GraphicSource = Attrib.GraphicSource;
			dlg.m_FileName = Attrib.FileName;
			dlg.m_BitmapHandle.Format("0x%x", Attrib.Picture);
			dlg.m_PaletteHandle.Format("0x%x", Attrib.Palette);
			dlg.m_WindowHandle.Format("Write Only");
			dlg.m_Border = Attrib.Border;
			dlg.m_BorderColor.Format("0x%x", Attrib.BorderColor);
			
			if (dlg.DoModal() == IDOK)
			{
				// Save new special attributes of the object
				// (in relation to its graphic source)
				switch(dlg.m_GraphicSource)
				{
				case 0:	// From file
					strcpy(Attrib.FileName, dlg.m_FileName);
					break;
				case 1:	// From picture handle (in the bitmap field)
					Attrib.Picture = (HANDLE) strtol(dlg.m_BitmapHandle, NULL, 16);
					Attrib.Palette = (HPALETTE) strtol(dlg.m_PaletteHandle, NULL, 16);
					break;
				case 2: // From window handle
					Attrib.Window = (HWND) strtol(dlg.m_WindowHandle, NULL, 16);
					break;
				case 3: // From clipboard
					break;
				}
				Attrib.GraphicSource = dlg.m_GraphicSource;
				Attrib.Border = dlg.m_Border;
				Attrib.BorderColor = strtol(dlg.m_BorderColor, NULL, 16);

				SetAttributesEx(ObjectID, &Attrib);
			}
		}
		break;
	case 3: // Object of type RECTANGLE 
		{
			TRectAttributes Attrib;
			if (!GetAttributesEx(ObjectID, &Attrib))
				return;
			// Fill dialog with default object's special attributes
			CRectangleObjectDlg dlg;
			dlg.m_bFilled = (bool)Attrib.bFilled;
			dlg.m_Border = Attrib.Border;
			dlg.m_BorderColor.Format("0x%x", Attrib.BorderColor);
			dlg.m_FillColor.Format("0x%x", Attrib.FillColor);
			
			if (dlg.DoModal() == IDOK)
			{
				// Save new special attributes of the object
				Attrib.bFilled = dlg.m_bFilled;
				Attrib.Border = dlg.m_Border;
				Attrib.BorderColor = strtol(dlg.m_BorderColor, NULL, 16);
				Attrib.FillColor = strtol(dlg.m_FillColor, NULL, 16);

				SetAttributesEx(ObjectID, &Attrib);
			}
		}
		break;
	case 4: // Object of type LINE 
		{
			TLineAttributes Attrib;
			if (!GetAttributesEx(ObjectID, &Attrib))
				return;
			// Fill dialog with default object's special attributes
			CLineObjectDlg dlg;
			dlg.m_Length = Attrib.Length;
			dlg.m_Orientation = Attrib.Orient;
			dlg.m_Thickness = Attrib.Thickness;
			dlg.m_LineColor.Format("0x%x", Attrib.LineColor);
			
			if (dlg.DoModal() == IDOK)
			{
				// Save new special attributes of the object
				Attrib.Length = dlg.m_Length;
				Attrib.Orient = dlg.m_Orientation;
				Attrib.Thickness = dlg.m_Thickness;
				Attrib.LineColor = strtol(dlg.m_LineColor, NULL, 16);

				SetAttributesEx(ObjectID, &Attrib);
			}
		}
		break;
	case 5: // Object of type BARCODE
		{
			TBarcodeAttributes Attrib;
			if (!GetAttributesEx(ObjectID, &Attrib))
				return;
			// Fill dialog with default object's special attributes
			CBarCodeObjectDlg dlg;
			dlg.m_Text = Attrib.Text;
			dlg.m_Font = Attrib.Font;
			dlg.m_TextPos = Attrib.HRTextPos;
			dlg.m_BCType = Attrib.BCType;
			dlg.m_Size = Attrib.BCRatio;
			dlg.m_Justify = Attrib.Justify;
			dlg.m_Link.Format("0x%x", Attrib.Link);
			
			if (dlg.DoModal() == IDOK)
			{
				// Save new special attributes of the object
				strcpy(Attrib.Text, dlg.m_Text);
				strcpy(Attrib.Font, dlg.m_Font);
				Attrib.HRTextPos = dlg.m_TextPos;
				Attrib.BCType = dlg.m_BCType;
				Attrib.BCRatio = dlg.m_Size;
				Attrib.Justify = dlg.m_Justify;
				Attrib.Link = strtol(dlg.m_Link, NULL, 16);

				SetAttributesEx(ObjectID, &Attrib);
			}
		}
		break;
	case 6: // Object of type COUNTER 
		{
			int nBytes = GetAttributesEx(ObjectID, NULL);	// Get number of bytes required for the text field
			TTextBlockAttributes TBAttr;
			TBAttr.Text = new char[nBytes];	// Allocate the memory required
			TCounterAttributes Attrib;
			Attrib.TextInfo = &TBAttr;
			if (!GetAttributesEx(ObjectID, &Attrib))
				return;
			// Fill dialog with default object's special attributes
			CCounterObjectDlg dlg;
			dlg.m_Text = Attrib.TextInfo->Text;
			dlg.m_Font1 = Attrib.TextInfo->Font1;
			dlg.m_Font2 = Attrib.TextInfo->Font2;
			dlg.m_Justify = Attrib.TextInfo->Justify;
			dlg.m_VJustify = Attrib.TextInfo->VertJustify;
			dlg.m_Mirrored = (bool)Attrib.TextInfo->bMirrored;
			dlg.m_Vertical = (bool)Attrib.TextInfo->bVerticalText;
			dlg.m_TextColor.Format("0x%x", Attrib.TextInfo->TextColor);
			dlg.m_BackGroundColor.Format("0x%x", Attrib.TextInfo->BackgroundColor);
			dlg.m_PreText = Attrib.PreText;
			dlg.m_PostText = Attrib.PostText;
			dlg.m_Start = Attrib.Start;
			dlg.m_Current = Attrib.Current;
			dlg.m_Width = Attrib.Width;
			dlg.m_Increment = Attrib.Increment;
			dlg.m_UseLeadingZeros = (bool)Attrib.bLeadingZeros;
			
			if (dlg.DoModal() == IDOK)
			{
				// Save new special attributes of the object
				delete[] TBAttr.Text;
				Attrib.TextInfo->Text = new char[dlg.m_Text.GetLength() + 1];
				strcpy(Attrib.TextInfo->Text, dlg.m_Text);
				strcpy(Attrib.TextInfo->Font1, dlg.m_Font1);
				strcpy(Attrib.TextInfo->Font2, dlg.m_Font2);
				Attrib.TextInfo->Justify = dlg.m_Justify;
				Attrib.TextInfo->VertJustify = dlg.m_VJustify;
				Attrib.TextInfo->bMirrored = dlg.m_Mirrored;
				Attrib.TextInfo->bVerticalText = dlg.m_Vertical;
				Attrib.TextInfo->TextColor = strtol(dlg.m_TextColor, NULL, 16);
				Attrib.TextInfo->BackgroundColor = strtol(dlg.m_BackGroundColor, NULL, 16);
				strcpy(Attrib.PreText, dlg.m_PreText);
				strcpy(Attrib.PostText, dlg.m_PostText);
				Attrib.Start = dlg.m_Start;
				Attrib.Current = dlg.m_Current;
				Attrib.Width = dlg.m_Width;
				Attrib.Increment = dlg.m_Increment;
				Attrib.bLeadingZeros = dlg.m_UseLeadingZeros;
				
				SetAttributesEx(ObjectID, &Attrib);
			}
		}
		break;
	case 7: // Object of type DATE_TIME 
		{
			int nBytes = GetAttributesEx(ObjectID, NULL);	// Get number of bytes required for the text field
			TTextBlockAttributes TBAttr;
			TBAttr.Text = new char[nBytes];	// Allocate the memory required
			TDateTimeAttributes Attrib;
			Attrib.TextInfo = &TBAttr;
			if (!GetAttributesEx(ObjectID, &Attrib))
				return;
			// Fill dialog with default object's special attributes
			CDateTimeObjectDlg dlg;
			dlg.m_Text = Attrib.TextInfo->Text;
			dlg.m_Font1 = Attrib.TextInfo->Font1;
			dlg.m_Font2 = Attrib.TextInfo->Font2;
			dlg.m_Justify = Attrib.TextInfo->Justify;
			dlg.m_VJustify = Attrib.TextInfo->VertJustify;
			dlg.m_Mirrored = (bool)Attrib.TextInfo->bMirrored;
			dlg.m_Vertical = (bool)Attrib.TextInfo->bVerticalText;
			dlg.m_TextColor.Format("0x%x", Attrib.TextInfo->TextColor);
			dlg.m_BackGroundColor.Format("0x%x", Attrib.TextInfo->BackgroundColor);
			dlg.m_PreText = Attrib.PreText;
			dlg.m_PostText = Attrib.PostText;
			dlg.m_Format = Attrib.DateFormat;
			dlg.m_IncludeTime = (bool)Attrib.bIncludeTime;
			dlg.m_b24Hour = (bool)Attrib.b24Hour;
			
			if (dlg.DoModal() == IDOK)
			{
				// Save new special attributes of the object
				delete[] TBAttr.Text;
				Attrib.TextInfo->Text = new char[dlg.m_Text.GetLength() + 1];
				strcpy(Attrib.TextInfo->Text, dlg.m_Text);
				strcpy(Attrib.TextInfo->Font1, dlg.m_Font1);
				strcpy(Attrib.TextInfo->Font2, dlg.m_Font2);
				Attrib.TextInfo->Justify = dlg.m_Justify;
				Attrib.TextInfo->VertJustify = dlg.m_VJustify;
				Attrib.TextInfo->bMirrored = dlg.m_Mirrored;
				Attrib.TextInfo->bVerticalText = dlg.m_Vertical;
				Attrib.TextInfo->TextColor = strtol(dlg.m_TextColor, NULL, 16);
				Attrib.TextInfo->BackgroundColor = strtol(dlg.m_BackGroundColor, NULL, 16);
				strcpy(Attrib.PreText, dlg.m_PreText);
				strcpy(Attrib.PostText, dlg.m_PostText);
				Attrib.DateFormat = dlg.m_Format;
				Attrib.bIncludeTime = dlg.m_IncludeTime;
				Attrib.b24Hour = dlg.m_b24Hour;
				
				SetAttributesEx(ObjectID, &Attrib);
			}
		}
		break;
	}
	ReDrawLabel();
}

void CVCTesterDlg::OnGetModifiedClick() 
{
	// Gets modified state of the current label
	if (IsModified())
		SetDlgItemInt(IDC_LI_MODIFIED, 1);
	else
		SetDlgItemInt(IDC_LI_MODIFIED, 0);
}

void CVCTesterDlg::OnStaticPictureClick() 
{
	// Get cursor's position in screen coordinates
	GetCursorPos(&PopupPoint);
	// and display popup menu
	CMenu* pPopup = PopupMenu.GetSubMenu(0);;
	pPopup->TrackPopupMenu(TPM_LEFTALIGN | TPM_LEFTBUTTON, PopupPoint.x, PopupPoint.y, this, NULL);
}

void CVCTesterDlg::OnObjectAtSelected()
{
	// Finds an object at the cursor's position on the current label
	// and fills objects list with its ID 
	::MapWindowPoints(NULL, m_Picture.GetSafeHwnd(), &PopupPoint, 1);	// convert to picture coordinates
	int nPix = this->GetDC()->GetDeviceCaps(LOGPIXELSY);				// convert to TWIPS
	PopupPoint.x = PopupPoint.x * 1440 / nPix;
	PopupPoint.y = PopupPoint.y * 1440 / nPix;

	int objid = WhichObject(PopupPoint.x, PopupPoint.y);
	if (objid != 0)
	{
		m_ObjectsList.ResetContent();
		char s[16];
		wsprintf(s, "0x%x", objid);
		m_ObjectsList.AddString(s);
	}
	else
		MessageBox("Can't find an object at this point", NULL, MB_OK | MB_ICONINFORMATION);
}

void CVCTesterDlg::OnObjectsAtSelected()
{
	// Finds objects at the cursor's position on the current label
	// and fills objects list with their IDs
	::MapWindowPoints(NULL, m_Picture.GetSafeHwnd(), &PopupPoint, 1);	// convert to picture coordinates
	int nPix = this->GetDC()->GetDeviceCaps(LOGPIXELSY);				// convert to TWIPS
	PopupPoint.x = PopupPoint.x * 1440 / nPix;
	PopupPoint.y = PopupPoint.y * 1440 / nPix;

	m_ObjectsList.ResetContent();
	char s[16];
	int nBytes = ObjectsAt(PopupPoint.x, PopupPoint.y, NULL, 0);	// Get number of bytes required
	int nObj = nBytes/sizeof(TOBJECTINFO);	// Get number of objects
	char* Buf = new char[nBytes];

	ObjectsAt(PopupPoint.x, PopupPoint.y, Buf, nBytes);
	POBJECTINFO pID = (POBJECTINFO) Buf;
	while (nObj != 0)
	{
		wsprintf(s, "0x%x", pID->ObjID);
		m_ObjectsList.AddString(s);
		++pID;
		--nObj;
	}
	delete[] Buf;
}
