//**************************************************************************
// DDEClient.CPP
//
// DDE Client conversation object.
//
//	Copyright (c) 1996,2002, DYMO Corporation
//	Written by David Block, April 22, 1996
//  Modified by Sergey Smirnov April 21, 1999
//  
//  This implements the CDDEClient conversation object
//
// Permission to use, copy, modify, and distribute this software for any
// purpose and without fee is hereby granted.
//***********************************

/**********************************************************************
This module defines a DDEClient object that can be used for communicating
with a DDE Server. For an example of how the DDE functions can be used,
refer to the associated program "DDEDEMO.CPP."
**********************************************************************/


#include "stdafx.h"
#include "DDEClient.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

static CDDEClient * pseudoThis;

/* Constructor:
	Initializes DDE, creates string handles for Service and Topic names
*/
CDDEClient::CDDEClient(LPCSTR szService, LPCSTR szTopic):
bInit(FALSE), hConv((HCONV)NULL), dwInst(0L)
{
	pseudoThis = this;	// point to this object...
	if (DdeInitialize ((LPDWORD) &dwInst, (PFNCALLBACK) DDECallBack,
	  APPCMD_CLIENTONLY, 0L) == DMLERR_NO_ERROR) {	// OK, let's go...
		hszService = DdeCreateStringHandle(dwInst, szService, CP_WINANSI);
		hszTopic = DdeCreateStringHandle(dwInst, szTopic, CP_WINANSI);
		bInit = TRUE;
	}

}
/* Destructor:
	Terminates conversation, frees string handles created in constructor, and
	uninitializes DDE
*/
CDDEClient::~CDDEClient()
{
	if (bInit) {
		bInit = FALSE;
		ServerDisconnect();			// terminates any active conversation
		DdeFreeStringHandle(dwInst, hszService);
		DdeFreeStringHandle(dwInst, hszTopic);
		if (hszItem != (HSZ) NULL)
			DdeFreeStringHandle(dwInst, hszItem);
		DdeUninitialize(dwInst);
	}
}


/* Opens a conversation with the server. Returns TRUE on success,
 FALSE on failure.
*/
BOOL CDDEClient::ServerConnect(void)
{
	CONVCONTEXT ccConv;
	ccConv.cb = sizeof(CONVCONTEXT);
	ccConv.wFlags = ccConv.wCountryID = 0;
	ccConv.iCodePage = CP_WINANSI;

	if (hConv == (HCONV) NULL) {	// if not already connected...
		if ((hConv = DdeConnect(dwInst, hszService, hszTopic, (PCONVCONTEXT) &ccConv)) != NULL)
			return TRUE;
	}
	return FALSE;
}


/* If a conversation is open, disconnects it and returns TRUE, otherwise,
it returns FALSE if no conversation was active.
*/
BOOL CDDEClient::ServerDisconnect(void)
{
	if (hConv != (HCONV) NULL) {
		DdeDisconnect(hConv);
		hConv = (HCONV)NULL;
		return TRUE;
	}
	return FALSE;
}



/* Performs a DDE Request of item szItem, with data being placed in the
lpDataBuf. cbBuf is the size of the passed buffer.

Returns FALSE if no conversation open, or  error, TRUE on success
*/
BOOL CDDEClient::DDERequest(LPCSTR szItem, LPBYTE lpDataBuf, UINT cbBuf)
{
	HDDEDATA hData;
	BOOL nResult = FALSE;
	UINT nLastError;

	if (hConv == (HCONV) NULL)
		return FALSE;

	hszItem = DdeCreateStringHandle(dwInst, szItem, CP_WINANSI);
Request:
	hData = DdeClientTransaction(NULL, 0, hConv, hszItem, CF_TEXT, XTYP_REQUEST,
	  2000, NULL);
	if ((nLastError = DdeGetLastError(dwInst)) == DMLERR_NO_ERROR ) {	// get the data
		DdeGetData(hData, lpDataBuf, cbBuf, 0L);
		nResult = TRUE;	// success
	}
	else if (nLastError == DMLERR_DATAACKTIMEOUT) 	// timeout...
		goto Request;
	if (hData != (HDDEDATA) NULL)
		DdeFreeDataHandle(hData);
	DdeFreeStringHandle(dwInst, hszItem);
	hszItem = (HSZ) NULL;
	return nResult;
}


