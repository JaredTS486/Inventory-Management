VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6630
   ClientLeft      =   1515
   ClientTop       =   1530
   ClientWidth     =   5760
   LinkTopic       =   "Form1"
   ScaleHeight     =   6630
   ScaleWidth      =   5760
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   5040
      Top             =   4680
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.ComboBox BarcodeSizeCombo 
      Height          =   315
      ItemData        =   "TAPESD~2.frx":0000
      Left            =   3960
      List            =   "TAPESD~2.frx":000D
      TabIndex        =   21
      Top             =   3000
      Width           =   1455
   End
   Begin VB.ComboBox HRTCombo 
      Height          =   315
      ItemData        =   "TAPESD~2.frx":002D
      Left            =   2280
      List            =   "TAPESD~2.frx":003A
      TabIndex        =   19
      Top             =   3000
      Width           =   1455
   End
   Begin VB.ComboBox SymbolodgyCombo 
      Height          =   315
      ItemData        =   "TAPESD~2.frx":0058
      Left            =   240
      List            =   "TAPESD~2.frx":008F
      TabIndex        =   17
      Top             =   3000
      Width           =   1815
   End
   Begin VB.CommandButton AddGraphicsButton 
      Caption         =   "Add"
      Height          =   375
      Left            =   4440
      TabIndex        =   16
      Top             =   3960
      Width           =   975
   End
   Begin VB.TextBox GraphicsFileName 
      Height          =   375
      Left            =   240
      TabIndex        =   15
      Top             =   3960
      Width           =   3975
   End
   Begin VB.CommandButton ShowButton 
      Caption         =   "Start DLS7"
      Height          =   375
      Left            =   2880
      TabIndex        =   13
      Top             =   240
      Width           =   1335
   End
   Begin VB.CommandButton AddBarcodeButton 
      Caption         =   "Add"
      Height          =   375
      Left            =   4440
      TabIndex        =   12
      Top             =   2280
      Width           =   975
   End
   Begin VB.TextBox BarcodeData 
      Height          =   375
      Left            =   240
      TabIndex        =   11
      Top             =   2280
      Width           =   3975
   End
   Begin VB.CommandButton NewLabelButton 
      Caption         =   "Start New Label"
      Height          =   375
      Left            =   360
      TabIndex        =   9
      Top             =   240
      Width           =   2295
   End
   Begin VB.CommandButton LabelButton 
      Caption         =   "Label..."
      Height          =   375
      Left            =   240
      TabIndex        =   8
      Top             =   5520
      Width           =   1095
   End
   Begin VB.ComboBox PrintersList 
      Height          =   315
      Left            =   240
      TabIndex        =   6
      Top             =   5040
      Width           =   3975
   End
   Begin VB.CommandButton SaveButton 
      Caption         =   "Save"
      Height          =   375
      Left            =   4440
      TabIndex        =   5
      Top             =   5520
      Width           =   1095
   End
   Begin VB.CommandButton LoadButton 
      Caption         =   "Load"
      Height          =   375
      Left            =   3120
      TabIndex        =   4
      Top             =   5520
      Width           =   1095
   End
   Begin VB.CommandButton PrintButton 
      Caption         =   "Print"
      Height          =   375
      Left            =   1680
      TabIndex        =   3
      Top             =   5520
      Width           =   1095
   End
   Begin VB.CommandButton AddTextButton 
      Caption         =   "Add"
      Height          =   375
      Left            =   4440
      TabIndex        =   2
      Top             =   1200
      Width           =   975
   End
   Begin VB.TextBox Text 
      Height          =   375
      Left            =   240
      TabIndex        =   1
      Top             =   1200
      Width           =   3975
   End
   Begin VB.Label Label8 
      Caption         =   "DYMO Corporation, 2005"
      Height          =   255
      Left            =   240
      TabIndex        =   23
      Top             =   6240
      Width           =   5295
   End
   Begin VB.Label Label7 
      Caption         =   "Size:"
      Height          =   255
      Left            =   3960
      TabIndex        =   22
      Top             =   2760
      Width           =   1215
   End
   Begin VB.Label Label6 
      Caption         =   "HRT:"
      Height          =   255
      Left            =   2280
      TabIndex        =   20
      Top             =   2760
      Width           =   1215
   End
   Begin VB.Label Label5 
      Caption         =   "Symbolodgy:"
      Height          =   255
      Left            =   240
      TabIndex        =   18
      Top             =   2760
      Width           =   1695
   End
   Begin VB.Line Line4 
      X1              =   120
      X2              =   5520
      Y1              =   3480
      Y2              =   3480
   End
   Begin VB.Label Label4 
      Caption         =   "Graphics:"
      Height          =   255
      Left            =   240
      TabIndex        =   14
      Top             =   3600
      Width           =   2655
   End
   Begin VB.Label Label3 
      Caption         =   "Barcode:"
      Height          =   255
      Left            =   240
      TabIndex        =   10
      Top             =   2040
      Width           =   2655
   End
   Begin VB.Line Line3 
      X1              =   120
      X2              =   5520
      Y1              =   4560
      Y2              =   4560
   End
   Begin VB.Line Line2 
      X1              =   120
      X2              =   5520
      Y1              =   1920
      Y2              =   1920
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   5520
      Y1              =   840
      Y2              =   840
   End
   Begin VB.Label Label2 
      Caption         =   "Select Printer:"
      Height          =   255
      Left            =   240
      TabIndex        =   7
      Top             =   4680
      Width           =   3855
   End
   Begin VB.Label Label1 
      Caption         =   "Text:"
      Height          =   255
      Left            =   240
      TabIndex        =   0
      Top             =   960
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

