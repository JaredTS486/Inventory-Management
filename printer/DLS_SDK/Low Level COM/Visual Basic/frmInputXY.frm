VERSION 5.00
Begin VB.Form frmInputXY 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Enter X and Y (in TWIPS)"
   ClientHeight    =   1455
   ClientLeft      =   2835
   ClientTop       =   3480
   ClientWidth     =   2910
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   859.662
   ScaleMode       =   0  'User
   ScaleWidth      =   2732.333
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtX 
      Height          =   345
      Left            =   720
      TabIndex        =   1
      Top             =   120
      Width           =   1965
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   390
      Left            =   840
      TabIndex        =   4
      Top             =   1020
      Width           =   1140
   End
   Begin VB.TextBox txtY 
      Height          =   345
      IMEMode         =   3  'DISABLE
      Left            =   720
      TabIndex        =   3
      Top             =   525
      Width           =   1965
   End
   Begin VB.Label lblLabels 
      Caption         =   "&X:"
      Height          =   270
      Index           =   0
      Left            =   240
      TabIndex        =   0
      Top             =   180
      Width           =   420
   End
   Begin VB.Label lblLabels 
      Caption         =   "&Y:"
      Height          =   270
      Index           =   1
      Left            =   240
      TabIndex        =   2
      Top             =   540
      Width           =   420
   End
End
Attribute VB_Name = "frmInputXY"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
' ***********************************************************************
' frmInputXY.frm: This form is used to enter X and Y coordinates when needed
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

'public variables to access outside the form
Public X As Integer
Public Y As Integer

Private Sub cmdOK_Click()
    X = Val(txtX.Text)
    Y = Val(txtY.Text)
    Me.Hide
End Sub

Private Sub Form_Load()
    txtX.Text = X
    txtY.Text = Y
End Sub
