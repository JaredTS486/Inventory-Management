VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form fmLabelObj 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "LabelInfo"
   ClientHeight    =   4230
   ClientLeft      =   30
   ClientTop       =   315
   ClientWidth     =   5550
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4230
   ScaleWidth      =   5550
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmSetWinH 
      Caption         =   "Set WinHandle"
      Height          =   375
      Left            =   4080
      TabIndex        =   9
      Top             =   2160
      Width           =   1335
   End
   Begin VB.CommandButton cmSetFName 
      Caption         =   "Set FileName"
      Height          =   375
      Left            =   4080
      TabIndex        =   8
      Top             =   1200
      Width           =   1335
   End
   Begin VB.PictureBox pbGraph 
      Height          =   975
      Left            =   4080
      ScaleHeight     =   915
      ScaleWidth      =   1275
      TabIndex        =   7
      Top             =   120
      Width           =   1335
   End
   Begin VB.CommandButton cmSetBmpH 
      Caption         =   "Set BmpHandle"
      Height          =   375
      Left            =   4080
      TabIndex        =   6
      Top             =   1680
      Width           =   1335
   End
   Begin VB.CommandButton cmGrabCB 
      Caption         =   "GrabClipboard"
      Height          =   375
      Left            =   4080
      TabIndex        =   5
      Top             =   2640
      Width           =   1335
   End
   Begin VB.CommandButton cmOk 
      Caption         =   "Update"
      Height          =   252
      Left            =   120
      TabIndex        =   4
      Top             =   120
      Width           =   732
   End
   Begin VB.TextBox txValue 
      Height          =   500
      Left            =   960
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   3
      Text            =   "fmLabelObj.frx":0000
      Top             =   0
      Width           =   3015
   End
   Begin MSFlexGridLib.MSFlexGrid grAttr 
      Height          =   3675
      Left            =   120
      TabIndex        =   2
      ToolTipText     =   "Click to edit"
      Top             =   560
      Width           =   3855
      _ExtentX        =   6800
      _ExtentY        =   6482
      _Version        =   393216
      Rows            =   11
      FixedRows       =   0
      AllowUserResizing=   1
   End
   Begin VB.CommandButton cmChange 
      Caption         =   "Change Label"
      Height          =   372
      Left            =   4080
      TabIndex        =   1
      Top             =   3240
      Width           =   1332
   End
   Begin VB.CommandButton cmExit 
      Caption         =   "Exit"
      Height          =   372
      Left            =   4080
      TabIndex        =   0
      Top             =   3720
      Width           =   1332
   End
End
Attribute VB_Name = "fmLabelObj"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
' ***********************************************************************
' fmLabelObj.frm: This form is used to modify properties of a label object
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
Private Declare Function GetObjectType Lib "gdi32" (ByVal hgdiobj As Long) As Long
Private Const OBJ_BITMAP = 7

'declare diferent objects
Dim LabObj As Dymo.LabelObject

Dim TextObj As Dymo.TextObj
Dim AddrObj As Dymo.AddressObj
Dim GrObj As Dymo.GraphicObj
Dim RectObj As Dymo.RectObj
Dim LineObj As Dymo.LineObj
Dim BarCodeObj As Dymo.BarCodeObj
Dim CounterObj As Dymo.CounterObj
Dim DateTimeObj As Dymo.DateTimeObj
Dim TextAttr As Dymo.TextAttributes

