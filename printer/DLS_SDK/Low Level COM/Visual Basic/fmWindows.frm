VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form fmWindows 
   Caption         =   "Windows"
   ClientHeight    =   2925
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4170
   LinkTopic       =   "Form2"
   ScaleHeight     =   2925
   ScaleWidth      =   4170
   StartUpPosition =   3  'Windows Default
   Begin MSFlexGridLib.MSFlexGrid grWin 
      Height          =   2295
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   4095
      _ExtentX        =   7223
      _ExtentY        =   4048
      _Version        =   393216
      FixedCols       =   0
      AllowBigSelection=   0   'False
   End
   Begin VB.CommandButton cmSelect 
      Caption         =   "Select window"
      Height          =   375
      Left            =   1080
      TabIndex        =   0
      Top             =   2400
      Width           =   2055
   End
End
Attribute VB_Name = "fmWindows"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
' ***********************************************************************
' fmWindows.frm: This form is used to select a window for a graphic object
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
'Windows API functions to search windows
Private Declare Function GetWindow Lib "user32" (ByVal hwnd As Long, ByVal wCmd As Long) As Long
Private Declare Function GetWindowText Lib "user32" Alias "GetWindowTextA" (ByVal hwnd As Long, ByVal lpString As String, ByVal cch As Long) As Long
Private Declare Function GetActiveWindow Lib "user32" () As Long
Private Const GW_HWNDFIRST = 0
Private Const GW_HWNDLAST = 1
Private Const GW_HWNDNEXT = 2

Private Sub cmSelect_Click()
'NOTE:  this procedure will NOT change the label yet
'       it will just fill grid with proper values
'       actual changes will be made in the cmChange_Click procedure
'       in the fmLabelObj form
    fmLabelObj.FillRow 7, "GraphicSource", 2
    fmLabelObj.FillRow 11, "WindowHandle", Val(grWin.TextMatrix(grWin.Row, 0))
    fmWindows.Hide
End Sub

Private Sub Form_Activate()
'this fills the grid by window's captions and handles
Dim WName As String
Dim hwnd, hWnd1, hWnd2 As Long
Dim Ind, Res As Integer
Dim nMaxCount As Long

  nMaxCount = 30
  WName = Space(nMaxCount + 1)
  
  hwnd = GetActiveWindow
  hWnd1 = GetWindow(hwnd, GW_HWNDFIRST)
  hWnd2 = GetWindow(hwnd, GW_HWNDLAST)
  Ind = 0
  grWin.Rows = 1
  hwnd = hWnd1
  
  While hwnd <> hWnd2
    hwnd = hWnd1
    Res = GetWindowText(hwnd, WName, nMaxCount)
    If (Res <> 0) And (WName <> "") Then
      Ind = Ind + 1
      grWin.Rows = grWin.Rows + 1
      grWin.TextMatrix(Ind, 0) = Str(hwnd)
      grWin.TextMatrix(Ind, 1) = WName
    End If
    If hwnd <> hWnd2 Then hWnd1 = GetWindow(hwnd, GW_HWNDNEXT)
  Wend
  If grWin.Rows > 1 Then grWin.Row = 1
End Sub

Private Sub Form_Load()
'set grid's captions and coulumn widhts
  grWin.ColWidth(0) = 1000
  grWin.ColWidth(1) = 2500
  grWin.TextMatrix(0, 0) = "HWND"
  grWin.TextMatrix(0, 1) = "Title"
End Sub


Private Sub grWin_DblClick()
    cmSelect_Click
End Sub
