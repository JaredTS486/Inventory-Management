VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Form1 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "VB Low-Level OLE Demo"
   ClientHeight    =   7020
   ClientLeft      =   948
   ClientTop       =   552
   ClientWidth     =   10860
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7020
   ScaleWidth      =   10860
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton cmdExit 
      Caption         =   "Exit"
      Height          =   375
      Left            =   4740
      TabIndex        =   28
      Top             =   6420
      Width           =   1335
   End
   Begin VB.Frame Frame1 
      Caption         =   "Default Windows Printer"
      Height          =   795
      Left            =   240
      TabIndex        =   25
      Top             =   5340
      Width           =   3375
      Begin VB.CommandButton Output 
         Caption         =   "Output"
         Height          =   375
         Left            =   180
         TabIndex        =   27
         Top             =   300
         Width           =   1395
      End
      Begin VB.CommandButton OutputXY 
         Caption         =   "OutputXY..."
         Height          =   375
         Left            =   1800
         TabIndex        =   26
         Top             =   300
         Width           =   1395
      End
   End
   Begin VB.Frame frCopyPaste 
      Caption         =   "Clipboard"
      Height          =   675
      Left            =   7680
      TabIndex        =   20
      Top             =   6240
      Width           =   1695
      Begin VB.CommandButton cmCopy 
         Appearance      =   0  'Flat
         Height          =   375
         Left            =   420
         Picture         =   "Form1.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   21
         ToolTipText     =   "CopyToClipboard"
         Top             =   240
         Width           =   435
      End
      Begin VB.CommandButton cmPaste 
         Height          =   375
         Left            =   840
         Picture         =   "Form1.frx":0532
         Style           =   1  'Graphical
         TabIndex        =   22
         ToolTipText     =   "PasteFromClipboard"
         Top             =   240
         Width           =   435
      End
   End
   Begin VB.CommandButton cmdAddObject 
      Caption         =   "AddObject..."
      Height          =   375
      Left            =   9480
      TabIndex        =   19
      Top             =   6540
      Width           =   1215
   End
   Begin VB.CommandButton cmdFront 
      Caption         =   "Bring To Front"
      Height          =   255
      Left            =   7680
      TabIndex        =   18
      Top             =   5340
      Width           =   1695
   End
   Begin VB.CommandButton cmdBack 
      Caption         =   "Send To Back"
      Height          =   255
      Left            =   7680
      TabIndex        =   17
      Top             =   5640
      Width           =   1695
   End
   Begin VB.CommandButton cmdDel 
      Caption         =   "Delete Object"
      Height          =   255
      Left            =   7680
      TabIndex        =   16
      Top             =   5940
      Width           =   1695
   End
   Begin VB.CommandButton cmdFind 
      Caption         =   "Find Object..."
      Height          =   255
      Left            =   7680
      TabIndex        =   15
      Top             =   5040
      Width           =   1695
   End
   Begin VB.CommandButton cmdGetVar 
      Caption         =   "Get Variable Objects"
      Height          =   255
      Left            =   7680
      TabIndex        =   14
      Top             =   4740
      Width           =   1695
   End
   Begin VB.CommandButton GetModified 
      Caption         =   "Get Modified"
      Height          =   375
      Left            =   3780
      TabIndex        =   12
      Top             =   4680
      Width           =   1335
   End
   Begin VB.CommandButton cmdGetAll 
      Caption         =   "Get All Objects"
      Height          =   255
      Left            =   7680
      TabIndex        =   11
      Top             =   4440
      Width           =   1695
   End
   Begin VB.CommandButton cmdGet 
      Caption         =   "Get Objects At..."
      Height          =   255
      Left            =   7680
      TabIndex        =   10
      Top             =   4140
      Width           =   1695
   End
   Begin VB.ListBox lstObjects 
      Height          =   2160
      Left            =   9480
      MultiSelect     =   2  'Extended
      TabIndex        =   8
      Top             =   4140
      Width           =   1215
   End
   Begin VB.CommandButton cmdPrint 
      Caption         =   "Print Label..."
      Height          =   375
      Left            =   2520
      TabIndex        =   7
      Top             =   4920
      Width           =   1095
   End
   Begin VB.CommandButton cmdSave 
      Caption         =   "Save Label..."
      Height          =   375
      Left            =   1380
      TabIndex        =   6
      Top             =   4920
      Width           =   1095
   End
   Begin VB.CheckBox chkShadow 
      Caption         =   "Shadow"
      Height          =   375
      Left            =   5220
      TabIndex        =   5
      Top             =   3960
      Value           =   1  'Checked
      Width           =   1335
   End
   Begin VB.CommandButton cmdZoom 
      Caption         =   "Zoom: 100"
      Height          =   375
      Left            =   3780
      TabIndex        =   4
      Top             =   3960
      Width           =   1335
   End
   Begin MSComDlg.CommonDialog dlg 
      Left            =   0
      Top             =   4080
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton btnLoad 
      Caption         =   "Load Label..."
      Height          =   375
      Left            =   240
      TabIndex        =   3
      Top             =   4920
      Width           =   1095
   End
   Begin VB.PictureBox img 
      Height          =   3735
      Left            =   3780
      ScaleHeight     =   3684
      ScaleWidth      =   6924
      TabIndex        =   2
      Top             =   120
      Width           =   6975
   End
   Begin MSFlexGridLib.MSFlexGrid LabelInfoGrid 
      Height          =   2535
      Left            =   240
      TabIndex        =   1
      Top             =   2280
      Width           =   3375
      _ExtentX        =   5948
      _ExtentY        =   4466
      _Version        =   393216
      Rows            =   10
      FixedRows       =   0
      AllowBigSelection=   0   'False
      HighLight       =   0
      AllowUserResizing=   1
   End
   Begin VB.ListBox LabelsListBox 
      Height          =   1584
      Left            =   240
      TabIndex        =   0
      Top             =   360
      Width           =   3375
   End
   Begin VB.CommandButton ValidateBC 
      Caption         =   "ValidateBarCode..."
      Height          =   375
      Left            =   5220
      TabIndex        =   13
      Top             =   4680
      Width           =   1635
   End
   Begin VB.Label Label5 
      Caption         =   "Label Info:"
      Height          =   255
      Left            =   240
      TabIndex        =   24
      Top             =   2040
      Width           =   2295
   End
   Begin VB.Label Label4 
      Caption         =   "Label List:"
      Height          =   255
      Left            =   240
      TabIndex        =   23
      Top             =   120
      Width           =   2655
   End
   Begin VB.Label Label1 
      Caption         =   "Object List"
      Height          =   255
      Left            =   9480
      TabIndex        =   9
      Top             =   3900
      Width           =   1455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
