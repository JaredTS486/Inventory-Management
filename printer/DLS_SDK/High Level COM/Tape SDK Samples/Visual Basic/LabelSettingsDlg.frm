VERSION 5.00
Begin VB.Form Dialog 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Label Settings"
   ClientHeight    =   3600
   ClientLeft      =   2700
   ClientTop       =   2580
   ClientWidth     =   4275
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3600
   ScaleWidth      =   4275
   ShowInTaskbar   =   0   'False
   Begin VB.ComboBox TapeWidth 
      Height          =   315
      ItemData        =   "LabelSettingsDlg.frx":0000
      Left            =   240
      List            =   "LabelSettingsDlg.frx":0013
      TabIndex        =   9
      Top             =   1920
      Width           =   2295
   End
   Begin VB.ComboBox Borders 
      Height          =   315
      ItemData        =   "LabelSettingsDlg.frx":0077
      Left            =   240
      List            =   "LabelSettingsDlg.frx":008D
      Style           =   2  'Dropdown List
      TabIndex        =   6
      Top             =   2640
      Width           =   2295
   End
   Begin VB.TextBox LabelLength 
      Height          =   315
      Left            =   720
      TabIndex        =   4
      Top             =   1080
      Width           =   1215
   End
   Begin VB.CheckBox CheckFixed 
      Caption         =   "Fixed Label Length"
      Height          =   375
      Left            =   240
      TabIndex        =   3
      Top             =   600
      Width           =   1935
   End
   Begin VB.CheckBox CheckVertical 
      Caption         =   "Vertical Label"
      Height          =   255
      Left            =   240
      TabIndex        =   2
      Top             =   240
      Width           =   1815
   End
   Begin VB.CommandButton CancelButton 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   2880
      TabIndex        =   1
      Top             =   720
      Width           =   1095
   End
   Begin VB.CommandButton OKButton 
      Caption         =   "OK"
      Height          =   375
      Left            =   2880
      TabIndex        =   0
      Top             =   120
      Width           =   1095
   End
   Begin VB.Label Label3 
      Caption         =   "Tape Width:"
      Height          =   255
      Left            =   240
      TabIndex        =   8
      Top             =   1680
      Width           =   1095
   End
   Begin VB.Label Label2 
      Caption         =   "Borders:"
      Height          =   255
      Left            =   240
      TabIndex        =   7
      Top             =   2400
      Width           =   1455
   End
   Begin VB.Label Label1 
      Caption         =   "twips"
      Height          =   255
      Left            =   2040
      TabIndex        =   5
      Top             =   1150
      Width           =   495
   End
End
Attribute VB_Name = "Dialog"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

'Function CComboBoxData(sData As String) As Integer
'CComboBoxData = -1
'If Len(sData) = 0 Then Exit Function

'Dim nIndexLen As Integer
'Dim sIndex As String

'nIndexLen = InStr(sData, "=")
'If nIndexLen > 0 Then
'    sIndex = Trim(Left(sData, nIndexLen - 1))
'    CComboBoxData = CInt(sIndex)
'End If
'End Function


Private Sub CancelButton_Click()
'destroy dialog
Unload Dialog
End Sub

Private Sub CheckFixed_Click()
If CheckFixed.Value = 0 Then
    'auto label - disable length field
    LabelLength.Enabled = False
Else
    LabelLength.Enabled = True
End If
End Sub

Private Sub OKButton_Click()
Dim bResult As Boolean
'label orientation
DymoTapeAddIn.LabelOrientation = CheckVertical.Value

'label length and length mode (fixed or auto)
If CheckFixed.Value = 0 Then
    'auto label
    DymoTapeAddIn.LabelLength = 0
Else
    'fixed
    If Len(LabelLength.Text) > 0 And IsNumeric(LabelLength.Text) Then
        DymoTapeAddIn.LabelLength = CLng(LabelLength.Text)
    End If
End If


'tape width
If Len(TapeWidth.Text) > 0 Then
    bResult = DymoTapeAddIn.SetTapeWidth(CComboBoxData(TapeWidth.Text))
    If bResult = False Then
        MsgBox ("Tape Width " + TapeWidth.Text + " is not supported")
    End If
End If

'borders
If Len(Borders.Text) > 0 Then
    DymoTapeAddIn.BorderMode = CComboBoxData(Borders.Text)
End If

'close dialog
Unload Dialog
End Sub


Private Sub Form_Load()
'vertical or horizontal label
If DymoTapeAddIn.LabelOrientation Then
    CheckVertical.Value = 1
Else
    CheckVertical.Value = 0
End If

'fixed or auto label
Dim lLabelLengthTwips As Long

lLabelLengthTwips = DymoTapeAddIn.LabelLength
If lLabelLengthTwips = 0 Then
    CheckFixed.Value = 0
    'auto label - disable length field
    LabelLength.Enabled = False
Else
    CheckFixed.Value = 1
    LabelLength.Enabled = True
    LabelLength.Text = lLabelLengthTwips
End If
End Sub



