//***********************************************************************
// DDEDEMODlg.CPP
// Written 04/20/99 by Sergey Smirnov
//
// This program is meant to demonstrate the methods used to communicate with
// the Dymo Label Software programs via DDE from C++
//
// This code was written and tested using MS Visual C++ 6.0, under Windows 95.
//
// Copyright 1996,97,2002 DYMO Corporation
//
// Permission to use, copy, modify, and distribute this software for any
// purpose and without fee is hereby granted.
//
//************************************************************************

#include "stdafx.h"
#include "DDEDemo.h"
#include "DDEDemoDlg.h"
#include "ddeclient.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

#define AppName "DDE Demo"
#define STRLEN	300

CDDEClient *DDEClient = NULL;	// Create a DDE object to manage the conversation
BOOL bShutDown; //TRUE if we'll need to shut down DLS 

//initiate a DDE conversation with DLS
BOOL InitDDE()
{
	DDEClient = new CDDEClient("DYMO", "System");	// Try DDE w/DLS
	bShutDown=FALSE;//assume that DLS is running
	if (!DDEClient->GetInitState() || !DDEClient->ServerConnect()) {	// if no connection then...
		char path[STRLEN+1],s[STRLEN+1];
		DWORD l=STRLEN,x;
		HKEY hKey;

		bShutDown = TRUE;//DLS is not running so we'll need to shut it down
		//read program path from windows registry
		RegOpenKeyEx(HKEY_LOCAL_MACHINE, "Software\\DYMO\\LabelWriter", 0,KEY_READ,&hKey);
		RegQueryValueEx(hKey, "InstallPath", NULL, &x, (LPBYTE)path, &l);
		RegCloseKey(hKey);
		wsprintf(s,"%s\\dymolbl.exe",path);
		// try to launch the program, and then establish DDE link with it.
		if (WinExec(s, SW_MINIMIZE) < 32) {
			wsprintf(path,"Unable to launch %s. Please check the program path and try again.",s);
			MessageBox(0,path, AppName, MB_OK|MB_ICONEXCLAMATION);
			return FALSE;
		}
		DWORD Delay = GetTickCount() + 10000;
		while (GetTickCount() < Delay && !DDEClient->ServerConnect())
			;
		if ( GetTickCount() >= Delay) {
			MessageBox(0,"Unable to establish DDE conversation with DLS", AppName, MB_OK|MB_ICONEXCLAMATION);
			return FALSE;
		}
	}
	return TRUE;
}

/* This function  Requests the Last Error item from the server, and shows the
result in the dialog.
*/
void ShowResult(HWND hDlg)
{
	char szBuf[256] = "Hello";

	if (DDEClient->DDERequest("LASTERROR", (LPBYTE)szBuf, (UINT) 256))
		SetDlgItemText(hDlg, IDC_LASTERROR, szBuf);
	else SetDlgItemText(hDlg, IDC_LASTERROR, "Status unknown");
}


/* This function request the Fields from the server and places them in the listbox.
The fields are returned as one, long, null-terminated string, with each field
separated by a '|' character. Therefore, this function must break the returned
string into individual fields at each '|', and place each piece in the listbox.
*/
void GetFieldNames(HWND hDlg)
{
	char szBuf[256], *s;
	int i;

	SendDlgItemMessage(hDlg, IDC_FIELDS, CB_RESETCONTENT, 0, 0);
	if (DDEClient->DDERequest("FIELDS", (LPBYTE)szBuf, (UINT) 256)) {
		// first, divide the returned data into individual strings
		for (i = 0; szBuf[i]; i++) {
			if (szBuf[i] == '|' || szBuf[i] == '\r' || szBuf[i] == '\n') szBuf[i] = NULL;
		}
		// Now, insert each string in the list box
		s = szBuf;
		while (*s) {
			SendDlgItemMessage(hDlg, IDC_FIELDS, CB_ADDSTRING, 0, (LPARAM) (LPCSTR)s);
			s += lstrlen(s)+1;
		}
	}
	SendDlgItemMessage(hDlg, IDC_FIELDS, CB_SETCURSEL, 0, 0);

}

/////////////////////////////////////////////////////////////////////////////
// CDDEDemoDlg dialog