Private Sub cmChange_Click()
Dim GrS As Byte, FirstInd As Integer

 With fmLabelObj
    'write properties common for all objects
    LabObj.Name = grAttr.TextMatrix(1, 1)
    LabObj.X = Val(grAttr.TextMatrix(2, 1))
    LabObj.Y = Val(grAttr.TextMatrix(3, 1))
    LabObj.Width = Val(grAttr.TextMatrix(4, 1))
    LabObj.Height = Val(grAttr.TextMatrix(5, 1))
    LabObj.Rotation = Val(grAttr.TextMatrix(6, 1))
    
    'now write specific properties for particular object type
    Select Case LabObj.ObjType
    Case 0 'TEXT
      TextObj.IsVariable = grAttr.TextMatrix(7, 1) = "TRUE"

    Case 1 'ADDRESS
      AddrObj.BarCodePosition = Val(grAttr.TextMatrix(7, 1))
      AddrObj.b9DigitOnly = grAttr.TextMatrix(8, 1) = "TRUE"
    
    Case 2 'GRAPHIC
      'GrS is GraphicSource  property
      'but before writing this we should at first
      'write proper info in some other fields
      GrS = Val(grAttr.TextMatrix(7, 1))
      Select Case GrS
        Case 0 'image comes from file
            GrObj.FileName = grAttr.TextMatrix(8, 1)
        Case 1 'image comes from clipboard
            GrObj.BitmapHandle = Val(grAttr.TextMatrix(9, 1))
            GrObj.PaletteHandle = Val(grAttr.TextMatrix(10, 1))
        Case 2 'image is a screenshot of some window
            GrObj.WindowHandle = Val(grAttr.TextMatrix(11, 1))
        Case 3 'do nothing cause we already changed
               'graphic by calling GrabClipboard
        Case Else
            MsgBox "GraphicSource is expected between 0 and 3.", vbCritical
            Exit Sub
      End Select
      'now it is safe to write GraphicSource
      GrObj.GraphicSource = GrS
      GrObj.Border = Val(grAttr.TextMatrix(12, 1))
      GrObj.BorderColor = Val(grAttr.TextMatrix(13, 1))
      
    Case 3 'RECTANGLE
      RectObj.bFilled = (grAttr.TextMatrix(7, 1) = "TRUE")
      RectObj.Border = Val(grAttr.TextMatrix(8, 1))
      RectObj.BorderColor = Val(grAttr.TextMatrix(9, 1))
      RectObj.FillColor = Val(grAttr.TextMatrix(10, 1))
      
    Case 4 'LINE
      LineObj.Length = Val(grAttr.TextMatrix(7, 1))
      LineObj.Orientation = Val(grAttr.TextMatrix(8, 1))
      LineObj.Thickness = Val(grAttr.TextMatrix(9, 1))
      LineObj.LineColor = Val(grAttr.TextMatrix(10, 1))
      
    Case 5 'BARCODE
      BarCodeObj.Text = grAttr.TextMatrix(7, 1)
      BarCodeObj.Font = grAttr.TextMatrix(8, 1)
      BarCodeObj.TextPos = Val(grAttr.TextMatrix(9, 1))
      BarCodeObj.BCType = Val(grAttr.TextMatrix(10, 1))
      BarCodeObj.Size = Val(grAttr.TextMatrix(11, 1))
      BarCodeObj.Justify = Val(grAttr.TextMatrix(12, 1))
      BarCodeObj.Link = Val(grAttr.TextMatrix(13, 1))
    
    Case 6 'COUNTER
      CounterObj.PreText = grAttr.TextMatrix(7, 1)
      CounterObj.PostText = grAttr.TextMatrix(8, 1)
      CounterObj.Start = Val(grAttr.TextMatrix(9, 1))
      CounterObj.Current = Val(grAttr.TextMatrix(10, 1))
      CounterObj.MinWidth = Val(grAttr.TextMatrix(11, 1))
      CounterObj.Increment = Val(grAttr.TextMatrix(12, 1))
      CounterObj.UseLeadingZeros = (grAttr.TextMatrix(13, 1) = "TRUE")
           
    Case 7 'DATE-TIME
      DateTimeObj.PreText = grAttr.TextMatrix(7, 1)
      DateTimeObj.PostText = grAttr.TextMatrix(8, 1)
      DateTimeObj.Format = Val(grAttr.TextMatrix(9, 1))
      DateTimeObj.IncludeTime = (grAttr.TextMatrix(10, 1) = "TRUE")
      DateTimeObj.b24Hour = (grAttr.TextMatrix(11, 1) = "TRUE")
    
    End Select
    
    'text properties available only
    'for TEXT, ADDRESS, COUNTER or DATE-TIME
    If (LabObj.ObjType = 0) Or (LabObj.ObjType = 1) _
    Or (LabObj.ObjType = 6) Or (LabObj.ObjType = 7) Then
        FirstInd = grAttr.Rows - 10
        TextAttr.Text = grAttr.TextMatrix(FirstInd + 1, 1)
        TextAttr.Font_1 = grAttr.TextMatrix(FirstInd + 2, 1)
        TextAttr.Font_2 = grAttr.TextMatrix(FirstInd + 3, 1)
        TextAttr.Justify = Val(grAttr.TextMatrix(FirstInd + 4, 1))
        TextAttr.VJustify = Val(grAttr.TextMatrix(FirstInd + 5, 1))
        TextAttr.Mirrored = (grAttr.TextMatrix(FirstInd + 6, 1) = "TRUE")
        TextAttr.Vertical = (grAttr.TextMatrix(FirstInd + 7, 1) = "TRUE")
        TextAttr.TextColor = Val(grAttr.TextMatrix(FirstInd + 8, 1))
        TextAttr.BackGroundColor = Val(grAttr.TextMatrix(FirstInd + 9, 1))
    End If
    
  End With
  'redraw changed label
  Form1.ReDrawLabel
