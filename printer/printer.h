/*
libraries printer will need
#include <iostream>
#include <String>
#include "PrintLabel.h"
#include "CDymoAddIn5.h"
#include "CDymoLabels.h"
#include "CDymoTape.h"
*/

class Printer{
	Printer(){
		CDymoAddin4 DymoAddIn;
		CDymoLabels DymoLabels;
	}
public:
	bool PrinterInit(){
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
		if (!DymoAddIn.open("default.lbl"))
			DymoAddIn.new("default.lbl"));
		return true;
	}

	bool PrintImage(string ImageFile){
		DymoLabels.SetImageFile(QRC, ImageFile);
		DymoAddin.Print(1, False);
		return true;
		
	}
	
	bool PrintBarcode(string Code){
		if (!DymoAddin.AddBarcode(Code,1,2,0))
			return false;
		DymoAddin.Print(1, False);
		return true;
		}

	bool Open(string name){
		if (!DymoAddin.Open(name))
			return false
		return true;
	}
	
	bool Print(){
		DymoAddin.print(1, False);
		return true;
	}

};
