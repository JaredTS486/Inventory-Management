//***********************************************************************
// DDEDemo.h : main header file for the DDEDEMO application
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

#if !defined(AFX_DDEDEMO_H__FFA5B9A7_F685_11D2_BE58_0000E8D4216C__INCLUDED_)
#define AFX_DDEDEMO_H__FFA5B9A7_F685_11D2_BE58_0000E8D4216C__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CDDEDemoApp:
// See DDEDemo.cpp for the implementation of this class
//

class CDDEDemoApp : public CWinApp
{
public:
	CDDEDemoApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDDEDemoApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CDDEDemoApp)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Developer Studio will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DDEDEMO_H__FFA5B9A7_F685_11D2_BE58_0000E8D4216C__INCLUDED_)