End Sub

Private Sub cmExit_Click()
'hide the form on exit
  Me.Hide
End Sub

Private Sub cmSetBmpH_Click()
'NOTE:  this procedure will NOT change the label yet
'       it will just fill grid with proper values
'       actual changes will be made in the cmChange_Click procedure

    'display standard open dialog
    Form1.dlg.ShowOpen
    On Error GoTo erFileName
        'load graphic file into pbGraph control to preview
        Set pbGraph.Picture = LoadPicture(Form1.dlg.FileName)
        'update GraphicSource in the grid to 1
        FillRow 7, "GraphicSource", 1
        'set bitmap handle
        FillRow 9, "BitmapHandle", pbGraph.Picture
        'and palette handle
        If GetObjectType(pbGraph.Picture) = OBJ_BITMAP Then
            FillRow 10, "PaletteHandle", pbGraph.Picture.hPal
        End If
        Exit Sub
erFileName:
    MsgBox "Error loading graphic file."
End Sub

Private Sub cmSetFName_Click()
'NOTE:  this procedure will NOT change the label yet
'       it will just fill grid with proper values
'       actual changes will be made in the cmChange_Click procedure
Dim s As String
    'display standard open dialog
    Form1.dlg.ShowOpen
    On Error GoTo erFileName
        'load graphic file into pbGraph control to preview
        Set pbGraph.Picture = LoadPicture(Form1.dlg.FileName)
        'update GraphicSource in the grid to 0
        FillRow 7, "GraphicSource", 0
        'update filename
        FillRow 8, "FileName", Form1.dlg.FileName
        Exit Sub
erFileName:
    MsgBox "Error loading graphic file."
End Sub

Private Sub cmGrabCB_Click()
'NOTE:  this procedure WILL change the label
'       because of the GrabClipboard call
  
  GrObj.GrabClipboard
  'label was changed so redraw it
  Form1.ReDrawLabel
End Sub

Private Sub cmOk_Click()
  If grAttr.Row = 0 Then Exit Sub
  'update the grid since it doesn't allow in-cell editing
  grAttr.TextMatrix(grAttr.Row, 1) = txValue.Text
  grAttr.CellAlignment = flexAlignLeftBottom
End Sub

Private Sub cmSetWinH_Click()
  'display  additional window that allows to pick a window
  fmWindows.Show vbModal
End Sub

