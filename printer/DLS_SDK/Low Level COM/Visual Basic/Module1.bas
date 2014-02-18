Attribute VB_Name = "Module1"
' ***********************************************************************
' Module1.BAS: contains general declarations
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

'declare and create an object variable to communicate with DLS
Public L As New Dymo.LabelEngine
'array of object types
Public ObjType(0 To 7) As String

'Windows API functions and constants to work with the Registry
Public Const REG_SZ As Long = 1
Public Const HKEY_LOCAL_MACHINE = &H80000002
Public Const HKEY_CURRENT_USER = &H80000001
Public Const KEY_ALL_ACCESS = &H3F
Public Declare Function RegOpenKeyEx Lib "advapi32.dll" Alias _
        "RegOpenKeyExA" (ByVal hKey As Long, ByVal lpSubKey As String, _
        ByVal ulOptions As Long, ByVal samDesired As Long, phkResult _
        As Long) As Long
Public Declare Function RegQueryValueExString Lib "advapi32.dll" Alias _
        "RegQueryValueExA" (ByVal hKey As Long, ByVal lpValueName As _
        String, ByVal lpReserved As Long, lpType As Long, ByVal lpData _
        As String, lpcbData As Long) As Long
Public Declare Function RegQueryValueExNULL Lib "advapi32.dll" Alias _
        "RegQueryValueExA" (ByVal hKey As Long, ByVal lpValueName As _
        String, ByVal lpReserved As Long, lpType As Long, ByVal lpData _
        As Long, lpcbData As Long) As Long
Public Declare Function SetCurrentDirectory Lib "kernel32" Alias _
        "SetCurrentDirectoryA" (ByVal lpPathName As String) As Long

