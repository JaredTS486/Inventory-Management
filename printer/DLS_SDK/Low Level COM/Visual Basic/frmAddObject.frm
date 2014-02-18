VERSION 5.00
Begin VB.Form frmAddObject 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Ok"
   ClientHeight    =   3165
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4170
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3165
   ScaleWidth      =   4170
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdCancel 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   2280
      TabIndex        =   15
      Top             =   2760
      Width           =   1455
   End
   Begin VB.TextBox txtRot 
      Height          =   285
      Left            =   960
      TabIndex        =   14
      Text            =   "0"
      Top             =   2280
      Width           =   3015
   End
   Begin VB.TextBox txtH 
      Height          =   285
      Left            =   960
      TabIndex        =   13
      Text            =   "500"
      Top             =   1920
      Width           =   3015
   End
   Begin VB.TextBox txtW 
      Height          =   285
      Left            =   960
      TabIndex        =   12
      Text            =   "2000"
      Top             =   1560
      Width           =   3015
   End
   Begin VB.TextBox txtY 
      Height          =   285
      Left            =   960
      TabIndex        =   11
      Text            =   "100"
      Top             =   1200
      Width           =   3015
   End
   Begin VB.TextBox txtX 
      Height          =   285
      Left            =   960
      TabIndex        =   10
      Text            =   "100"
      Top             =   840
      Width           =   3015
   End
   Begin VB.TextBox txtName 
      Height          =   285
      Left            =   960
      TabIndex        =   9
      Text            =   "NewObj"
      Top             =   480
      Width           =   3015
   End
   Begin VB.CommandButton cmdOk 
      Caption         =   "Ok"
      Height          =   375
      Left            =   360
      TabIndex        =   1
      Top             =   2760
      Width           =   1455
   End
   Begin VB.ComboBox cmbTypes 
      Height          =   315
      Left            =   960
      Style           =   2  'Dropdown List
      TabIndex        =   0
      Top             =   120
      Width           =   3015
   End
   Begin VB.Label Label1 
      Caption         =   "Name:"
      Height          =   255
      Index           =   6
      Left            =   120
      TabIndex        =   8
      Top             =   480
      Width           =   735
   End
   Begin VB.Label Label1 
      Caption         =   "Rotation:"
      Height          =   255
      Index           =   5
      Left            =   120
      TabIndex        =   7
      Top             =   2280
      Width           =   735
   End
   Begin VB.Label Label1 
      Caption         =   "Height:"
      Height          =   255
      Index           =   4
      Left            =   120
      TabIndex        =   6
      Top             =   1920
      Width           =   735
   End
   Begin VB.Label Label1 
      Caption         =   "Width:"
      Height          =   255
      Index           =   3
      Left            =   120
      TabIndex        =   5
      Top             =   1560
      Width           =   735
   End
   Begin VB.Label Label1 
      Caption         =   "Y:"
      Height          =   255
      Index           =   2
      Left            =   120
      TabIndex        =   4
      Top             =   1200
      Width           =   735
   End
   Begin VB.Label Label1 
      Caption         =   "X:"
      Height          =   255
      Index           =   1
      Left            =   120
      TabIndex        =   3
      Top             =   840
      Width           =   735
   End
   Begin VB.Label Label1 
      Caption         =   "ObjType:"
      Height          =   255
      Index           =   0
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   735
   End
End
Attribute VB_Name = "frmAddObject"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
' ***********************************************************************
' frmAddObject.frm: This form is used to define general properties
'                   of an object and then add the object to the label
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

Private Sub cmdCancel_Click()
'hide the form on cancel
Hide
End Sub

Private Sub cmdOK_Click()
'add object with the properties defined by user
L.PrintObject.AddObject cmbTypes.ListIndex, txtName.Text, Val(txtX.Text), Val(txtY.Text), Val(txtW.Text), Val(txtH.Text), Val(txtRot.Text)
'and then hide the form
Hide
End Sub

Private Sub Form_Load()
'fill the cmbTypes combo by all available object types
Dim i As Integer
cmbTypes.Clear
For i = 0 To 7
cmbTypes.AddItem ObjType(i)
Next
End Sub
