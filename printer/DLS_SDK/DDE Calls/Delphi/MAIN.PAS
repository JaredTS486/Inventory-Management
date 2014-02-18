unit Main;
(*
 MAIN.PAS

 This unit implements all of the DDE functionality for the Delphi demo program.
 DDEDEMO program for Delphi
 Written 1/97 by David Block
 Modified 4/99 by Natalya Chernokozova
 Modified 4/99 by Sergey Smirnov

 This program is meant to demonstrate the methods used to communicate with
 the Dymo Label Software programs via DDE, from Delphi.

 This code was written and tested using Delphi 3.0, under Windows 95.

 Copyright 1996,97,99 Dymo-CoStar Corporation

 Permission to use, copy, modify, and distribute this software for any
 purpose and without fee is hereby granted.
*)



interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, DdeMan, TextUtil, Registry;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Fields: TComboBox;
    GroupBox2: TGroupBox;
    Memo1: TMemo;
    ModifyButton: TButton;
    OpenFileButton: TButton;
    TemplateButton: TButton;
    CheckBox1: TCheckBox;
    ErrorText: TLabel;
    PrintButton: TButton;
    CloseButton: TButton;
    Client: TDdeClientConv;
//	 StatusItem: TDdeClientItem;
//	 LastErrorItem: TDdeClientItem;
    FieldsButton: TButton;
	 procedure ShowLastError;
         procedure WaitForReady;
	 procedure FormShow(Sender: TObject);
	 procedure CloseButtonClick(Sender: TObject);
	 procedure PrintButtonClick(Sender: TObject);
	 procedure CheckBox1Click(Sender: TObject);
	 procedure TemplateButtonClick(Sender: TObject);
	 procedure OpenFileButtonClick(Sender: TObject);
	 procedure ModifyButtonClick(Sender: TObject);
	 procedure FieldsButtonClick(Sender: TObject);
  private
	 { Private declarations }
	 Function ConvertLines : String;
  public
	 { Public declarations }
	 bShutDown : Boolean;
  end;

const
     LWKey = 'SOFTWARE\DYMO\LabelWriter';
     InstPathParam = 'InstallPath';
     DefDDEApp = 'C:\Program Files\Dymo Label';
     DLExeFileName = 'Dymolbl.exe';

     DDEService = 'DYMO';
     AppName = 'DYMO';

var DDEApp: String;
    chDDEApp : array [0..100] of char;
var
  Form1: TForm1;


implementation

{$R *.DFM}
var
  Command: array[0..255] of Char;

//update last error
procedure TForm1.ShowLastError;
begin
	ErrorText.Caption := Client.RequestData('LASTERROR');
end;
//a delay till DDE server ready to execute next command
procedure TForm1.WaitForReady;
var
  s: PChar;
begin
  s := Client.RequestData('status');
  while (s <> nil) and (Pos('READY', UpperCase(StrPas(s))) = 0) do
  begin
    Sleep(1000); // give DLS time to update its status
		s := Client.RequestData('status');
  end;
end;

(* Before showing the form, try to open the DDE conversation. If it can not be
opened, set the clients ServiceApplication to the application we wish to use, and
try again. In this way, we can determine if the application needed to be launched,
or if it was already running. If we needed to set the ServiceApplication before we
could open the DDE link, then the server application was not running when this
program started. Therefore, we will set the bShutdown flag to TRUE, so that,
on exit, we know we should shut it down.

If we were not able to open the DDE link after we set the ServiceApplication, then we
give an error and exit the program.
*)
procedure TForm1.FormShow(Sender: TObject);
var
	Delay : LongInt;