CDDEDemoDlg::CDDEDemoDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CDDEDemoDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CDDEDemoDlg)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CDDEDemoDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CDDEDemoDlg)
		// NOTE: the ClassWizard will add DDX and DDV calls here
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CDDEDemoDlg, CDialog)
	//{{AFX_MSG_MAP(CDDEDemoDlg)
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_BN_CLICKED(IDC_GETFIELDS, OnGetfields)
	ON_BN_CLICKED(IDC_OPENFILE, OnOpenfile)
	ON_BN_CLICKED(IDC_PRINT, OnPrint)
	ON_BN_CLICKED(IDC_SHOWWINDOW, OnShowwindow)
	ON_BN_CLICKED(IDC_TEMPLATE, OnTemplate)
	ON_BN_CLICKED(IDC_SETTEXT, OnSettext)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CDDEDemoDlg message handlers

BOOL CDDEDemoDlg::OnInitDialog()
{
	CDialog::OnInitDialog();

	// Set the icon for this dialog.  The framework does this automatically
	//  when the application's main window is not a dialog
	SetIcon(m_hIcon, TRUE);			// Set big icon
	SetIcon(m_hIcon, FALSE);		// Set small icon
	
	if (!InitDDE()) SendMessage(WM_CLOSE); //close the dialog if unable to establish 
										  //a DDE conversation with DLS
	ShowResult(m_hWnd);

	return TRUE;  // return TRUE  unless you set the focus to a control
}

// If you add a minimize button to your dialog, you will need the code below
//  to draw the icon.  For MFC applications using the document/view model,
//  this is automatically done for you by the framework.

void CDDEDemoDlg::OnPaint() 
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
HCURSOR CDDEDemoDlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

void CDDEDemoDlg::OnGetfields() 
{
	GetFieldNames(m_hWnd);//fill combo by available field names
	ShowResult(m_hWnd);
	
}

void CDDEDemoDlg::OnOpenfile() 
{
	// open file using edit window contents as filename
	char szCommand[STRLEN],szBuf[STRLEN];
	GetDlgItemText(IDC_EDIT, szBuf, 256);	// get file name
	wsprintf(szCommand, "Open(%s)", szBuf);
	DDEClient->DDEExecute((LPBYTE)szCommand);
	ShowResult(m_hWnd);
}

void CDDEDemoDlg::OnPrint() 
{
	DDEClient->DDEExecute((LPBYTE)"Print");  // print current label
	ShowResult(m_hWnd);
	
}

void CDDEDemoDlg::OnShowwindow() 
{
	// send appropriate DDE command to server
	DDEClient->DDEExecute(((CButton*)GetDlgItem(IDC_SHOWWINDOW))->GetCheck() ? (LPBYTE)"Hide" : (LPBYTE)"Show");
	ShowResult(m_hWnd);
	SetForegroundWindow();
	
}

void CDDEDemoDlg::OnTemplate() 
{
	// select the template with the name matching what is in the edit window
	char szCommand[STRLEN],szBuf[STRLEN];
	GetDlgItemText(IDC_EDIT, szBuf, 256);	// get file name
	wsprintf(szCommand, "SelectTemplate(%s)", szBuf);
	DDEClient->DDEExecute((LPBYTE)szCommand);
	ShowResult(m_hWnd);
}

void CDDEDemoDlg::OnCancel() 
{
	if (bShutDown)     // if we launched the program, then let's shut it down too.
		DDEClient->DDEExecute((LPBYTE)"Exit",FALSE);
	DDEClient->ServerDisconnect(); 		// terminate the conversation
	delete(DDEClient);	// destroy variable
	CDialog::OnCancel();
}

void CDDEDemoDlg::OnSettext() 
{
	// modify text of selected object
	char szCommand[STRLEN],szBuf[STRLEN],*s;
	DWORD dwIndex;

	lstrcpy(szCommand, "SetObjectText(");	// DDE Command  to send

	// Get the field to modify from the list box
	dwIndex = SendDlgItemMessage(IDC_FIELDS, CB_GETCURSEL, 0, 0);
	if (dwIndex != (DWORD) CB_ERR)
		SendDlgItemMessage(IDC_FIELDS, CB_GETLBTEXT, (WPARAM) dwIndex, (LPARAM) ((LPSTR) szBuf));

	// add the field name to the command string, and follow w/a comma
	lstrcat(szCommand, szBuf);
	lstrcat(szCommand, ", ");

	// get the replacement text from the edit window
	GetDlgItemText(IDC_EDIT, szBuf, 256);
	// replace every CR/LF pair with a '|', as required by server
	s = szBuf;
	while (*s) {
		if (*s == '\r')
			*s = '|';
		if (*s == '\n')
			lstrcpy(s, s+1);
		else ++s;
	}

	// and concatentate with command
	lstrcat(szCommand, szBuf);
	// terminate command with a right paren
	lstrcat(szCommand, ")");
	DDEClient->DDEExecute((LPBYTE)szCommand);	// send command to server
	ShowResult(m_hWnd);
}
