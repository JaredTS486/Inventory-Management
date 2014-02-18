VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{FE0065C0-1B7B-11CF-9D53-00AA003C9CB6}#1.1#0"; "comct232.ocx"
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "VB High-Level OLE Demo"
   ClientHeight    =   8085
   ClientLeft      =   5055
   ClientTop       =   2640
   ClientWidth     =   5970
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   8085
   ScaleWidth      =   5970
   Begin VB.Frame Frame4 
      Caption         =   "TwinTurbo Printing"
      Height          =   1695
      Left            =   240
      TabIndex        =   22
      Top             =   5640
      Width           =   5535
      Begin VB.CommandButton RightRollBtn 
         Caption         =   "Print on Right Roll"
         Height          =   375
         Left            =   3480
         TabIndex        =   26
         Top             =   1080
         Width           =   1575
      End
      Begin VB.CommandButton LeftRollBtn 
         Caption         =   "Print on Left Roll"
         Height          =   375
         Left            =   1800
         TabIndex        =   25
         Top             =   1080
         Width           =   1455
      End
      Begin VB.ComboBox PrinterCmb 
         Height          =   315
         Left            =   240
         TabIndex        =   24
         Text            =   "Combo1"
         Top             =   600
         Width           =   4935
      End
      Begin VB.Label Label2 
         Caption         =   "Select Printer"
         Height          =   255
         Left            =   240
         TabIndex        =   23
         Top             =   360
         Width           =   1455
      End
   End
   Begin MSComDlg.CommonDialog cd 
      Left            =   2520
      Top             =   960
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CheckBox chkHide 
      Caption         =   "Hide Dymo Label"
      Height          =   225
      Left            =   240
      TabIndex        =   21
      Top             =   5160
      Value           =   1  'Checked
      Width           =   1815
   End
   Begin VB.CheckBox chkSysTray 
      Caption         =   "SysTray"
      Height          =   225
      Left            =   2160
      TabIndex        =   20
      Top             =   5160
      Width           =   2535
   End
   Begin VB.CommandButton CloseButton 
      Caption         =   "&Close"
      Height          =   315
      Left            =   3840
      TabIndex        =   4
      Top             =   7560
      Width           =   1890
   End
   Begin VB.CommandButton PrintButton 
      Caption         =   "&Print Label"
      Height          =   315
      Left            =   1680
      TabIndex        =   3
      Top             =   7560
      Width           =   1875
   End
   Begin VB.Frame Frame2 
      Caption         =   "Address Fields"
      Height          =   2115
      Left            =   210
      TabIndex        =   2
      Top             =   3000
      Width           =   5580
      Begin VB.TextBox NAddress 
         Height          =   285
         Left            =   1440
         TabIndex        =   17
         Text            =   "1"
         Top             =   240
         Width           =   375
      End
      Begin VB.CommandButton UpdateAddressButton 
         Caption         =   "Update Address"
         Height          =   330
         Left            =   3600
         TabIndex        =   16
         Top             =   240
         Width           =   1695
      End
      Begin VB.TextBox AddressText 
         Height          =   1215
         Left            =   240
         MultiLine       =   -1  'True
         TabIndex        =   15
         Top             =   720
         Width           =   3045
      End
      Begin VB.Frame Frame3 
         Caption         =   "Bar Code Location"
         Height          =   1095
         Left            =   3480
         TabIndex        =   11
         Top             =   840
         Width           =   1935
         Begin VB.OptionButton rbAbove 
            Caption         =   "Above Address"
            Height          =   255
            Left            =   120
            TabIndex        =   14
            Top             =   480
            Width           =   1695
         End
         Begin VB.OptionButton rbBelow 
            Caption         =   "Below Address"
            Height          =   255
            Left            =   120
            TabIndex        =   13
            Top             =   720
            Width           =   1695
         End
         Begin VB.OptionButton rbNone 
            Caption         =   "None"
            Height          =   255
            Left            =   120
            TabIndex        =   12
            Top             =   240
            Width           =   1695
         End
      End
      Begin ComCtl2.UpDown ud 
         Height          =   285
         Left            =   1815
         TabIndex        =   18
         Top             =   240
         Width           =   240
         _ExtentX        =   450
         _ExtentY        =   503
         _Version        =   327681
         AutoBuddy       =   -1  'True
         BuddyControl    =   "NAddress"
         BuddyDispid     =   196614
         OrigLeft        =   1320
         OrigTop         =   120
         OrigRight       =   1560
         OrigBottom      =   615
         SyncBuddy       =   -1  'True
         BuddyProperty   =   65547
         Enabled         =   -1  'True
      End
      Begin VB.Label Label1 
         Caption         =   "N Address:"
         Height          =   255
         Left            =   480
         TabIndex        =   19
         Top             =   240
         Width           =   1095
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Label Fields"
      Height          =   2625
      Left            =   210
      TabIndex        =   0
      Top             =   315
      Width           =   5580
      Begin VB.CheckBox chkVarOnly 
         Caption         =   "Variable Only"
         Height          =   255
         Left            =   240
         TabIndex        =   10
         Top             =   720
         Value           =   1  'Checked
         Width           =   3015
      End
      Begin VB.CommandButton UpdateListButton 
         Caption         =   "&Update Fields List"
         Height          =   330
         Left            =   3600
         TabIndex        =   9
         Top             =   315
         Width           =   1695
      End
      Begin VB.CommandButton UpdateFieldButton 
         Caption         =   "Update Field Data"
         Height          =   330
         Left            =   3600
         TabIndex        =   8
         Top             =   1080
         Width           =   1695
      End
      Begin VB.CommandButton OpenFileButton 
         Caption         =   "Open Label File"
         Height          =   330
         Left            =   3600
         TabIndex        =   7
         Top             =   1560
         Width           =   1695
      End
      Begin VB.CommandButton SaveFileButton 
         Caption         =   "Save Label File"
         Height          =   330
         Left            =   3600
         TabIndex        =   6
         Top             =   2040
         Width           =   1695
      End
      Begin VB.TextBox FieldText 
         Height          =   1335
         Left            =   240
         MultiLine       =   -1  'True
         TabIndex        =   5
         Top             =   1080
         Width           =   3045
      End
      Begin VB.ComboBox cbFields 
         Height          =   315
         Left            =   240
         Sorted          =   -1  'True
         Style           =   2  'Dropdown List
         TabIndex        =   1
         Top             =   315
         Width           =   3120
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
' ***********************************************************************
' HighOLEDemo.FRM
' Written 4/22/99 by Sergey Smirnov
'
' This program is meant to demonstrate the methods used to communicate with
' the Dymo Label Software programs via High Level OLE Automation Interface.
'
' This code was written and tested using Visual Basic 6.0 Enteprise Edition.
'
' Copyright 1999, 2002 DYMO Corporation
'
' Permission to use, copy, modify, and distribute this software for any
' purpose and without fee is hereby granted.
'
' ***********************************************************************