begin
	Client.ServiceApplication := '';	{ By using an empty string, we won't try to launch the server }
	Client.SetLink(DDEService, 'System');	{ The topic name is always System}
	bShutdown := FALSE;


  with TRegistry.Create do Begin
    RootKey := HKEY_LOCAL_MACHINE;
    if OpenKey(LWKey,FALSE) then
		Begin
			DDEApp := ReadString(InstPathParam);
			CloseKey;
		End
		else DDEApp := DefDDEApp;
  end;
  DDEApp := DDEApp + '\' + DLExeFileName;

	if not Client.OpenLink then	{ Try to open the link }
	Begin
    StrPCopy (chDDEApp, DDEApp);
		if (WinExec(chDDEApp, SW_MINIMIZE) < 32) then
		Begin
			ShowMessage('Unable to launch ' + DDEApp + '.');
			exit;
		End;
		Delay := GetTickCount + 10000;
		while (GetTickCount < Delay) and (not Client.OpenLink) do
			;
		if GetTickCount >= Delay then				{ Couldn't launch it. }
		Begin
			ShowMessage('Unable to open DDE Conversation with ' + AppName + '.');
			exit;
		end
		else
			bShutdown := TRUE;		{ Since we needed to launch it, we'll shut it down when we quit}
	End;

	ShowLastError;	{ update the last error text}
	FieldsButtonClick(Sender);		{ Fill listbox with the names of available fields }
	{ the next three lines will force the program to be hidden }
(*	StrPCopy(Command, 'Hide');
	Client.ExecuteMacro(Command, FALSE);
	Checkbox1.Checked := TRUE;
*)

end;

procedure TForm1.CloseButtonClick(Sender: TObject);
begin
	if bShutdown then	{ If the server wasn't running when we started...}
	Begin
		StrPCopy(Command, 'Exit');		{ ...then tell the server to shut down.}
		Client.ExecuteMacro(Command, FALSE);
	end
	else
		Client.Closelink;
	Close;
end;

{ Send a print command to the server }
procedure TForm1.PrintButtonClick(Sender: TObject);
begin
	StrPCopy(Command, 'Print');
	Client.ExecuteMacro(Command, FALSE);
  WaitForReady;
	ShowLastError;	{ update the last error text}
end;

{ Update the window state of the server program when the user clicks Hide/Show }
procedure TForm1.CheckBox1Click(Sender: TObject);
begin
	if Checkbox1.Checked then
		StrPCopy(Command, 'Hide')
	else
		StrPCopy(Command, 'Show, Restore');
  Client.ExecuteMacro(Command, FALSE);
  WaitForReady;
	ShowLastError;	{ update the last error text}
end;

{ Create a template command, using the text in the edit window, and send it to the server}
procedure TForm1.TemplateButtonClick(Sender: TObject);
begin
	StrPCopy(Command, 'SelectTemplate(' + Memo1.Text + ')');
	Client.ExecuteMacro(Command, FALSE);
  WaitForReady;
	ShowLastError;	{ update the last error text}
end;

{ Create a file open command, using the text in the edit window, and send it to the server}
procedure TForm1.OpenFileButtonClick(Sender: TObject);
begin
	StrPCopy(Command, 'Open(' + Memo1.Text + ')');
	Client.ExecuteMacro(Command, FALSE);
  WaitForReady;
	ShowLastError;	{ update the last error text}
end;

{ Get the selected field from the list box, and the text from the edit window, and use it
 to send a update field command to the server.
 Since the text is sent as a single line, the text in the edit window must have the CR/LF
 pairs replaced with the '|' separator before sending the command.}
procedure TForm1.ModifyButtonClick(Sender: TObject);
begin

	StrPCopy(Command, 'SetObjectText(' +
		Fields.Items[Fields.ItemIndex] + ',' +
		ConvertLines + ')');
	Client.ExecuteMacro(Command, FALSE);
  WaitForReady;
	ShowLastError;	{ update the last error text}
end;

{ Take the text in the edit window, and concatenate each line, with a '|' character
in place of the CR/LF. The function will return a string with CR/LF's replaced with '|'s.}

Function TForm1.ConvertLines : String;
var
	nLine: Integer;
Begin
	Result := '';
	For nLine := 0 to Memo1.Lines.Count do
		Result := Result + Memo1.Lines[nLine] + '|';

	while ((Result<>'') and (Result[Length(Result)] = '|')) do	{ Trim extra pipes off end...}
		Delete(Result, Length(Result), 1);
End;

{ Requests a list of fields on the current label, and send the field names to the
 Fields list box. Since the fields are returned as one long string, with each field
 separated by a '|', this routine must separate them at the '|', and send each one,
 in turn, to the list box.

 NOTE: Delphi adds an extra CR/LF at the end of the string, so this function must
 remove that, as well.
}
procedure TForm1.FieldsButtonClick(Sender: TObject);
var
	szFieldNames : Pchar;
	n : Integer;
	FieldNames : String;

begin
	try
		szFieldNames := Client.RequestData('Fields');
		Fields.Clear;
		FieldNames := strpas(szFieldNames);
		Delete(FieldNames, Length(FieldNames)-1, 2); { delete CR/LF that Delphi adds }
		For n := 1 to LineCount(FieldNames) do
			Fields.Items.Add(GetLine(FieldNames,n));
		Fields.ItemIndex := 0;
	except
		ShowMessage('Error reading Fields list');
	end;
end;

end.