'The function creates Dymo.Tape OLE object at the start-up time
Function CreateOLEObjects() As Boolean
    On Error GoTo CANNOTCREATE
    CreateOLEObjects = True
    Set DymoTapeAddIn = CreateObject("Dymo.DymoTape")
    'if OLE object successfully created then exit the subroutine
    If Not (DymoTapeAddIn Is Nothing) Then Exit Function
CANNOTCREATE:
    MsgBox "Unable to create OLE objects: Dymo.DymoTape"
    CreateOLEObjects = False
End Function


'Form Initialization
Private Sub Form_Load()
    Dim bResult As Boolean
    Dim sPrinters, sCurItem, sPattern As String
    Dim nStrLen As Long
    
    bResult = CreateOLEObjects()

    If bResult Then
        sPrinters = DymoTapeAddIn.GetPrinters()
        Do Until Len(sPrinters) = 0
            nStrLen = InStr(sPrinters, "|")
            If nStrLen > 0 Then
                sCurItem = Left(sPrinters, nStrLen - 1)
                sPrinters = Right(sPrinters, Len(sPrinters) - nStrLen)
                PrintersList.AddItem (sCurItem)
            Else
                PrintersList.AddItem (sPrinters)
                Exit Do
            End If
        Loop
        'Set currently selected
        'PrintersList.
    End If
    DLS7Status = 0
End Sub


Private Sub Form_Unload(Cancel As Integer)
Unload Dialog
End Sub


'Adding text to the Label/Tape
Private Sub AddTextButton_Click()
If Not IsObject(DymoTapeAddIn) Then Exit Sub

Dim result
result = DymoTapeAddIn.AddText(Text.Text, "Arial,12,CS:0", 0, 0)
End Sub

'Adding barcode to the Label/Tape
Private Sub AddBarcodeButton_Click()
If Not IsObject(DymoTapeAddIn) Then Exit Sub

Dim barcodeFormat, barcodeSize, barcodeTextPos As Long

'symbolodgy
If Len(SymbolodgyCombo.Text) > 0 Then
    barcodeFormat = CComboBoxData(SymbolodgyCombo.Text)
Else
    barcodeFormat = 1
End If

'size
If Len(BarcodeSizeCombo.Text) > 0 Then
    barcodeSize = CComboBoxData(BarcodeSizeCombo.Text)
Else
    barcodeSize = 1
End If

'text position
If Len(HRTCombo.Text) > 0 Then
    barcodeTextPos = CComboBoxData(HRTCombo.Text)
Else
    barcodeTextPos = 2
End If

Dim result
result = DymoTapeAddIn.AddBarcode(BarcodeData.Text, barcodeFormat, barcodeSize, barcodeTextPos)
If result = 0 Then
    MsgBox ("Could not add barcode")
End If
End Sub

'Adding graphic to the Label/Tape
Private Sub AddGraphicsButton_Click()
If Not IsObject(DymoTapeAddIn) Then Exit Sub

Dim result

If Len(GraphicsFileName.Text) > 0 Then
    result = DymoTapeAddIn.AddPicture(GraphicsFileName)
    If result = 0 Then
        MsgBox ("Could not add picture")
    End If
End If

End Sub

'Changing/Viewing the current TapeEditor settings
Private Sub LabelButton_Click()
Dialog.Show
End Sub

Private Sub LoadButton_Click()
CommonDialog1.CancelError = False 'True
'Set common dialog flags and filters
CommonDialog1.Flags = cdlOFNHideReadOnly + cdlOFNPathMustExist + cdlOFNFileMustExist
CommonDialog1.Filter = "DYMO D1 Tape Label (*.D1L)|*.D1L"
CommonDialog1.FileName = ""

'Display the dialog box
CommonDialog1.ShowOpen

MsgBox "File Selected: " & CommonDialog1.FileName

'    txtData.Text = "File Selected: " & CommonDialog1.FileName
'    Exit Sub
'errhandler:
'    Select Case Err
'    Case 32755 '  Dialog Cancelled
'        MsgBox "you cancelled the dialog box"
'    Case Else
'        MsgBox "Unexpected error. Err " & Err & " : " & Error
'    End Select

End Sub

Private Sub NewLabelButton_Click()
Dim result
result = DymoTapeAddIn.New()
End Sub

Private Sub PrintButton_Click()
Dim sCurPrinter As String
Dim result

sCurPrinter = PrintersList
If Len(sCurPrinter) > 0 Then
    DymoTapeAddIn.SelectPrinter (sCurPrinter)
    result = DymoTapeAddIn.Print(1)
Else
    MsgBox ("Select DYMO printer")
End If
End Sub

Private Sub ShowButton_Click()
If DLS7Status = 0 Then
    DymoTapeAddIn.Show
    DLS7Status = 1
    ShowButton.Caption = "Hide DLS7"
Else
    DymoTapeAddIn.Hide
    DLS7Status = 0
    ShowButton.Caption = "Start DLS7"
End If
End Sub