Option Explicit

'OLE objects used to communicate with DLS
Dim IDymoAddIn As Object
Dim IDymoLabels As Object

'Windows API functions and constants to work with the Registry
Const REG_SZ As Long = 1
Const HKEY_LOCAL_MACHINE = &H80000002
Const HKEY_CURRENT_USER = &H80000001
Const KEY_ALL_ACCESS = &H3F
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
Private Declare Function SetCurrentDirectory Lib "kernel32" Alias _
        "SetCurrentDirectoryA" (ByVal lpPathName As String) As Long


' -----------------------------------
' Create our OLE objects
' return TRUE on success
' -----------------------------------
Function CreateOLEObjects() As Boolean
    On Error GoTo CANNOTCREATE
    CreateOLEObjects = True
    Set IDymoAddIn = CreateObject("Dymo.DymoAddIn")
    Set IDymoLabels = CreateObject("Dymo.DymoLabels")
    'if both OLE objects successfully created then exit the subroutine
    If Not (IDymoAddIn Is Nothing) And Not (IDymoLabels Is Nothing) Then Exit Function
CANNOTCREATE:
    MsgBox "Unable to create OLE objects"
    CreateOLEObjects = False
End Function

Private Sub cbFields_Change()
FieldText = IDymoLabels.GetText(cbFields.Text)
End Sub