Private Sub Form_Activate()
    'all these additional controls available for GRAPHIC objects only
    pbGraph.Visible = (LabObj.ObjType = 2)
    cmSetFName.Visible = (LabObj.ObjType = 2)
    cmSetBmpH.Visible = (LabObj.ObjType = 2)
    cmSetWinH.Visible = (LabObj.ObjType = 2)
    cmGrabCB.Visible = (LabObj.ObjType = 2)
    
    txValue.Text = ""
End Sub

Private Sub Form_Load()
  'fill array by object types
  ObjType(0) = "TEXT"
  ObjType(1) = "ADDRESS"
  ObjType(2) = "GRAPHIC"
  ObjType(3) = "RECTANGLE"
  ObjType(4) = "LINE"
  ObjType(5) = "BARCODE"
  ObjType(6) = "COUNTER"
  ObjType(7) = "DATE-TIME"
  
  grAttr.ColWidth(0) = 1500
  grAttr.ColWidth(1) = 3500
  
  grAttr.CellAlignment = flexAlignLeftBottom
 
End Sub

'this procedure fills a row in the grid
'r - number of row
's - value of 1st column
'v - value of 2nd column
Public Sub FillRow(ByVal r As Integer, ByVal s As String, ByVal v As Variant)
  If s <> "" Then grAttr.TextMatrix(r, 0) = s
  
  Select Case VarType(v)
  Case vbInteger To vbDate
    grAttr.TextMatrix(r, 1) = Str(v)
  Case vbBoolean
    If v Then
      grAttr.TextMatrix(r, 1) = "TRUE"
    Else
      grAttr.TextMatrix(r, 1) = "FALSE"
    End If
  Case vbString
    grAttr.TextMatrix(r, 1) = v
  Case Else
    grAttr.TextMatrix(r, 1) = ""
  End Select
End Sub