' ***********************************************************************
' Form1.frm: The main form of the application
' Written 4/30/99 by Sergey Smirnov
' last update, April 2002, DLB
'
' This program is meant to demonstrate the methods used to communicate with
' the Dymo Label Software programs via Low-Level OLE Automation Interface.
'
' This code was written and tested using Visual Basic 6.0 Enteprise Edition.
'
' Copyright 1999,2002 Dymo Corporation
'
' Permission to use, copy, modify, and distribute this software for any
' purpose and without fee is hereby granted.
'
' ***********************************************************************

Option Explicit

Public Sub ReDrawLabel()
    'draw label
    img.Refresh
    L.DrawLabel img.hDC
    'then fill object list by all objects
    cmdGetAll_Click
End Sub

Private Sub btnLoad_Click()
    'set Dymo Label directory as default
    Dim Path As String, hKey As Long, cb As Long
    RegOpenKeyEx HKEY_CURRENT_USER, "Software\DYMO\LabelWriter\Directories", 0, KEY_ALL_ACCESS, hKey
    RegQueryValueExNULL hKey, "Label Directory", 0&, REG_SZ, 0&, cb
    Path = String(cb, 0)
    RegQueryValueExString hKey, "Label Directory", 0&, REG_SZ, Path, cb
    SetCurrentDirectory Path
    
    'display standard open dialog
    dlg.ShowOpen
    'open label file
    L.OpenFile dlg.FileName
    'fill grid with the new label info
    FillLabelInfo
    'draw newly loaded label
    ReDrawLabel
End Sub

Private Sub chkShadow_Click()
    'set shadow property
    L.Shadow = chkShadow.Value
    'and then redraw label
    ReDrawLabel
End Sub

Private Sub cmdAddObject_Click()
'display dialog to enter properties
frmAddObject.Show vbModal
'redraw label
ReDrawLabel
End Sub

Private Sub cmdBack_Click()
'send object with ID selected in the list to back of the label layout
L.PrintObject.SendToBack (Val("&h" & lstObjects.Text))
'redraw label
ReDrawLabel
End Sub

Private Sub cmCopy_Click()
Dim Ind, SelInd As Integer
'this will work for no more than 20 objects
Dim ObjSelArr(0 To 20) As Long

  'fill array by ID's of selected objects
  SelInd = -1
  For Ind = 0 To lstObjects.ListCount - 1
    If lstObjects.Selected(Ind) Then
      SelInd = SelInd + 1
      ObjSelArr(SelInd) = Val("&h" & lstObjects.List(Ind))
    End If
  Next Ind
  'set next one to zero as a terminator
  ObjSelArr(SelInd + 1) = 0
  
  On Error GoTo CopyError
    'pass first element of the array to CopyToClipboard method
    If L.PrintObject.CopyToClipboard(ObjSelArr(0)) Then
        MsgBox Str(SelInd + 1) & " object(s) copied."
        Exit Sub
    End If