Private Sub chkSysTray_Click()
  IDymoAddIn.SysTray (chkSysTray.Value)
End Sub

' -----------------------------------
' Exit Dymo Label Program
' -----------------------------------
Private Sub CloseButton_Click()
    'Free OLE objects that were created during init
    Set IDymoAddIn = Nothing
    Set IDymoLabels = Nothing
    End
End Sub


' -----------------------------------
' Create OLE objects to communicate with Dymo Label
' -----------------------------------
Private Sub Form_Load()
    CreateOLEObjects
    UpdatePrinterCmb
End Sub


' -----------------------------------
' Hide and Show Dymo Label Program
' -----------------------------------
Private Sub chkHide_Click()
    If chkHide.Value = 0 Then
        IDymoAddIn.Show
    Else
        IDymoAddIn.Hide
    End If
End Sub

Private Sub LeftRollBtn_Click()
    If IDymoAddIn.IsTwinTurboPrinter(PrinterCmb.Text) Then
        IDymoAddIn.StartPrintJob
        IDymoAddIn.Print2 1, False, 0
        IDymoAddIn.EndPrintJob
    Else
        IDymoAddIn.StartPrintJob
        IDymoAddIn.Print 1, False
        IDymoAddIn.EndPrintJob
    End If
  
End Sub

' -----------------------------------
' Open a Label Template File
' -----------------------------------
Private Sub OpenFileButton_Click()
    'set Dymo Label directory as default
    Dim Path As String, hKey As Long, cb As Long
    RegOpenKeyEx HKEY_CURRENT_USER, "Software\DYMO\LabelWriter\Directories", 0, KEY_ALL_ACCESS, hKey
    RegQueryValueExNULL hKey, "Label Directory", 0&, REG_SZ, 0&, cb
    Path = String(cb, 0)
    RegQueryValueExString hKey, "Label Directory", 0&, REG_SZ, Path, cb
    SetCurrentDirectory Path
    
    ' display standart open dialog and then open selected file
    cd.ShowOpen
    IDymoAddIn.Open cd.FileName
    UpdateListButton_Click 'update available fields
End Sub

' -----------------------------------
' Print a Label
' -----------------------------------
Private Sub PrintButton_Click()
    'Print 1 copy and display print progress dialog
    Dim q
    q = IDymoAddIn.Print(1, True)
End Sub

Private Sub RightRollBtn_Click()
    If IDymoAddIn.IsTwinTurboPrinter(PrinterCmb.Text) Then
        IDymoAddIn.StartPrintJob
        IDymoAddIn.Print2 1, False, 1
        IDymoAddIn.EndPrintJob
    Else
        IDymoAddIn.StartPrintJob
        IDymoAddIn.Print 1, False
        IDymoAddIn.EndPrintJob
    End If

End Sub

' -----------------------------------
' Select New Label Design
' -----------------------------------
Private Sub SaveFileButton_Click()
    'set Dymo Label directory as default
    Dim Path As String, hKey As Long, cb As Long
    RegOpenKeyEx HKEY_CURRENT_USER, "Software\DYMO\LabelWriter\Directories", 0, KEY_ALL_ACCESS, hKey
    RegQueryValueExNULL hKey, "Label Directory", 0&, REG_SZ, 0&, cb
    Path = String(cb, 0)
    RegQueryValueExString hKey, "Label Directory", 0&, REG_SZ, Path, cb
    SetCurrentDirectory Path
    
    ' display standart saveas dialog and then open selected file
    cd.ShowSave
    IDymoAddIn.SaveAs cd.FileName
