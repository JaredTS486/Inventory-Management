#include "mainwindow.h"
#include <QApplication>
#include "database.h"
#include "qrgen.h"
#include "printer.h"

int CallPrinter()
{
    Print();
    return 0;
}

int CallDatabase()
{
    Connect();
    return 0;
}

int CallQRGen()
{
    QRGen();
    return 0;
}

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;
    w.show();
    return a.exec();
    CallPrinter();
    CallDatabase();
    CallQRGen();
}
