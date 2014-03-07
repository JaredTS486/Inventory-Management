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
    scanner(failed).cpp

HEADERS  += mainwindow.h \
    database.h \
    printer.h \
    qrgen.h \
    scanner(failed).h

FORMS    += \
    mainwindow.ui


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/lib/MySQL/lib/ -llibmysql
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/lib/MySQL/lib/ -llibmysqld
else:unix: LIBS += -L$$PWD/lib/MySQL/lib/ -llibmysql

INCLUDEPATH += $$PWD/lib/MySQL/include
DEPENDPATH += $$PWD/lib/MySQL/include

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/lib/SerialStream/.libs/ -lserial
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/lib/SerialStream/.libs/ -lseriald
else:unix: LIBS += -L$$PWD/lib/SerialStream/.libs/ -lserial

INCLUDEPATH += $$PWD/lib/SerialStream
DEPENDPATH += $$PWD/lib/SerialStream
