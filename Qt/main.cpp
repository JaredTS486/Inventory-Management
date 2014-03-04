#include <QApplication>
#include <QPushButton>
#include "mainwindow.h"
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

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    MainWindow w;
    w.show();
    Scanner scanner;
    scanner.done = false;
    CallDatabase();
    return app.exec();
}