'this procedure fills the grid by all properties available
'for the object with ID=ObjId
Public Sub FillSettings(ByVal ObjId As Long)
Dim ObjName As String
Dim LastInd As Integer

  'also show ID in the caption of the form
  Caption = "ID# " & Hex(ObjId)
  'if not valid object then exit sub
  If ObjId = 0 Then FillRow 0, "", "INVALID OBJECT": Exit Sub
  'treat the objects as general
  'this allows to get all general properties
  Set LabObj = L.PrintObject.LabelObject(ObjId)
  
  With fmLabelObj
    'fill grid by general properties that available for any object type
    FillRow 0, "ObjType", ObjType(LabObj.ObjType)
    FillRow 1, "Name", LabObj.Name
    FillRow 2, "X", LabObj.X
    FillRow 3, "Y", LabObj.Y
    FillRow 4, "Width", LabObj.Width
    FillRow 5, "Height", LabObj.Height
    FillRow 6, "Rotation", LabObj.Rotation

    'now go for special properties
    Select Case LabObj.ObjType
    Case 0 'TEXT
        Set TextObj = LabObj
        grAttr.Rows = 7 + 1
        FillRow 7, "IsVariable", TextObj.IsVariable
        Set TextAttr = TextObj.TextAttributes
        
    Case 1 'ADDRESS
        Set AddrObj = LabObj
        grAttr.Rows = 7 + 2
        FillRow 7, "BarCodePosition", AddrObj.BarCodePosition
        FillRow 8, "b9DigitOnly", AddrObj.b9DigitOnly
        Set TextAttr = AddrObj.TextAttributes
    
    Case 2 'GRAPHIC
        Set GrObj = LabObj
        grAttr.Rows = 7 + 7
        FillRow 7, "GraphicSource", GrObj.GraphicSource
        FillRow 8, "FileName", GrObj.FileName
        FillRow 9, "BitmapHandle", GrObj.BitmapHandle
        FillRow 10, "PaletteHandle", GrObj.PaletteHandle
        FillRow 11, "WindowHandle", "Write Only"
        FillRow 12, "Border", GrObj.Border
        FillRow 13, "BorderColor", GrObj.BorderColor
        
    Case 3 'RECTANGLE
        Set RectObj = LabObj
        grAttr.Rows = 7 + 4
        FillRow 7, "bFilled", RectObj.bFilled
        FillRow 8, "Border", RectObj.Border
        FillRow 9, "BorderColor", RectObj.BorderColor
        FillRow 10, "FillColor", RectObj.FillColor
    
    Case 4 'LINE
        Set LineObj = LabObj
        grAttr.Rows = 7 + 4
        FillRow 7, "Length", LineObj.Length
        FillRow 8, "Orient", LineObj.Orientation
        FillRow 9, "Thickness", LineObj.Thickness
        FillRow 10, "LineColor", LineObj.LineColor
    
    Case 5 'BARCODE
        Set BarCodeObj = LabObj
        grAttr.Rows = 7 + 7
        FillRow 7, "Text", BarCodeObj.Text
        FillRow 8, "Font", BarCodeObj.Font
        FillRow 9, "TextPos", BarCodeObj.TextPos
        FillRow 10, "BCType", BarCodeObj.BCType
        FillRow 11, "Size", BarCodeObj.Size
        FillRow 12, "Justify", BarCodeObj.Justify
        FillRow 13, "Link", BarCodeObj.Link
        
    Case 6 'COUNTER
        Set CounterObj = LabObj
        grAttr.Rows = 7 + 7
        FillRow 7, "PreText", CounterObj.PreText
        FillRow 8, "PostText", CounterObj.PostText
        FillRow 9, "Start", CounterObj.Start
        FillRow 10, "Current", CounterObj.Current
        FillRow 11, "Width", CounterObj.MinWidth
        FillRow 12, "Increment", CounterObj.Increment
        FillRow 13, "UseLeadingZeros", CounterObj.UseLeadingZeros
        Set TextAttr = CounterObj.TextAttributes
    
    Case 7 'DATE-TIME
        Set DateTimeObj = LabObj
        grAttr.Rows = 7 + 5
        FillRow 7, "PreText", DateTimeObj.PreText
        FillRow 8, "PostText", DateTimeObj.PostText
        FillRow 9, "Format", DateTimeObj.Format
        FillRow 10, "IncludeTime", DateTimeObj.IncludeTime
        FillRow 11, "b24Hour", DateTimeObj.b24Hour
        Set TextAttr = DateTimeObj.TextAttributes
        
    Case Else
        grAttr.Rows = 7
    End Select
    
    'text properties available only
    'for TEXT, ADDRESS, COUNTER or DATE-TIME
    If (LabObj.ObjType = 0) Or (LabObj.ObjType = 1) _
    Or (LabObj.ObjType = 6) Or (LabObj.ObjType = 7) Then
        LastInd = grAttr.Rows - 1
        grAttr.Rows = grAttr.Rows + 9
        FillRow LastInd + 1, "Text", TextAttr.Text
        FillRow LastInd + 2, "Font1", TextAttr.Font_1
        FillRow LastInd + 3, "Font2", TextAttr.Font_2
        FillRow LastInd + 4, "Justify", TextAttr.Justify
        FillRow LastInd + 5, "VJustify", TextAttr.VJustify
        FillRow LastInd + 6, "Mirrored", TextAttr.Mirrored
        FillRow LastInd + 7, "Vertical", TextAttr.Vertical
        FillRow LastInd + 8, "TextColor", TextAttr.TextColor
        FillRow LastInd + 9, "BackGroundColor", TextAttr.BackGroundColor
    End If
    
    
  End With

End Sub

Private Sub Form_Unload(Cancel As Integer)
  'clear picture on unload
  Set pbGraph.Picture = LoadPicture()
End Sub

Private Sub grAttr_Click()
'when user clicks on a grid cell
'copy its contents to the editbox
'thus allow user to edit it
  txValue.Text = grAttr.TextMatrix(grAttr.Row, 1)
  txValue.SetFocus
End Sub

