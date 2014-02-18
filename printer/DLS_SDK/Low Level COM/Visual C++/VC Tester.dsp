# Microsoft Developer Studio Project File - Name="VC Tester" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=VC Tester - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "VC Tester.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "VC Tester.mak" CFG="VC Tester - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "VC Tester - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "VC Tester - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "VC Tester - Win32 Release"

# PROP BASE Use_MFC 5
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 5
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /Yu"stdafx.h" /FD /c
# ADD CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /Yu"stdafx.h" /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /machine:I386
# ADD LINK32 /nologo /subsystem:windows /machine:I386

!ELSEIF  "$(CFG)" == "VC Tester - Win32 Debug"

# PROP BASE Use_MFC 5
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 5
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /Yu"stdafx.h" /FD /c
# ADD CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "SAS_COMPILATION" /FR /Yu"stdafx.h" /FD /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept
# ADD LINK32 /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept

!ENDIF 

# Begin Target

# Name "VC Tester - Win32 Release"
# Name "VC Tester - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\AddObjectDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\AddressObjectDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\BarCodeObjectDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\ChooseWindowDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\CounterObjectDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\DateTimeObjectDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\FindObjectDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\GraphicObjectDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\labels.cpp
# End Source File
# Begin Source File

SOURCE=.\LineObjectDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\OutputXYDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\PrintLabelDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\RectangleObjectDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\StdAfx.cpp
# ADD CPP /Yc"stdafx.h"
# End Source File
# Begin Source File

SOURCE=.\TextObjectDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\ValidateBarCodeDlg.cpp
# End Source File
# Begin Source File

SOURCE=".\VC Tester.cpp"
# End Source File
# Begin Source File

SOURCE=".\VC Tester.rc"
# End Source File
# Begin Source File

SOURCE=".\VC TesterDlg.cpp"
# End Source File
# Begin Source File

SOURCE=.\ZoomDlg.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\AddObjectDlg.h
# End Source File
# Begin Source File

SOURCE=.\AddressObjectDlg.h
# End Source File
# Begin Source File

SOURCE=.\BarCodeObjectDlg.h
# End Source File
# Begin Source File

SOURCE=.\ChooseWindowDlg.h
# End Source File
# Begin Source File

SOURCE=.\CounterObjectDlg.h
# End Source File
# Begin Source File

SOURCE=.\DateTimeObjectDlg.h
# End Source File
# Begin Source File

SOURCE=.\FindObjectDlg.h
# End Source File
# Begin Source File

SOURCE=.\GraphicObjectDlg.h
# End Source File
# Begin Source File

SOURCE=.\labels.h
# End Source File
# Begin Source File

SOURCE=.\LineObjectDlg.h
# End Source File
# Begin Source File

SOURCE=.\OutputXYDlg.h
# End Source File
# Begin Source File

SOURCE=.\PrintLabelDlg.h
# End Source File
# Begin Source File

SOURCE=.\RectangleObjectDlg.h
# End Source File
# Begin Source File

SOURCE=.\Resource.h
# End Source File
# Begin Source File

SOURCE=.\StdAfx.h
# End Source File
# Begin Source File

SOURCE=.\TextObjectDlg.h
# End Source File
# Begin Source File

SOURCE=.\ValidateBarCodeDlg.h
# End Source File
# Begin Source File

SOURCE=".\VC Tester.h"
# End Source File
# Begin Source File

SOURCE=".\VC TesterDlg.h"
# End Source File
# Begin Source File

SOURCE=.\ZoomDlg.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;cnt;rtf;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\bitmap1.bmp
# End Source File
# Begin Source File

SOURCE=".\VC Tester.ico"
# End Source File
# End Group
# End Target
# End Project