CopyError:
    MsgBox "CopyToClipboard returned an error."
End Sub

Private Sub cmdDel_Click()
Dim Ind As Integer
    'exit if no ID selected
    If lstObjects.ListIndex = -1 Then Exit Sub
    'loop to delete all objects with selected ID
    For Ind = 0 To lstObjects.ListCount - 1
      If lstObjects.Selected(Ind) Then
            L.PrintObject.Delete (Val("&h" & lstObjects.List(Ind)))
      End If
    Next Ind
    'redraw label
    ReDrawLabel
End Sub

Private Sub cmdExit_Click()
Unload Me
End Sub

Private Sub cmdFind_Click()
Dim s As String
'clear listbox since we'll copy search result there if any
lstObjects.Clear
'ask user to enter name of object
s = InputBox("Enter name of object to find:")
'try to find
s = Hex(L.PrintObject.FindObj(s))
'if object not found then change string accordingly
If s = "0" Then s = "Not found!"
'add string to the list box
lstObjects.AddItem s
End Sub

Private Sub cmdFront_Click()
'send object with ID selected in the list to the front of the label layout
L.PrintObject.BringToFront (Val("&h" & lstObjects.Text))
'redraw label
ReDrawLabel
End Sub

Private Sub cmdGet_Click()
Dim q
    'clear listbox
    lstObjects.Clear
    'ask user for X and Y
    frmInputXY.Show vbModal
    'now for each object found at the point defined by X&Y add its ID to the list
    For Each q In L.PrintObject.ObjectsAt(frmInputXY.X, frmInputXY.Y)
        lstObjects.AddItem Hex(q)
    Next
    'if no objects was found then tell it to user
    If lstObjects.ListCount = 0 Then lstObjects.AddItem "No objects"
End Sub

Private Sub cmdGetAll_Click()
Dim q
    'clear listbox
    lstObjects.Clear
    'scan objects collection and add ID of every object in the list
    For Each q In L.PrintObject.Objects
        lstObjects.AddItem Hex(q)
    Next
End Sub

Private Sub cmdGetVar_Click()
Dim q
    'clear listbox
    lstObjects.Clear
    'scan variable objects collection and add ID of every object in the list
    For Each q In L.PrintObject.VarObjects
        lstObjects.AddItem Hex(q)
    Next
End Sub

Private Sub cmPaste_Click()
  'paste from clipboard
  L.PrintObject.PasteFromClipboard
  'redraw label to show newly pasted objects
  ReDrawLabel
End Sub

Private Sub cmdPrint_Click()
    Dim q, DeviceName As String, PortName As String, Copies As Long
    DeviceName = InputBox("Enter Device Name:", , "CoStar LabelWriter XL Plus")
    PortName = InputBox("Enter Port Name:", , "COM1:")
    Copies = Val(InputBox("Enter Number of Copies:", , "1"))
    q = L.PrintLabel(DeviceName, PortName, Copies, True)
End Sub

Private Sub cmdSave_Click()
    'set Dymo Label directory as default
    Dim Path As String, hKey As Long, cb As Long
    RegOpenKeyEx HKEY_CURRENT_USER, "Software\DYMO\LabelWriter\Directories", 0, KEY_ALL_ACCESS, hKey
    RegQueryValueExNULL hKey, "Label Directory", 0&, REG_SZ, 0&, cb
    Path = String(cb, 0)
    RegQueryValueExString hKey, "Label Directory", 0&, REG_SZ, Path, cb
    SetCurrentDirectory Path
    
    'display standard SaveAs dialog
    dlg.ShowSave
    'save label file
    L.SaveFile dlg.FileName
End Sub

Private Sub cmdZoom_Click()
    Dim s As String
    'ask user for a new zoom value
    s = InputBox("Enter new zoom value:", "Set Zoom")
    'set zoom property
    L.Zoom = Val(s)
    'since Zoom is a WriteOnly property
    'set show entered value in the button caption
    cmdZoom.Caption = "Zoom: " & s & "%"
    'now redraw label with new zoom
    ReDrawLabel
End Sub

