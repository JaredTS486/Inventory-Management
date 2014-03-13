/*
libraries printer will need
#include <iostream>
#include <String>
#include "stdafx.h"
#include "PrintLabel.h"
#include "CDymoAddIn4.h"
#include "CDymoLabels.h"
#ifdef _DEBUG
#define new DEBUG_NEW
#endif
*/

class Printer{
	Printer(){
		CDymoAddin4 DymoAddIn;
		CDymoLabels DymoLabels;
	}
public:
	bool InitObjects(){
		if (DymoAddIn.m_lpDispatch == NULL){		
			if (!DymoAddIn.CreateDispatch(_T("Dymo.DymoAddIn"))){
				cout<<"Error: Cannot create the DymoAddIn."<<endl;					
				return false;
			}
		}

	// create the DymoLabels
		if (DymoLabels.m_lpDispatch == NULL){
			if (!DymoLabels.CreateDispatch(_T("Dymo.DymoLabels"))){
				cout<<"Error: Cannot create the DymoLabels."<<endl;									
				return false;
			}
		}
		DymoLabels.
		return true;
	}

	bool Print(string ImageFile){
		DymoLabels.SetImageFile(QRC, ImageFile);
		DymoAddin.Print(1, False);



};