/* Pokes data to the Server, using the passed item.
Returns TRUE on SUCCESS, else FALSE.
*/
BOOL CDDEClient::DDEPoke(LPCSTR szItem, LPBYTE lpData)
{
	HDDEDATA hData;
	DWORD dwResult;
	BOOL nResult = TRUE;

	if (hConv == (HCONV) NULL)
		return FALSE;					// no conversation

	hszItem = DdeCreateStringHandle(dwInst, szItem, CP_WINANSI);
	hData = DdeCreateDataHandle(dwInst, (LPBYTE) lpData,
				 lstrlen((LPSTR) lpData)+1, 0L, hszItem, CF_TEXT, 0);
	if (hData != (HDDEDATA)NULL)
		(void) DdeClientTransaction((LPBYTE)hData, -1, hConv,
		  hszItem, CF_TEXT, XTYP_POKE, 2000, &dwResult);
	else {
		nResult = FALSE;
		DDEError();
	}

	DdeFreeStringHandle(dwInst, hszItem);
	hszItem = (HSZ) NULL;
	return nResult;
}

/* Sends a Execute command to the Server.
Returns TRUE on SUCCESS, else FALSE.
*/
BOOL CDDEClient::DDEExecute(LPBYTE lpData,BOOL wait_for_ready)
{
	HDDEDATA hData;
	DWORD dwResult;
	BOOL nResult = TRUE;
	char szStatus[50] = "";

	if (hConv == (HCONV) NULL)
		return FALSE;					// no conversation

	hData = DdeCreateDataHandle(dwInst, (LPBYTE) lpData,
			  lstrlen((LPSTR)lpData)+1, 0L, NULL, CF_TEXT, 0);
	if (hData != (HDDEDATA)NULL)
		(void) DdeClientTransaction((LPBYTE)hData, -1, hConv,
		  NULL, CF_TEXT, XTYP_EXECUTE, 3000, &dwResult);
	else {
		nResult = FALSE;
		DDEError();
	}

	//this will be used then "Exit" command is being sent
	//we can't wait for ready since DDE server already closed
	if (wait_for_ready)
	{
		while(!strstr(szStatus,"Ready"))
			DDERequest("Status",(LPBYTE)szStatus,49);
	}

	return nResult;
}



/* This is the callback used by DDEML. Since we are calling into an object,
we need to use the pseudoThis pointer to access the DDE object.
*/
HDDEDATA __declspec( dllexport ) CDDEClient::DDECallBack(WORD wType, WORD wFmt,
				HCONV hConvX, HSZ hsz1, HSZ hsz2, HDDEDATA hData,
				DWORD dwData1, DWORD dwData2)
{
	return pseudoThis->DDECallbackHelper(wType, wFmt,
				hConvX, hsz1, hsz2, hData, dwData1, dwData2);
}


/* This is the callback member function of the DDE object.
*/

HDDEDATA CDDEClient::DDECallbackHelper(WORD wType, WORD /*wFmt*/,
				HCONV /*hConvX*/, HSZ /*hsz1*/, HSZ /*hsz2*/, HDDEDATA /*hData*/,
				DWORD /*dwData1*/, DWORD /*dwData2*/)
{

	switch( wType) {
		case XTYP_DISCONNECT:
			hConv = (HCONV)NULL;
			if (hszItem != (HSZ)NULL) {
				DdeFreeStringHandle(dwInst, hszItem);
				hszItem = (HSZ) NULL;
			}
			return ( (HDDEDATA) NULL );

		case XTYP_ERROR:
			DDEError();
			break;

		case XTYP_XACT_COMPLETE:
			// compare transaction identifier, indicate transaction complete
			break;

	}

	return ( (HDDEDATA) NULL );
}