Private Sub Form_Load()
Dim q
    'add each LabelName from collection to the listbox
    For Each q In L.LabelNames
        LabelsListBox.AddItem q
    Next
    'change label caption to show total number of labels available
    Label4.Caption = Label4.Caption + " (Total: " & L.LabelNames.Count & ")"
    
    'fill grid with properties names
    LabelInfoGrid.ColWidth(0) = 1100
    LabelInfoGrid.ColWidth(1) = 2500
    LabelInfoGrid.TextMatrix(0, 0) = "LabelName"
    LabelInfoGrid.TextMatrix(1, 0) = "PaperName"
    LabelInfoGrid.TextMatrix(2, 0) = "PaperWidth"
    LabelInfoGrid.TextMatrix(3, 0) = "PaperHeight"
    LabelInfoGrid.TextMatrix(4, 0) = "BitmapWidth"
    LabelInfoGrid.TextMatrix(5, 0) = "BitmapHeight"
    LabelInfoGrid.TextMatrix(6, 0) = "LabelCount"
    LabelInfoGrid.TextMatrix(7, 0) = "LabelWidth"
    LabelInfoGrid.TextMatrix(8, 0) = "LabelHeight"
    LabelInfoGrid.TextMatrix(9, 0) = "Modified"
    
    'load forms in advance
    Load fmLabelObj
    Load fmWindows
    Load frmAddObject
    Load fmValidBC
    Load frmInputXY
    
    'L.OpenFile "C:\Projects\CoStar\inprocdll\sample.LBL"
    'fill info of current label
    FillLabelInfo
    'and finally draw curent label
    ReDrawLabel
End Sub

Private Sub Form_Unload(Cancel As Integer)
    'unload all forms
    Unload fmLabelObj
    Unload fmWindows
    Unload frmAddObject
    Unload fmValidBC
    Unload frmInputXY
End Sub

Private Sub GetModified_Click()
    'refresh the Modified property in the grid
    LabelInfoGrid.TextMatrix(9, 1) = L.LabelInfo.Modified
End Sub

Private Sub img_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
  'if user clicked left mouse button on the label layout
  'then try to find object at this point and then display
  'dialog that allows to modify object's properties
  If (Button = vbLeftButton) And (Shift = 0) Then
    'pass ID of found object to FillSettings procedure
    fmLabelObj.FillSettings L.PrintObject.ObjectAt(X, Y)
    'show the dialog
    fmLabelObj.Show
  End If
End Sub

Private Sub img_Paint()
  'every time when img needs to be repainted we should manually draw our label
  L.DrawLabel img.hDC
End Sub

Private Sub LabelsListBox_Click()
    'create a new label based on label name selected in the listbox
    L.NewLabel (LabelsListBox.List(LabelsListBox.ListIndex))
    'show info of new label
    FillLabelInfo
    'and finally draw that new label
    ReDrawLabel
End Sub

Sub FillLabelInfo()
    'this procedure is copying all LabelInfo properties
    'to the corresponding grid cells
    LabelInfoGrid.TextMatrix(0, 1) = Trim(L.LabelInfo.LabelName)
    LabelInfoGrid.TextMatrix(1, 1) = Trim(L.LabelInfo.PaperName)
    LabelInfoGrid.TextMatrix(2, 1) = Str(L.LabelInfo.PaperWidth)
    LabelInfoGrid.TextMatrix(3, 1) = Str(L.LabelInfo.PaperHeight)
    LabelInfoGrid.TextMatrix(4, 1) = Str(L.LabelInfo.BitmapWidth)
    LabelInfoGrid.TextMatrix(5, 1) = Str(L.LabelInfo.BitmapHeight)
    LabelInfoGrid.TextMatrix(6, 1) = Str(L.LabelInfo.LabelCount)
    LabelInfoGrid.TextMatrix(7, 1) = Str(L.LabelInfo.LabelWidth)
    LabelInfoGrid.TextMatrix(8, 1) = Str(L.LabelInfo.LabelHeight)
    LabelInfoGrid.TextMatrix(9, 1) = L.LabelInfo.Modified
End Sub

Private Sub lstObjects_Click()
'if user clicked on some object ID in the list
'then display object properties
If lstObjects.ListIndex >= 0 Then
    'pass ID of object to FillSettings procedure
    fmLabelObj.FillSettings Val("&h" & lstObjects.Text)
    'display the dialog
    fmLabelObj.Show
End If
End Sub

Private Sub Output_Click()
    'start printing
    Printer.Print
    'output our label layout to the printer
    L.Output (Printer.hDC)
    'end printing
    Printer.EndDoc
End Sub

Private Sub OutputXY_Click()
    'ask user for X and Y
    frmInputXY.Show vbModal
    'start printing
    Printer.Print
    'output our label layout to the printer at given X & Y
    L.OutputXY frmInputXY.X, frmInputXY.Y, Printer.hDC
    'end printing
    Printer.EndDoc
End Sub

Private Sub ValidateBC_Click()
    'display dialog that will ask user
    'for barcode type and barcode text
    fmValidBC.Show vbModal
End Sub
