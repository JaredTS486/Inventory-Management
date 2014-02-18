#pragma once


namespace CPPSample
{
	using namespace System;
	using namespace System::ComponentModel;
	using namespace System::Collections;
	using namespace System::Windows::Forms;
	using namespace System::Data;
	using namespace System::Drawing;
	using namespace Interop::Dymo;

	/// <summary> 
	/// Summary for Form1
	///
	/// WARNING: If you change the name of this class, you will need to change the 
	///          'Resource File Name' property for the managed resource compiler tool 
	///          associated with all .resx files this class depends on.  Otherwise,
	///          the designers will not be able to interact properly with localized
	///          resources associated with this form.
	/// </summary>
	public __gc class Form1 : public System::Windows::Forms::Form
	{	
	public:
		IDymoAddIn4 * DymoAddIn;
		IDymoLabels * DymoLabels;

		Form1(void)
		{
			InitializeComponent();
		}
  
	protected:
		void Dispose(Boolean disposing)
		{
			if (disposing && components)
			{
				components->Dispose();
			}
			__super::Dispose(disposing);
		}
	private: System::Windows::Forms::OpenFileDialog *  openFileDialog1;
	private: System::Windows::Forms::Button *  CloseBtn;
	private: System::Windows::Forms::GroupBox *  groupBox1;
	private: System::Windows::Forms::TextBox *  ObjectDataEdit;
	private: System::Windows::Forms::Label *  label3;
	private: System::Windows::Forms::Label *  label2;
	private: System::Windows::Forms::ComboBox *  ObjectNameCmb;
	private: System::Windows::Forms::Button *  BrowseBtn;
	private: System::Windows::Forms::GroupBox *  groupBox2;
	private: System::Windows::Forms::Button *  PrintLabelBtn;
	private: System::Windows::Forms::ComboBox *  TrayCmb;
	private: System::Windows::Forms::Label *  label6;
	private: System::Windows::Forms::ComboBox *  LabelWriterCmb;
	private: System::Windows::Forms::Label *  label5;
	private: System::Windows::Forms::Label *  label1;
	private: System::Windows::Forms::TextBox *  FileNameEdit;

	private:
		/// <summary>
		/// Required designer variable.
		/// </summary>
		System::ComponentModel::Container * components;

		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		void InitializeComponent(void)
		{
			this->openFileDialog1 = new System::Windows::Forms::OpenFileDialog();
			this->CloseBtn = new System::Windows::Forms::Button();
			this->groupBox1 = new System::Windows::Forms::GroupBox();
			this->ObjectDataEdit = new System::Windows::Forms::TextBox();
			this->label3 = new System::Windows::Forms::Label();
			this->label2 = new System::Windows::Forms::Label();
			this->ObjectNameCmb = new System::Windows::Forms::ComboBox();
			this->BrowseBtn = new System::Windows::Forms::Button();
			this->groupBox2 = new System::Windows::Forms::GroupBox();
			this->PrintLabelBtn = new System::Windows::Forms::Button();
			this->TrayCmb = new System::Windows::Forms::ComboBox();
			this->label6 = new System::Windows::Forms::Label();
			this->LabelWriterCmb = new System::Windows::Forms::ComboBox();
			this->label5 = new System::Windows::Forms::Label();
			this->label1 = new System::Windows::Forms::Label();
			this->FileNameEdit = new System::Windows::Forms::TextBox();
			this->groupBox1->SuspendLayout();
			this->groupBox2->SuspendLayout();
			this->SuspendLayout();
			// 
			// openFileDialog1
			// 
			this->openFileDialog1->DefaultExt = S"lwl";
			this->openFileDialog1->Filter = S"DYMO Label File (*.lwl)|*.lwl";
			this->openFileDialog1->Title = S"Open DYMO Label File";
			// 
			// CloseBtn
			// 
			this->CloseBtn->Location = System::Drawing::Point(448, 376);
			this->CloseBtn->Name = S"CloseBtn";
			this->CloseBtn->TabIndex = 11;
			this->CloseBtn->Text = S"Close";
			this->CloseBtn->Click += new System::EventHandler(this, CloseBtn_Click);
			// 
			// groupBox1
			// 
			this->groupBox1->Controls->Add(this->ObjectDataEdit);
			this->groupBox1->Controls->Add(this->label3);
			this->groupBox1->Controls->Add(this->label2);
			this->groupBox1->Controls->Add(this->ObjectNameCmb);
			this->groupBox1->Location = System::Drawing::Point(16, 72);
			this->groupBox1->Name = S"groupBox1";
			this->groupBox1->Size = System::Drawing::Size(508, 148);
			this->groupBox1->TabIndex = 9;
			this->groupBox1->TabStop = false;
			this->groupBox1->Text = S"Label Object";
			// 
			// ObjectDataEdit
			// 
			this->ObjectDataEdit->Location = System::Drawing::Point(204, 48);
			this->ObjectDataEdit->Multiline = true;
			this->ObjectDataEdit->Name = S"ObjectDataEdit";
			this->ObjectDataEdit->Size = System::Drawing::Size(284, 84);
			this->ObjectDataEdit->TabIndex = 3;
			this->ObjectDataEdit->Text = S"";
			this->ObjectDataEdit->Leave += new System::EventHandler(this, ObjectDataEdit_Leave);
			// 
			// label3
			// 
			this->label3->Location = System::Drawing::Point(208, 28);
			this->label3->Name = S"label3";
			this->label3->Size = System::Drawing::Size(188, 16);
			this->label3->TabIndex = 2;
			this->label3->Text = S"Set label object data here:";
			// 
			// label2
			// 
			this->label2->Location = System::Drawing::Point(16, 28);
			this->label2->Name = S"label2";
			this->label2->Size = System::Drawing::Size(172, 16);
			this->label2->TabIndex = 1;
			this->label2->Text = S"Select a label object here:";
			// 
			// ObjectNameCmb
			// 
			this->ObjectNameCmb->DropDownStyle = System::Windows::Forms::ComboBoxStyle::DropDownList;
			this->ObjectNameCmb->Location = System::Drawing::Point(16, 48);
			this->ObjectNameCmb->Name = S"ObjectNameCmb";
			this->ObjectNameCmb->Size = System::Drawing::Size(172, 21);
			this->ObjectNameCmb->TabIndex = 0;
			// 
			// BrowseBtn
			// 
			this->BrowseBtn->Location = System::Drawing::Point(444, 36);
			this->BrowseBtn->Name = S"BrowseBtn";
			this->BrowseBtn->TabIndex = 8;
			this->BrowseBtn->Text = S"Browse...";
			this->BrowseBtn->Click += new System::EventHandler(this, BrowseBtn_Click);
			// 
			// groupBox2
			// 
			this->groupBox2->Controls->Add(this->PrintLabelBtn);
			this->groupBox2->Controls->Add(this->TrayCmb);
			this->groupBox2->Controls->Add(this->label6);
			this->groupBox2->Controls->Add(this->LabelWriterCmb);
			this->groupBox2->Controls->Add(this->label5);
			this->groupBox2->Location = System::Drawing::Point(16, 236);
			this->groupBox2->Name = S"groupBox2";
			this->groupBox2->Size = System::Drawing::Size(508, 132);
			this->groupBox2->TabIndex = 10;
			this->groupBox2->TabStop = false;
			this->groupBox2->Text = S"LabelWriter Selection";
			// 
			// PrintLabelBtn
			// 
			this->PrintLabelBtn->Location = System::Drawing::Point(8, 96);
			this->PrintLabelBtn->Name = S"PrintLabelBtn";
			this->PrintLabelBtn->Size = System::Drawing::Size(84, 23);
			this->PrintLabelBtn->TabIndex = 4;
			this->PrintLabelBtn->Text = S"Print Label";
			this->PrintLabelBtn->Click += new System::EventHandler(this, PrintLabelBtn_Click);
			// 
			// TrayCmb
			// 
			this->TrayCmb->DropDownStyle = System::Windows::Forms::ComboBoxStyle::DropDownList;
			System::Object* __mcTemp__1[] = new System::Object*[3];
			__mcTemp__1[0] = S"Left Tray";
			__mcTemp__1[1] = S"Right Tray";
			__mcTemp__1[2] = S"Auto Switch";
			this->TrayCmb->Items->AddRange(__mcTemp__1);
			this->TrayCmb->Location = System::Drawing::Point(312, 64);
			this->TrayCmb->Name = S"TrayCmb";
			this->TrayCmb->Size = System::Drawing::Size(128, 21);
			this->TrayCmb->TabIndex = 3;
			// 
			// label6
			// 
			this->label6->Location = System::Drawing::Point(308, 24);
			this->label6->Name = S"label6";
			this->label6->Size = System::Drawing::Size(188, 32);
			this->label6->TabIndex = 2;
			this->label6->Text = S"Set tray selection (available only with LabelWriter TWIN TURBO)";
			// 
			// LabelWriterCmb
			// 
			this->LabelWriterCmb->Location = System::Drawing::Point(8, 64);
			this->LabelWriterCmb->Name = S"LabelWriterCmb";
			this->LabelWriterCmb->Size = System::Drawing::Size(280, 21);
			this->LabelWriterCmb->TabIndex = 1;
			this->LabelWriterCmb->SelectionChangeCommitted += new System::EventHandler(this, LabelWriterCmb_SelectionChangeCommitted);
			// 
			// label5
			// 
			this->label5->Location = System::Drawing::Point(16, 40);
			this->label5->Name = S"label5";
			this->label5->Size = System::Drawing::Size(156, 16);
			this->label5->TabIndex = 0;
			this->label5->Text = S"Select a LabelWriter here:";
			// 
			// label1
			// 
			this->label1->Location = System::Drawing::Point(12, 16);
			this->label1->Name = S"label1";
			this->label1->Size = System::Drawing::Size(316, 16);
			this->label1->TabIndex = 6;
			this->label1->Text = S"Select a label file here: (click Browse... to browse to the file)";
			// 
			// FileNameEdit
			// 
			this->FileNameEdit->Location = System::Drawing::Point(12, 36);
			this->FileNameEdit->Name = S"FileNameEdit";
			this->FileNameEdit->ReadOnly = true;
			this->FileNameEdit->Size = System::Drawing::Size(424, 20);
			this->FileNameEdit->TabIndex = 7;
			this->FileNameEdit->Text = S"";
			// 
			// Form1
			// 
			this->AutoScaleBaseSize = System::Drawing::Size(5, 13);
			this->ClientSize = System::Drawing::Size(540, 418);
			this->Controls->Add(this->groupBox1);
			this->Controls->Add(this->BrowseBtn);
			this->Controls->Add(this->groupBox2);
			this->Controls->Add(this->label1);
			this->Controls->Add(this->FileNameEdit);
			this->Controls->Add(this->CloseBtn);
			this->Name = S"Form1";
			this->StartPosition = System::Windows::Forms::FormStartPosition::CenterScreen;
			this->Text = S"DYMO SDK CPP Sample";
			this->Load += new System::EventHandler(this, Form1_Load);
			this->Closed += new System::EventHandler(this, Form1_Closed);
			this->groupBox1->ResumeLayout(false);
			this->groupBox2->ResumeLayout(false);
			this->ResumeLayout(false);

		}	

		
		void SetupLabelObject()
		{
			// clear edit control
			ObjectDataEdit->Clear();
			
			// clear all items first
			ObjectNameCmb->Items->Clear();

			// get the objects on the label
			String *ObjNames = DymoLabels->GetObjectNames(true);

			if (ObjNames != 0)
			{
				// parse the result
				int i = ObjNames->IndexOf('|');
				while (i >= 0)
				{
					ObjectNameCmb->Items->Add(ObjNames->Substring(0, i));
					ObjNames = ObjNames->Remove(0, i + 1);
					i = ObjNames->IndexOf('|');
				}
				if (ObjNames->Length > 0)
					ObjectNameCmb->Items->Add(ObjNames);
					
				ObjectNameCmb->SelectedIndex = 0;
			}
		}
		
		void SetupLabelWriterSelection(bool InitCmb)
		{
			// get the objects on the label
			if (InitCmb)
			{
				// clear all items first
				LabelWriterCmb->Items->Clear();
				
				String *PrtNames = DymoAddIn->GetDymoPrinters();

				if (PrtNames != 0)
				{
					// parse the result
					int i = PrtNames->IndexOf('|');
					while (i >= 0)
					{
						LabelWriterCmb->Items->Add(PrtNames->Substring(0, i));
						PrtNames = PrtNames->Remove(0, i + 1);
						i = PrtNames->IndexOf('|');
					}
					if (PrtNames->Length > 0)
						LabelWriterCmb->Items->Add(PrtNames);
						
					PrtNames = DymoAddIn->GetCurrentPrinterName();
					if (PrtNames != 0)
						LabelWriterCmb->SelectedIndex = LabelWriterCmb->Items->IndexOf(PrtNames);
					else
						LabelWriterCmb->SelectedIndex = 0;
				}
			}
				
			// check if selected/current printer is a twin turbo printer
			TrayCmb->Enabled = DymoAddIn->IsTwinTurboPrinter(LabelWriterCmb->Text);
			if (TrayCmb->Enabled)
			{
				// show the current tray selection if the printer
				// is a twin turbo
				switch (DymoAddIn->GetCurrentPaperTray())
				{
					case 0: // left tray
						TrayCmb->SelectedIndex = 0;
						break;
						
					case 1: // right tray
						TrayCmb->SelectedIndex = 1;
						break;
					
					case 2: // auto switch
						TrayCmb->SelectedIndex = 2;
						break;
						
					default: // tray selection not set, so default to auto switch
						TrayCmb->SelectedIndex = 2;
						break;
				}
			}
		}

private: System::Void Form1_Load(System::Object *  sender, System::EventArgs *  e)
		 {
			// create DYMO COM objects
			DymoAddIn = new DymoAddInClass();
			DymoLabels = new DymoLabelsClass();

			// show the file name
			FileNameEdit->Text = DymoAddIn->FileName;

			// populate label objects
			SetupLabelObject();					

			// obtain the currently selected printer
			SetupLabelWriterSelection(true);
		 }
			 
private: System::Void Form1_Closed(System::Object *  sender, System::EventArgs *  e)		
		 {
			// clean up DYMO COM objects
			DymoAddIn = 0;
			DymoLabels = 0;
		 }

private: System::Void BrowseBtn_Click(System::Object *  sender, System::EventArgs *  e)
		 {
			// use the current file name's folder as the initial
			// directory for the open file dialog
			String *str = FileNameEdit->Text;
			int i = str->LastIndexOf(S"\\");
			str = str->Substring(0, i);
			openFileDialog1->InitialDirectory = str;

			if (openFileDialog1->ShowDialog() == DialogResult::OK)
			{
				// open user selected label file
				if (DymoAddIn->Open(openFileDialog1->FileName))
				{				
					// show the file name
					FileNameEdit->Text = openFileDialog1->FileName;
					
					// populate label objects
					SetupLabelObject();					

					// setup paper tray selection
					SetupLabelWriterSelection(false);
				}
			}
		 }

private: System::Void LabelWriterCmb_SelectionChangeCommitted(System::Object *  sender, System::EventArgs *  e)
		 {
			DymoAddIn->SelectPrinter(LabelWriterCmb->Text);
			SetupLabelWriterSelection(false);
		 }

private: System::Void PrintLabelBtn_Click(System::Object *  sender, System::EventArgs *  e)
		 {
			// ATTENTION: This call is very important if you're making mutiple calls to the Print() or Print2() function!
			// It's a good idea to always wrap StartPrintJob() and EndPrintJob() around a call to Print() or Print2() function.
			DymoAddIn->StartPrintJob();
			
			// print two copies
			DymoAddIn->Print2(1, false, TrayCmb->SelectedIndex);
			
			// ATTENTION: Every StartPrintJob() must have a matching EndPrintJob()
			DymoAddIn->EndPrintJob();
		 }

private: System::Void CloseBtn_Click(System::Object *  sender, System::EventArgs *  e)
		 {
			Close();
		 }

private: System::Void ObjectDataEdit_Leave(System::Object *  sender, System::EventArgs *  e)
		 {
			DymoLabels->SetField(ObjectNameCmb->Text, ObjectDataEdit->Text);
		 }

};
}


