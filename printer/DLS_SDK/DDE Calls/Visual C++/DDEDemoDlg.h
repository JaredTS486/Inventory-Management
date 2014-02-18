//***********************************************************************
// DDEDemoDlg.h : header file
// Written 04/21/99 by Sergey Smirnov
//
// This program is meant to demonstrate the methods used to communicate with
// the Dymo Label Software programs via DDE from C++.
//
// This code was written and tested using MS Visual C++ 6.0, under Windows 95.
//
// Copyright 1996,97,2002 DYMO Corporation
//
// Permission to use, copy, modify, and distribute this software for any
// purpose and without fee is hereby granted.
//
//***********************************************************************

#if !defined(AFX_DDEDEMODLG_H__FFA5B9A9_F685_11D2_BE58_0000E8D4216C__INCLUDED_)
#define AFX_DDEDEMODLG_H__FFA5B9A9_F685_11D2_BE58_0000E8D4216C__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

/////////////////////////////////////////////////////////////////////////////
// CDDEDemoDlg dialog

class CDDEDemoDlg : public CDialog
{
// Construction
public:
	CDDEDemoDlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CDDEDemoDlg)
	enum { IDD = IDD_DDEDEMO_DIALOG };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDDEDemoDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CDDEDemoDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnGetfields();
	afx_msg void OnOpenfile();
	afx_msg void OnPrint();
	afx_msg void OnShowwindow();
	afx_msg void OnTemplate();
	virtual void OnCancel();
	afx_msg void OnSettext();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Developer Studio will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DDEDEMODLG_H__FFA5B9A9_F685_11D2_BE58_0000E8D4216C__INCLUDED_)
