#include "mainwindow.h"
#include <QApplication>
#include "database.h"
#include "qrgen.h"
#include "printer.h"
#include "scanner.h"

int CallPrinter()
{
    //Print();
    return 0;
}

int CallDatabase()
{
    Connect();
    return 0;
}

int CallQRGen()
{
    //QRGen();
    return 0;
}

int Scanner()
{
    Scan();
    return 0;
}

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;
    w.show();
    CallPrinter();
    CallDatabase();
    CallQRGen();
    return a.exec();
}