End Sub

' -----------------------------------
' Update address-field by user-defined data
' -----------------------------------
Private Sub UpdateAddressButton_Click()
Dim MaxN As Integer, N As Integer

    MaxN = IDymoLabels.AddressFieldCount
    If MaxN = 0 Then
        MsgBox "There is no address field on the label."
    Else
        N = Val(NAddress.Text)
        If (N < 1) Or (N > MaxN) Then
            MsgBox "Max address number is " & MaxN
        Else
            'set address
            IDymoLabels.SetAddress N, AddressText.Text
            'set POSTNET barcode position
            If rbNone.Value Then IDymoLabels.PostNet N, "None"
            If rbAbove.Value Then IDymoLabels.PostNet N, "Top"
            If rbBelow.Value Then IDymoLabels.PostNet N, "Bottom"
        End If
    End If
End Sub

' -----------------------------------
' Update Field with User-Defined Data
' -----------------------------------
Private Sub UpdateFieldButton_Click()
    'Name of the field to update is in cbFields.Text
    'Data to update by is in FieldText.Text
    IDymoLabels.SetField cbFields.Text, FieldText.Text
End Sub

' -----------------------------------
' Update Combo Box with List of Fields
' -----------------------------------
Private Sub UpdateListButton_Click()
    Dim Fields As String, EndPos As Integer, Text As String, p As Integer
    
    On Error Resume Next
    ' Clear the combo box
    cbFields.Clear
    ' Request fields depending on chkVarOnly value
    Fields = IDymoLabels.GetObjectNames(chkVarOnly.Value)
    
    While Fields <> ""
        ' Set the end pointer at the first encountered pipe
        EndPos = InStr(Fields, "|")
        ' If a pipe character was found
        If EndPos <> 0 Then
            ' Extract the first field name in list
            Text = Mid(Fields, 1, EndPos - 1)
            ' Add field name to list of names in combo box
            cbFields.AddItem Text
            ' Remove first field from list of fields
            Fields = Right(Fields, Len(Fields) - EndPos)
        Else
            ' Add last field
            cbFields.AddItem Fields
            ' clear Fields so we can exit from the While statement
            Fields = ""
        End If
    Wend

    ' Select the first field in combo box if exist
    If cbFields.ListCount <> 0 Then cbFields.ListIndex = 0

    'request number of address fields
    p = IDymoLabels.AddressFieldCount
    If p = 0 Then
        ud.Min = 0
        ud.Value = 0
        NAddress.Text = 0
    Else
        NAddress.Text = 1
    End If
    
    NAddress.Enabled = (p > 0)
    ud.Enabled = (p > 0)
    
    If NAddress.Enabled Then
        ud.Min = 1
        ud.Max = p
    End If

End Sub

Private Sub UpdatePrinterCmb()
    Dim Printers As String, EndPos As Integer, Text As String, p As Integer
    
    On Error Resume Next
    
    ' Clear the combo box
    PrinterCmb.Clear
    
    ' Request fields depending on chkVarOnly value
    Printers = IDymoAddIn.GetDymoPrinters()
    
    While Printers <> ""
        ' Set the end pointer at the first encountered pipe
        EndPos = InStr(Printers, "|")
        ' If a pipe character was found
        If EndPos <> 0 Then
            ' Extract the first field name in list
            Text = Mid(Printers, 1, EndPos - 1)
            ' Add field name to list of names in combo box
            PrinterCmb.AddItem Text
            ' Remove first field from list of fields
            Printers = Right(Printers, Len(Printers) - EndPos)
        Else
            ' Add last field
            PrinterCmb.AddItem Printers
            ' clear Fields so we can exit from the While statement
            Printers = ""
        End If
    Wend

    ' Select the first field in combo box if exist
    If PrinterCmb.ListCount <> 0 Then PrinterCmb.ListIndex = 0

End Sub

