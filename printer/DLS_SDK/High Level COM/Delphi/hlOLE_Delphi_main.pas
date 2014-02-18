unit hlOLE_Delphi_main;
(*
 High level OLE DEMO program for Delphi 3.0
 Written 4/99 by Natalya Chernokozova

 This program is meant to demonstrate the methods used to communicate with
 the Dymo Label Software program via High level OLE, from Delphi.

 This code was written and tested using Delphi 3.0, under Windows 95.

 Copyright 1999, Dymo-Costar Corporation

 Permission to use, copy, modify, and distribute this software for any
 purpose and without fee is hereby granted.
*)

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComObj, Dymo_TLB, Spin, Registry, Variants;

type
  TfmMain = class(TForm)
    buClose: TButton;
    buPrint: TButton;
    gbFields: TGroupBox;
    cbFields: TComboBox;
    ckVarOnly: TCheckBox;
    buFieldsList: TButton;
    meFieldText: TMemo;
    buUpdateData: TButton;
    buOpenFile: TButton;
    buSaveFile: TButton;
    ckHideDL: TCheckBox;
    ckSysTray: TCheckBox;
    odLabelFile: TOpenDialog;
    sdFileLabel: TSaveDialog;
    gbAddressFields: TGroupBox;
    meAddressText: TMemo;
    sdNAddress: TSpinEdit;
    laNAddress: TLabel;
    gbBarCode: TGroupBox;
    rbNone: TRadioButton;
    rbAbove: TRadioButton;
    rbBelow: TRadioButton;
    buUpdateAddress: TButton;
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Button3: TButton;
    Button4: TButton;
    procedure buCloseClick(Sender: TObject);
    procedure cbFieldsChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ckHideDLClick(Sender: TObject);
    procedure buFieldsListClick(Sender: TObject);
    procedure buOpenFileClick(Sender: TObject);
    procedure buUpdateDataClick(Sender: TObject);
    procedure buSaveFileClick(Sender: TObject);
    procedure ckSysTrayClick(Sender: TObject);
    procedure buPrintClick(Sender: TObject);
    procedure buUpdateAddressClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMain: TfmMain;

(*
Call Project\Import Library from Delphi's main menu and import
Dymo Labrary registered on your system into the Dymo_TLB.PAS file.
Add the file name in the uses clause.
This let you use declared types as though they were native VCL objects.
*)
  DL: IDymoAddIn4;
  LB: IDymoLabels;

const
  //Dymo Library classes names:
  IDymoAddInName = 'Dymo.DymoAddIn';
  IDymoLabelsName = 'Dymo.DymoLabels';

  sDirectoriesKey = 'Software\DYMO\LabelWriter\Directories';
  sLabelDirName = 'Label Directory';
var
  LabelDirName: String;

implementation

{$R *.DFM}

procedure TfmMain.buCloseClick(Sender: TObject);
begin
     Close;
end;

// Request text property for field selected in Fields list box.
procedure TfmMain.cbFieldsChange(Sender: TObject);
begin
     meFieldText.Text := LB.GetText (cbFields.Text)
end;

procedure TfmMain.FormCreate(Sender: TObject);
begin
  //Create Dymo Label ActiveX objects.
  try
    DL := CreateOleObject(IDymoAddInName) as IDymoAddIn5;
    LB := CreateOleObject(IDymoLabelsName) as IDymoLabels;
  except
    MessageDlg ('Unable to create Dymo Label ActiveX objects.', mtError, [mbOk], 0)
  end;

  // get the label files directory from Registry
  with TRegistry.Create do begin
    RootKey := HKEY_CURRENT_USER;
    if OpenKey(sDirectoriesKey,FALSE) then begin
      LabelDirName := ReadString(sLabelDirName);
      CloseKey;
    end
    else LabelDirName := '';
  end;
  sdFileLabel.InitialDir := LabelDirName;
  odLabelFile.InitialDir := LabelDirName;
end;

// Update the window state of the server program when the user clicks Hide/Show.
procedure TfmMain.ckHideDLClick(Sender: TObject);
begin
  if ckHideDL.Checked then DL.Hide else DL.Show;
end;

// Requests a list of fields on the current label, and send the field names to the
// Fields drop down list box. Since the fields are returned as one long string, with each field
// separated by a '|', this routine must separate them at the '|', and send each one,
// in turn, to the list box.

