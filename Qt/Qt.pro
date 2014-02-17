#-------------------------------------------------
#
# Project created by QtCreator 2014-02-17T12:01:12
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Qt
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    database.cpp \
    printer.cpp \
    qrgen.cpp

HEADERS  += mainwindow.h \
    database.h \
    printer.h \
    qrgen.h

FORMS    += \
    mainwindow.ui
