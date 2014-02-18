VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "VB DDE Demo"
   ClientHeight    =   4980
   ClientLeft      =   7176
   ClientTop       =   6036
   ClientWidth     =   6096
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   4980
   ScaleWidth      =   6096
   Begin VB.TextBox Text2 
      Height          =   330
      Left            =   420
      TabIndex        =   12
      Top             =   945
      Visible         =   0   'False
      Width           =   540
   End
   Begin VB.CommandButton CloseButton 
      Caption         =   "&Close"
      Height          =   435
      Left            =   4515
      TabIndex        =   10
      Top             =   4095
      Width           =   1170
   End
   Begin VB.CommandButton PrintButton 
      Caption         =   "&Print Label"
      Height          =   435
      Left            =   3045
      TabIndex        =   9
      Top             =   4095
      Width           =   1275
   End
   Begin VB.CheckBox HideProgramBox 
      Caption         =   "Hide DLS 4 Program"
      Height          =   225
      Left            =   315
      TabIndex        =   7
      Top             =   3990
      Width           =   2535
   End
   Begin VB.Frame Frame2 
      Caption         =   "Modifying/Changing Label"
      Height          =   2115
      Left            =   210
      TabIndex        =   3
      Top             =   1680
      Width           =   5580
      Begin VB.TextBox Text1 
         Height          =   1590
         Left            =   210
         MultiLine       =   -1  'True
         TabIndex        =   11
         Top             =   315
         Width           =   3165
      End
      Begin VB.CommandButton SelectTemplateButton 
         Caption         =   "Select Template"
         Height          =   330
         Left            =   3675
         TabIndex        =   6
         Top             =   1470
         Width           =   1695
      End
      Begin VB.CommandButton OpenFileButton 
         Caption         =   "Open Label File"
         Height          =   330
         Left            =   3675
         TabIndex        =   5
         Top             =   945
         Width           =   1695
      End
      Begin VB.CommandButton UpdateFieldButton 
         Caption         =   "Update Field Data"
         Height          =   330
         Left            =   3675
         TabIndex        =   4
         Top             =   420
         Width           =   1695
      End
   End
   Begin VB.CommandButton UpdateListButton 
      Caption         =   "&Update Fields List"
      Height          =   330
      Left            =   3465
      TabIndex        =   0
      Top             =   735
      Width           =   2115
   End
   Begin VB.Frame Frame1 
      Caption         =   "Template Fields"
      Height          =   1065
      Left            =   210
      TabIndex        =   1
      Top             =   315
      Width           =   5580
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   210
         Sorted          =   -1  'True
         TabIndex        =   2
         Top             =   315
         Width           =   2640
      End
   End
   Begin VB.Label Label1 
      Caption         =   "No Error"
      Height          =   225
      Left            =   315
      TabIndex        =   8
      Top             =   4305
      Width           =   2535
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
' ***********************************************************************
' DDEDEMO.FRM
' Written  2/6/97 by George Long
' Modified 4/15/99 by Sergey Smirnov
'
' This program is meant to demonstrate the methods used to communicate with
' the Dymo Label Software programs via DDE.
'
' This code was written and tested using Visual Basic 6.0 Enteprise Edition.
'
' Copyright 1996, 2002 DYMO Corporation
'
' Permission to use, copy, modify, and distribute this software for any
' purpose and without fee is hereby granted.
'
' ***********************************************************************


Option Explicit

' Windows API call to create delay
Private Declare Function GetTickCount Lib "kernel32" () As Long
          
'Windows API functions and constants to work with the Registry
Private Const REG_SZ As Long = 1
Private Const HKEY_LOCAL_MACHINE = &H80000002
Private Const HKEY_CURRENT_USER = &H80000001
Private Const KEY_ALL_ACCESS = &H3F
Private Declare Function RegOpenKeyEx Lib "advapi32.dll" Alias _
        "RegOpenKeyExA" (ByVal hKey As Long, ByVal lpSubKey As String, _
        ByVal ulOptions As Long, ByVal samDesired As Long, phkResult _
        As Long) As Long
Private Declare Function RegQueryValueExString Lib "advapi32.dll" Alias _
        "RegQueryValueExA" (ByVal hKey As Long, ByVal lpValueName As _
        String, ByVal lpReserved As Long, lpType As Long, ByVal lpData _
        As String, lpcbData As Long) As Long