procedure TfmMain.buFieldsListClick(Sender: TObject);
var
  p: Integer;
  StrObjs, s: String;
begin
  cbFields.Clear;

  StrObjs := LB.GetObjectNames (ckVarOnly.Checked);

  while StrObjs <> '' do begin
	p := Pos ('|', StrObjs);
	if  p > 1
          then s := Copy (StrObjs, 1, p - 1)
          else begin
            s := StrObjs;
            p := Length (s);
          end;
	cbFields.Items.Add (s);
	Delete (StrObjs, 1, p);
  end;

  // Activate the first item if exists.
  if cbFields.Items.Count > 0 then begin
    cbFields.ItemIndex := 0;
    cbFieldsChange(Self);
  end;

  p := LB.AddressFieldCount;
  if p = 0
    then begin
      sdNAddress.MinValue := 0;
      sdNAddress.Value := 0;
    end
    else sdNAddress.Value := 1;
  sdNAddress.Enabled := (p > 1);
  if sdNAddress.Enabled then begin
    sdNAddress.MinValue := 1;
    sdNAddress.MaxValue := p;
  end;

end;

// Create a file open command and send it to the server.
procedure TfmMain.buOpenFileClick(Sender: TObject);
begin
  if odLabelFile.Execute then DL.Open (odLabelFile.FileName);
end;

// Get the selected field from the drop down list box, and the text from the edit window, and use it
// to send a update field command to the server.
procedure TfmMain.buUpdateDataClick(Sender: TObject);
begin
     LB.SetField (cbFields.Text, meFieldText.Text)
end;

// Create a file save as command and send it to the server.
procedure TfmMain.buSaveFileClick(Sender: TObject);
begin
     if sdFileLabel.Execute then DL.SaveAs (sdFileLabel.FileName)
end;

// Create a file save as command and send it to the server.
// Get the selected address number from the address counter, and the text from the edit window,
// and the Bar Code Location, and use it to send a update address field command to the server.
procedure TfmMain.buUpdateAddressClick(Sender: TObject);
var
  N, MaxN: Integer;
begin
     MaxN := LB.AddressFieldCount;
     if MaxN = 0
        then MessageDlg ('There is no address field on the label.', mtInformation, [mbOk], 0)
        else begin
          N := sdNAddress.Value;
          if (N < 1) or (N > MaxN)
            then MessageDlg (Format ('Max address number is %s.', [MaxN]), mtInformation, [mbOk], 0)
            else begin
              LB.SetAddress (N, meAddressText.Text);
              if rbNone.Checked then LB.PostNet (N, 'None');
              if rbAbove.Checked then LB.PostNet (N, 'Top');
              if rbBelow.Checked then LB.PostNet (N, 'Bottom');
            end;
        end;
end;

// Update the window state of the server program when the user clicks SysTray.
procedure TfmMain.ckSysTrayClick(Sender: TObject);
begin
  DL.SysTray (ckSysTray.Checked)
end;

// Send a print command to the server.
procedure TfmMain.buPrintClick(Sender: TObject);
begin
     DL.Print (1, true);
end;

procedure TfmMain.Button3Click(Sender: TObject);
begin
  // print to the left tray
  DL.Print2(1, true, 0);
end;

procedure TfmMain.Button4Click(Sender: TObject);
begin
  // print to the right tray
  DL.Print2(1, true, 1);
end;

procedure TfmMain.FormShow(Sender: TObject);
var
  strPrinters: string;
  i: Integer;
begin
  ComboBox1.Clear;

  // get the available dymo printers
  // and put them in a combo box
  strPrinters := DL.GetDymoPrinters();

  i := Pos('|', strPrinters);
  while (i > 0) do
  begin
    ComboBox1.AddItem(Copy(strPrinters, 1, i - 1), nil);
    strPrinters := Copy(strPrinters, i + 1, Length(strPrinters) - i);
    i := Pos('|', strPrinters);
  end;

  if (Length(strPrinters) > 0) then
    ComboBox1.AddItem(strPrinters, nil);

  // select the first printer
  if (ComboBox1.Items.Count > 0) then
  begin
    ComboBox1.ItemIndex := 0;
    DL.SelectPrinter(ComboBox1.Text);
  end;
end;

procedure TfmMain.ComboBox1Select(Sender: TObject);
begin
  DL.SelectPrinter(ComboBox1.Text);
end;

end.
