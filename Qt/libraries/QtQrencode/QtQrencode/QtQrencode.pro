#-------------------------------------------------
#
# Project created by QtCreator 2014-03-11T13:23:55
#
#-------------------------------------------------

QT       -= gui

TARGET = QtQrencode
TEMPLATE = lib
DEFINES += QTQRENCODE_LIBRARY

SOURCES +=  bitstream.c \
            mask.c \
            mmask.c \
            mqrspec.c \
            qrenc.c \
            qrencode.c \
            qrinput.c \
            qrspec.c \
            rscode.c \
            split.c

HEADERS +=  bitstream.h \
            mask.h \
            mmask.h \
            mqrspec.h \
            qrencode.h \
            qrencode_inner.h \
            qrinput.h \
            qrspec.h \
            rscode.h \
            split.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}
