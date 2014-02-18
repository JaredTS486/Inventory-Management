/*
	This sample is meant to demonstrate the methods used to communicate with
	the Dymo Label Software via LabelServer Automation Server interface.

	Permission to use, copy, modify, and distribute this software for any
	purpose and without fee is hereby granted.

	Copyright 2007 DYMO Corporation
	
*/

function PrintLabelLocal(txt2print)
{
    var DymoAddIn = new ActiveXObject('DYMO.DymoAddIn');
    var DymoLabels = new ActiveXObject('DYMO.DymoLabels');
    
    var labelfile = 'C:\\extensions\\miecontext\\test.LWL';
    var FieldName = "TEXT";
    
    var fsuccess;
    
    if (DymoAddIn.Open(labelfile))
    {
        fsuccess = DymoLabels.SetField(FieldName, txt2print);
        if (fsuccess)
            fsuccess = DymoAddIn.Print(1, true);
    }
    else
        alert('PrintLabel Error: ' + labelfile + ' not found.');
}

function PrintLabelFromURL(txt2print)
{
    var DymoAddIn = new ActiveXObject('DYMO.DymoAddIn');
    var DymoLabels = new ActiveXObject('DYMO.DymoLabels');
    
    var labelfile = 'http://localhost/WebSite03/test.LWL';
    var FieldName = "TEXT";
    
    var fsuccess;
    
    if (DymoAddIn.OpenURL(labelfile))
    {
        fsuccess = DymoLabels.SetField(FieldName, txt2print);
        if (fsuccess)
            fsuccess = DymoAddIn.Print(1, true);
    }
    else
        alert('PrintLabel Error: ' + labelfile + ' not found.');
}
