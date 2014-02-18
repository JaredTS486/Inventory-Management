Attribute VB_Name = "Module1"
'OLE objects used to communicate with DLS
Public DymoTapeAddIn As Dymo.DymoTape
Public DLS7Status As Integer


Function CComboBoxData(sData As String) As Integer
CComboBoxData = -1
If Len(sData) = 0 Then Exit Function

Dim nIndexLen As Integer
Dim sIndex As String

nIndexLen = InStr(sData, "=")
If nIndexLen > 0 Then
    sIndex = Trim(Left(sData, nIndexLen - 1))
    CComboBoxData = CInt(sIndex)
End If
End Function