Private Declare Function RegQueryValueExNULL Lib "advapi32.dll" Alias _
        "RegQueryValueExA" (ByVal hKey As Long, ByVal lpValueName As _
        String, ByVal lpReserved As Long, lpType As Long, ByVal lpData _
        As Long, lpcbData As Long) As Long

' Flag to remember state of DLS when DDEDEMO
' is run.  If DDEDEMO started DLS, then DDEDEMO
' will shut it down when you exit the application.
' If DLS was already running, then do not shut down
' DLS when the application is closed.
Public Loaded As Boolean

' -----------------------------------
' Establish a DDE Conversation
' -----------------------------------
Sub EstablishDDE()

    On Error Resume Next
        
    Dim DLS_SERVICE As String
    Dim DLS_EXE As String
    
    Dim Delay, hKey, cb


    'Set DDE Service Name and DDE Topic
    DLS_SERVICE = "DYMO|System"
    
    'Read EXE path from the Registry
    RegOpenKeyEx HKEY_LOCAL_MACHINE, "Software\Dymo\LabelWriter", 0, KEY_ALL_ACCESS, hKey
    RegQueryValueExNULL hKey, "InstallPath", 0&, REG_SZ, 0&, cb
    DLS_EXE = String(cb, 0)
    RegQueryValueExString hKey, "InstallPath", 0&, REG_SZ, DLS_EXE, cb
    'Append EXE name
    DLS_EXE = Left(DLS_EXE, cb - 1) + "\DYMOLBL.EXE"

    ' Prepare to establish a DDE conversation with DLSLABEL
    Text2.LinkTopic = DLS_SERVICE
    ' Establish a DDE conversation
    Text2.LinkMode = 2
    ' If unable to establish DDE conversation
    If Text2.LinkMode = 0 Then

        ' Set a flag indicating we had to start Dymo Label
        ' programatically
        SetFlag

        ' Run Dymo Label Software
        Shell DLS_EXE, 6

        ' Pause while program is initializing
        Delay = GetTickCount + 3000
        While (GetTickCount < Delay) And Text2.LinkMode = 0
            ' Try again to establish DDE conversation
            Text2.LinkMode = 2
        Wend

        ' If still unable to establish DDE conversation
        If Text2.LinkMode = 0 Then
            ' Display Error dialog
            MsgBox ("Could not run " + DLS_EXE)
            ' Exit this subroutine
            Exit Sub
        End If
    End If


End Sub


' -----------------------------------
' If DDEDEMO started Dymo Label when the form was opened,
' then close down Dymo Label.
' -----------------------------------
Sub IsLoaded()
    If Form1.Loaded = False Then
        ' Shut down Dymo Label
        Text2.LinkExecute "Exit"
        ' Turn off DDE
        Text2.LinkMode = 0
    End If

End Sub

' -----------------------------------
' Assume Dymo Label is already running
' -----------------------------------
Sub ResetFlag()
    Form1.Loaded = True
End Sub

' -----------------------------------
' Set the LOADED flag to indicate that DDEDEMO started
' Dymo Label when the form was opened.
' -----------------------------------
Sub SetFlag()
    Form1.Loaded = False
End Sub

' -----------------------------------
' Exit Dymo Label Program
' -----------------------------------
Private Sub CloseButton_Click()
    On Error Resume Next
    ' If DDEDEMO ran Dymo Label when the form was opened,
    ' then close Dymo Label and shut down DDE.
    IsLoaded
    ' End this program (DDEDEMO)
    End
End Sub


' -----------------------------------
' Establish DDE conversation with Dymo Label
' -----------------------------------
Private Sub Form_Load()
    On Error Resume Next

    ' Assume Dymo Label is already running. This flag is used
    ' so that if we start Dymo label, we can shut it down
    ' when this application program is closed.
    ResetFlag

    EstablishDDE
End Sub


' -----------------------------------
' Hide and Show Dymo Label Program
' -----------------------------------
Private Sub HideProgramBox_Click()
    If HideProgramBox.Value = 0 Then
        ' Send Show command via DDE
        Text2.LinkExecute "Show"
    Else
        ' Send Hide command via DDE
        Text2.LinkExecute "Hide"
    End If

    ' Wait until DDE Server is ready before continuing
    Do
        Text2.LinkItem = "Status"
        Text2.LinkRequest
    Loop Until InStr(Text2.Text, "Ready")

    ' Request error status
    Text2.LinkItem = "LastError"
    ' Make the DDE request now
    Text2.LinkRequest
    ' Display error status to user
    Label1.Caption = Text2.Text

End Sub

