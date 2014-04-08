// Machine generated IDispatch wrapper class(es) created with Add Class from Typelib Wizard

// CDymoAddIn4 wrapper class

class CDymoAddIn4 : public COleDispatchDriver
{
public:
	CDymoAddIn4(){} // Calls COleDispatchDriver default constructor
	CDymoAddIn4(LPDISPATCH pDispatch) : COleDispatchDriver(pDispatch) {}
	CDymoAddIn4(const CDymoAddIn4& dispatchSrc) : COleDispatchDriver(dispatchSrc) {}

	// Attributes
public:

	// Operations
public:


	// IDymoAddIn4 methods
public:
    bool Open(LPCTSTR FileName)
	{
        bool result;
		static BYTE parms[] = VTS_BSTR ;
        InvokeHelper(0x1, DISPATCH_METHOD, VT_bool, (void*)&result, parms, FileName);
		return result;
	}
    bool Save()
	{
        bool result;
        InvokeHelper(0x2, DISPATCH_METHOD, VT_bool, (void*)&result, NULL);
		return result;
	}
    bool SaveAs(LPCTSTR FileName)
	{
        bool result;
		static BYTE parms[] = VTS_BSTR ;
        InvokeHelper(0x3, DISPATCH_METHOD, VT_bool, (void*)&result, parms, FileName);
		return result;
	}
    bool Print(long Copies, bool bShowDialog)
	{
        bool result;
        static BYTE parms[] = VTS_I4 VTS_bool ;
        InvokeHelper(0x4, DISPATCH_METHOD, VT_bool, (void*)&result, parms, Copies, bShowDialog);
		return result;
	}
	void Hide()
	{
		InvokeHelper(0x5, DISPATCH_METHOD, VT_EMPTY, NULL, NULL);
	}
	void Show()
	{
		InvokeHelper(0x6, DISPATCH_METHOD, VT_EMPTY, NULL, NULL);
	}
    void SysTray(bool State)
	{
        static BYTE parms[] = VTS_bool ;
		InvokeHelper(0x7, DISPATCH_METHOD, VT_EMPTY, NULL, parms, State);
	}
	void Quit()
	{
		InvokeHelper(0x8, DISPATCH_METHOD, VT_EMPTY, NULL, NULL);
	}
	CString get_FileName()
	{
		CString result;
		InvokeHelper(0x9, DISPATCH_PROPERTYGET, VT_BSTR, (void*)&result, NULL);
		return result;
	}
    bool SelectPrinter(LPCTSTR Printer)
	{
        bool result;
		static BYTE parms[] = VTS_BSTR ;
        InvokeHelper(0xa, DISPATCH_METHOD, VT_bool, (void*)&result, parms, Printer);
		return result;
	}
	CString GetDymoPrinters()
	{
		CString result;
		InvokeHelper(0xb, DISPATCH_METHOD, VT_BSTR, (void*)&result, NULL);
		return result;
	}
	CString GetMRULabelFiles()
	{
		CString result;
		InvokeHelper(0x12d, DISPATCH_METHOD, VT_BSTR, (void*)&result, NULL);
		return result;
	}
    bool Open2(LPCTSTR FileName)
	{
        bool result;
		static BYTE parms[] = VTS_BSTR ;
        InvokeHelper(0x12e, DISPATCH_METHOD, VT_bool, (void*)&result, parms, FileName);
		return result;
	}
	long GetMRULabelFileCount()
	{
		long result;
		InvokeHelper(0x12f, DISPATCH_METHOD, VT_I4, (void*)&result, NULL);
		return result;
	}
	CString GetMRULabelFileName(long Index)
	{
		CString result;
		static BYTE parms[] = VTS_I4 ;
		InvokeHelper(0x130, DISPATCH_METHOD, VT_BSTR, (void*)&result, parms, Index);
		return result;
	}
    bool OpenMRULabelFile(long Index)
	{
        bool result;
		static BYTE parms[] = VTS_I4 ;
        InvokeHelper(0x131, DISPATCH_METHOD, VT_bool, (void*)&result, parms, Index);
		return result;
	}
    bool OpenMRULabelFileByName(LPCTSTR FileName)
	{
        bool result;
		static BYTE parms[] = VTS_BSTR ;
        InvokeHelper(0x132, DISPATCH_METHOD, VT_bool, (void*)&result, parms, FileName);
		return result;
	}
    bool Print2(long Copies, bool bShowDlg, long Tray)
	{
        bool result;
        static BYTE parms[] = VTS_I4 VTS_bool VTS_I4 ;
        InvokeHelper(0x191, DISPATCH_METHOD, VT_bool, (void*)&result, parms, Copies, bShowDlg, Tray);
		return result;
	}
	long GetCurrentPaperTray()
	{
		long result;
		InvokeHelper(0x192, DISPATCH_METHOD, VT_I4, (void*)&result, NULL);
		return result;
	}
	void StartPrintJob()
	{
		InvokeHelper(0xc9, DISPATCH_METHOD, VT_EMPTY, NULL, NULL);
	}
	void EndPrintJob()
	{
		InvokeHelper(0xca, DISPATCH_METHOD, VT_EMPTY, NULL, NULL);
	}
    bool IsTwinTurboPrinter(LPCTSTR PrinterName)
	{
        bool result;
		static BYTE parms[] = VTS_BSTR ;
        InvokeHelper(0xcb, DISPATCH_METHOD, VT_bool, (void*)&result, parms, PrinterName);
		return result;
	}
	CString GetCurrentPrinterName()
	{
		CString result;
		InvokeHelper(0xce, DISPATCH_METHOD, VT_BSTR, (void*)&result, NULL);
		return result;
	}

	// IDymoAddIn4 properties
public:

};
