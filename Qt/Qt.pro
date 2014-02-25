#-------------------------------------------------
#
# Project created by QtCreator 2014-02-17T12:01:12
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Qt
TEMPLATE = app
LIBS = -lserial


SOURCES += main.cpp\
        mainwindow.cpp \
        database.cpp \
        printer.cpp \
        qrgen.cpp \
    scanner.cpp

HEADERS  += mainwindow.h \
    database.h \
    printer.h \
    qrgen.h \
    scanner.h

FORMS    += \
    mainwindow.ui

unix:!macx: LIBS += -L$$PWD/../../../../../usr/lib/x86_64-linux-gnu/ -lmysqlclient
INCLUDEPATH += $$PWD/../../../../../usr/lib/x86_64-linux-gnu
DEPENDPATH += $$PWD/../../../../../usr/lib/x86_64-linux-gnu