' -----------------------------------
' Open a Label Template File
' -----------------------------------
Private Sub OpenFileButton_Click()
    ' Send an Open Template command via DDE
    ' Text1 contains the filename of the template to open
    Text2.LinkExecute "Open(" + Text1.Text + ")"

    ' Wait until DDE Server is ready before continuing
    Do
        Text2.LinkItem = "Status"
        Text2.LinkRequest
    Loop Until InStr(Text2.Text, "Ready")

    ' Request error status
    Text2.LinkItem = "LastError"
    ' Make the DDE request now
    Text2.LinkRequest
    ' Display error status to user
    Label1.Caption = Text2.Text
End Sub

' -----------------------------------
' Print a Label
' -----------------------------------
Private Sub PrintButton_Click()
    ' Send Print command via DDE
    Text2.LinkExecute "Print"

    ' Wait until DDE Server is ready before continuing
    Do
        Text2.LinkItem = "Status"
        Text2.LinkRequest
    Loop Until InStr(Text2.Text, "Ready")

    ' Request error status
    Text2.LinkItem = "LastError"
    ' Make the DDE request now
    Text2.LinkRequest
    ' Display error status to user
    Label1.Caption = Text2.Text

End Sub

' -----------------------------------
' Select New Label Design
' -----------------------------------
Private Sub SelectTemplateButton_Click()
    ' Send a Select Template command via DDE
    ' Text1 contains the Template Name from the drop-down list
    Text2.LinkExecute "SelectTemplate(" + Text1.Text + ")"

    ' Wait until DDE Server is ready before continuing
    Do
        Text2.LinkItem = "Status"
        Text2.LinkRequest
    Loop Until InStr(Text2.Text, "Ready")

    ' Request error status
    Text2.LinkItem = "LastError"
    ' Make the DDE request now
    Text2.LinkRequest
    ' Display error status to user
    Label1.Caption = Text2.Text

End Sub

' -----------------------------------
' Update Field with User-Defined Data
' -----------------------------------
Private Sub UpdateFieldButton_Click()
Dim UserData$, CmdString$

    UserData$ = Text1.Text

    CmdString$ = "SetObjectText("
    CmdString$ = CmdString$ & Combo1.Text
    CmdString$ = CmdString$ & ", "
    CmdString$ = CmdString$ & UserData$
    CmdString$ = CmdString$ & ")"

    Text2.LinkExecute CmdString$

    ' Wait until DDE Server is ready before continuing
    Do
        Text2.LinkItem = "Status"
        Text2.LinkRequest
    Loop Until InStr(Text2.Text, "Ready")

    ' Request error status
    Text2.LinkItem = "LastError"
    ' Make the DDE request now
    Text2.LinkRequest
    ' Display error status to user
    Label1.Caption = Text2.Text

End Sub

' -----------------------------------
' Update Combo Box with List of Fields
' -----------------------------------
Private Sub UpdateListButton_Click()
    Dim DDEText$, EndPos, Text$
    
    On Error Resume Next
    ' Clear the combo box
    Combo1.Clear

    ' Request list of availble fields on selected template
    Text2.LinkItem = "Fields"

    ' Make the DDE request now
    Text2.LinkRequest

    ' Remove CR/LF characters from end, add a terminating pipe,
    ' and then save the modified field list in a temporary string
    DDEText$ = Left(Text2.Text, Len(Text2.Text) - 2) & "|"

    ' Initialize the end pointer to anything but zero
    EndPos = -1

    ' Loop until no more pipes are found in DDEString$
    While EndPos
        ' Set the end pointer at the first encountered pipe
        EndPos = InStr(DDEText$, "|")
        ' If a pipe character was found
        If EndPos Then
            ' Extract the first field name in list
            Text$ = Mid$(DDEText$, 1, EndPos - 1)
            ' Add field name to list of names in combo box
            Combo1.AddItem Text$
            ' Remove first field from list of fields
            DDEText$ = Right(DDEText$, Len(DDEText$) - EndPos)
        End If
    Wend

    ' Select the first field in combo box
    Combo1.ListIndex = 0

    ' Wait until DDE Server is ready before continuing
    Do
        Text2.LinkItem = "Status"
        Text2.LinkRequest
    Loop Until InStr(Text2.Text, "Ready")

    ' Request error status
    Text2.LinkItem = "LastError"
    ' Make the DDE request now
    Text2.LinkRequest
    ' Display error status to user
    Label1.Caption = Text2.Text
End Sub
