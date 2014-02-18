function PrintLabel()
{
	try
	{
		netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
		
		// create and use the nsDymoAddIn object
		const DymoAddInCID = "@dymo.com/sdk/nsDymoAddIn;1";
		DymoAddIn = Components.classes[DymoAddInCID].createInstance();
		DymoAddIn = DymoAddIn.QueryInterface(Components.interfaces.nsIDymoAddIn2);

		// create and use the nsDymoLabels object
		const DymoLabelsCID = "@dymo.com/sdk/nsDymoLabels;1";
		DymoLabels = Components.classes[DymoLabelsCID].createInstance();
		DymoLabels = DymoLabels.QueryInterface(Components.interfaces.nsIDymoLabels);

	        if (DymoAddIn.Open('C:\\Documents and Settings\\All Users\\Documents\\DYMO Label\\Label Files\\Address (30252, 30320, 30572).LWL'))
        	{
	        	DymoLabels.SetAddress(1, 'Pablo Martini1\nSAMPLE Corporation\n333 W. Fantasy World\nSantaland, NP 99999-9999');
		        DymoAddIn.Print(1, true);
	        }
	        else if (DymoAddIn.Open('C:\\Documents and Settings\\All Users\\Documents\\DYMO Label\\Label Files\\Address (30252, 30320).LWL'))
        	{
	        	DymoLabels.SetAddress(1, 'Pablo Martini1\nSAMPLE Corporation\n333 W. Fantasy World\nSantaland, NP 99999-9999');
		        DymoAddIn.Print(1, true);
	        }
        	else if (DymoAddIn.Open('C:\\Program Files\\Dymo Label\\Label Files\\Address  (30252, 30320).LWT'))
	        {
        		DymoLabels.SetAddress(1, 'Pablo Martini2\nSAMPLE Corporation\n333 W. Fantasy World\nSantaland, NP 99999-9999');
		        DymoAddIn.Print(1, true);
	        }
        	else
		        alert('Error: Label file Not Found!');
	}
	catch (err)
	{
		alert(err);
		return;
	}
}
