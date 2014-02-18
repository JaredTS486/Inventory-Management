//**************************************************************************
// DDEClient.h: interface for the CDDEClient class.
//
// Copyright 1996,97,2002 DYMO Corporation
//	Written by David Block, April 22, 1996
//  Modified by Sergey Smirnov Aprill 21, 1999
//  
// Permission to use, copy, modify, and distribute this software for any
// purpose and without fee is hereby granted.
//**************************************************************************

#if !defined(AFX_DDECLIENT_H__FC28F201_C955_11D1_8324_0080296A827E__INCLUDED_)
#define AFX_DDECLIENT_H__FC28F201_C955_11D1_8324_0080296A827E__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include <ddeml.h>

class CDDEClient  
{
public:
	BOOL bInit;
	BOOL bShutDown;
	DWORD dwInst;
	HSZ	hszService;
	HSZ	hszTopic;
	HSZ	hszItem;
	HCONV	hConv;
	static HDDEDATA /*EXPENTRY*/ /*_export*/__declspec( dllexport )  DDECallBack(WORD wType, WORD wFmt,
				HCONV hConvX, HSZ hsz1, HSZ hsz2, HDDEDATA hData,
				DWORD dwData1, DWORD dwData2);
	HDDEDATA DDECallbackHelper(WORD wType, WORD wFmt,
				HCONV hConvX, HSZ hsz1, HSZ hsz2, HDDEDATA hData,
				DWORD dwData1, DWORD dwData2);
	void DDEError(void) {
		UINT Error = DdeGetLastError(dwInst);
		if (Error == DMLERR_NO_ERROR) return;

	}
	CDDEClient(LPCSTR szService, LPCSTR szTopic);
	~CDDEClient();
	BOOL ServerConnect(void);
	BOOL ServerDisconnect(void);
	BOOL DDERequest(LPCSTR szItem, LPBYTE lpDataBuf, UINT cbBuf);
	BOOL DDEPoke(LPCSTR szItem, LPBYTE lpData); 
	BOOL DDEExecute(LPBYTE lpData,BOOL wait_for_ready=TRUE);
	BOOL GetInitState(void) { return bInit;}

};

#endif // !defined(AFX_DDECLIENT_H__FC28F201_C955_11D1_8324_0080296A827E__INCLUDED_)
