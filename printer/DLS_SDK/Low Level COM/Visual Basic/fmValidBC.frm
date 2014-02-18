VERSION 5.00
Begin VB.Form fmValidBC 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Validate BarCode"
   ClientHeight    =   1695
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4035
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1695
   ScaleWidth      =   4035
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txBCData 
      Height          =   285
      Left            =   1680
      TabIndex        =   4
      Top             =   600
      Width           =   2175
   End
   Begin VB.CommandButton cmValBC 
      Caption         =   "Validate"
      Height          =   375
      Left            =   1320
      TabIndex        =   2
      Top             =   1080
      Width           =   1695
   End
   Begin VB.ComboBox cmbBCSymb 
      Height          =   315
      ItemData        =   "fmValidBC.frx":0000
      Left            =   1680
      List            =   "fmValidBC.frx":0037
      Style           =   2  'Dropdown List
      TabIndex        =   1
      Top             =   120
      Width           =   2175
   End
   Begin VB.Label laBCData 
      Caption         =   "BarCode Data:"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   600
      Width           =   1215
   End
   Begin VB.Label laBCSymb 
      Caption         =   "BarCode Symbology:"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   1575
   End
End
Attribute VB_Name = "fmValidBC"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
' ***********************************************************************
' fmValidBC.frm: This form is showed in response of pressing
'                the "ValidateBarCode" button on the main form(Form1)
' Written 4/30/99 by Sergey Smirnov
'
' This program is meant to demonstrate the methods used to communicate with
' the Dymo Label Software programs via Low-Level OLE Automation Interface.
'
' This code was written and tested using Visual Basic 6.0 Enteprise Edition.
'
' Copyright 1999 Dymo-CoStar Corporation
'
' Permission to use, copy, modify, and distribute this software for any
' purpose and without fee is hereby granted.
'
' ***********************************************************************

Option Explicit

Private Sub cmValBC_Click()
Dim Res As Integer
Dim Mess As String
  'this the only function call we need here
  Res = L.ValidateBarCode(txBCData.Text, cmbBCSymb.ListIndex)
  'now process result
  Select Case Res
Case 0
    Mess = "No Error"
Case 1
    Mess = "Text contains an invalid character"
Case 2
    Mess = "Text is too long"
Case 3
    Mess = "The text string is empty"
Case 4
    Mess = "The Bar Code type is unsupported"
Case 5
    Mess = "Numeric only bar code, and text contains non-numeric characters"
Case 6
    Mess = "Text string must have an odd number of characters"
Case 7
    Mess = "Text may not contain control characters"
Case 8
    Mess = "Text may not contain lower case characters"
Case 9
    Mess = "Text has not 7-bit ASCII characters"
Case 10
    Mess = "Text has invalid start/stop codes"
Case 11
    Mess = "Invalid Postnet bar code length (must be 7, 9, or 11 digits only)."
Case 12
    Mess = "Library bar codes must have 13 or 14 digits"
Case Else
  End Select
  'and display message to user
  MsgBox Mess
End Sub

