#--------------------------------------------------
# Project created by QtCreator 2014-02-17T12:01:12
#--------------------------------------------------

QT += core gui
QT += axcontainer
QT += printsupport
QT += serialport
#QT  += activeqt

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Qt
TEMPLATE = app

include($$PWD/libraries/qextserialport/src/qextserialport.pri)

SOURCES += main.cpp\
        mainwindow.cpp \
        database.cpp \
        qrgen.cpp \
        PortListener.cpp \
        PrintLabel.cpp

HEADERS += mainwindow.h \
        database.h \
        qrgen.h \
        PortListener.h \
        PrintLabel.h

FORMS   += \
        mainwindow.ui

INCLUDEPATH += $$PWD/include
INCLUDEPATH += $$PWD/libraries/libqrencode

win32: LIBS += -L$$PWD/lib -llibmysql
else:unix: LIBS += -L$$PWD/lib -llibmysql

OTHER_FILES += \
    Test.label
