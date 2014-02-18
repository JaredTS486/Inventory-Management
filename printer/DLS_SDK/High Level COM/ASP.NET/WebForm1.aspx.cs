using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using Dymo;

namespace DLS_SDK_Sample
{
	/// <summary>
	/// Summary description for WebForm1.
	/// </summary>
	public class WebForm1 : System.Web.UI.Page
	{
		public IDymoAddIn4 DymoAddIn;
		public IDymoLabels DymoLabels;

		protected System.Web.UI.WebControls.Label Label2;
		protected System.Web.UI.WebControls.DropDownList ObjectNameCmb;
		protected System.Web.UI.WebControls.Label Label1;
		protected System.Web.UI.WebControls.Label Label3;
		protected System.Web.UI.WebControls.Label Label4;
		protected System.Web.UI.WebControls.Label Label5;
		protected System.Web.UI.WebControls.DropDownList LabelFileCmb;
		protected System.Web.UI.WebControls.TextBox ObjectDataEdit;
		protected System.Web.UI.WebControls.DropDownList LabelWriterCmb;
		protected System.Web.UI.WebControls.DropDownList TrayCmb;
		protected System.Web.UI.WebControls.Button SetDataBtn;
		protected System.Web.UI.WebControls.Button PrintLabelBtn;
	
		private void SetupLabelFileCmb()
		{
			// clear all items first
			LabelFileCmb.Items.Clear();
			
			// obtain DLS's Label Files (MRU files)
			int i, j = DymoAddIn.GetMRULabelFileCount();
			for (i = 0; i < j; i++)
				LabelFileCmb.Items.Add(DymoAddIn.GetMRULabelFileName(i));
				
			DymoAddIn.OpenMRULabelFile(0);
		}
		
		private void SetupLabelObject()
		{
			// clear all items first
			ObjectNameCmb.Items.Clear();

			// get the objects on the label
			string ObjNames = DymoLabels.GetObjectNames(true);

			// parse the result
			if (ObjNames != null)
			{
				int i = ObjNames.IndexOf('|');
				while (i >= 0)
				{
					ObjectNameCmb.Items.Add(ObjNames.Substring(0, i));
					ObjNames = ObjNames.Remove(0, i + 1);
					i = ObjNames.IndexOf('|');
				}
				if (ObjNames.Length > 0)
					ObjectNameCmb.Items.Add(ObjNames);

				ObjectNameCmb.SelectedIndex = 0;
			}
		}
		
		private void SetupLabelWriterSelection(bool InitCmb)
		{
			// get the objects on the label
			if (InitCmb)
			{
				// clear all items first
				LabelWriterCmb.Items.Clear();
				
				string PrtNames = DymoAddIn.GetDymoPrinters();

				if (PrtNames != null)
				{
					// parse the result
					int i = PrtNames.IndexOf('|');
					while (i >= 0)
					{
						LabelWriterCmb.Items.Add(PrtNames.Substring(0, i));
						PrtNames = PrtNames.Remove(0, i + 1);
						i = PrtNames.IndexOf('|');
					}
					if (PrtNames.Length > 0)
						LabelWriterCmb.Items.Add(PrtNames);
						
					LabelWriterCmb.SelectedValue = DymoAddIn.GetCurrentPrinterName();
				}
			}
				
			// check if selected/current printer is a twin turbo printer
			TrayCmb.Enabled = DymoAddIn.IsTwinTurboPrinter(LabelWriterCmb.SelectedValue);
			if (TrayCmb.Enabled)
			{
				// show the current tray selection if the printer
				// is a twin turbo
				switch (DymoAddIn.GetCurrentPaperTray())
				{
					case 0: // left tray
						TrayCmb.SelectedIndex = 0;
						break;
						
					case 1: // right tray
						TrayCmb.SelectedIndex = 1;
						break;
					
					case 2: // auto switch
						TrayCmb.SelectedIndex = 2;
						break;
						
					default: // tray selection not set, so default to auto switch
						TrayCmb.SelectedIndex = 2;
						break;
				}
			}
		}

		private void Page_Load(object sender, System.EventArgs e)
		{
			// Put user code to initialize the page here

			// create DYMO COM objects
			DymoAddIn = new DymoAddInClass();
			DymoLabels = new DymoLabelsClass();			
			
			if (Session.IsNewSession)
			{
				// Setup tray selection cmb
				TrayCmb.Items.Add("Left Roll");
				TrayCmb.Items.Add("Right Roll");
				TrayCmb.Items.Add("Auto Switch");
				
				SetupLabelFileCmb();
					
				SetupLabelObject();
				
				SetupLabelWriterSelection(true);
			}
		}

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{    
			this.PrintLabelBtn.Click += new System.EventHandler(this.PrintLabelBtn_Click);
			this.LabelFileCmb.SelectedIndexChanged += new System.EventHandler(this.LabelFileCmb_SelectedIndexChanged);
			this.LabelWriterCmb.SelectedIndexChanged += new System.EventHandler(this.LabelWriterCmb_SelectedIndexChanged);
			this.SetDataBtn.Click += new System.EventHandler(this.SetDataBtn_Click);
			this.Unload += new System.EventHandler(this.WebForm1_Unload);
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion

		private void LabelFileCmb_SelectedIndexChanged(object sender, System.EventArgs e)
		{
			// open user selected label file
			if (DymoAddIn.OpenMRULabelFile(LabelFileCmb.SelectedIndex))
			{								
				// populate label objects
				SetupLabelObject();					

				// setup paper tray selection
				SetupLabelWriterSelection(false);
			}
		}

		private void LabelWriterCmb_SelectedIndexChanged(object sender, System.EventArgs e)
		{
			DymoAddIn.SelectPrinter(LabelWriterCmb.SelectedValue);
			SetupLabelWriterSelection(false);
		}

		private void PrintLabelBtn_Click(object sender, System.EventArgs e)
		{
			// ATTENTION: This call is very important if you're making mutiple calls to the Print() or Print2() function!
			// It's a good idea to always wrap StartPrintJob() and EndPrintJob() around a call to Print() or Print2() function.
			DymoAddIn.StartPrintJob();
			
			// print two copies
			DymoAddIn.Print2(1, false, TrayCmb.SelectedIndex);
			
			// ATTENTION: Every StartPrintJob() must have a matching EndPrintJob()
			DymoAddIn.EndPrintJob();
			
			// reinitialize label files
			SetupLabelFileCmb();
		}

		private void WebForm1_Unload(object sender, System.EventArgs e)
		{
			// clean up COM objects
			DymoAddIn = null;
			DymoLabels = null;
		}

		private void SetDataBtn_Click(object sender, System.EventArgs e)
		{
			DymoLabels.SetField(ObjectNameCmb.SelectedValue, ObjectDataEdit.Text);
		}
	}
}
