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

int CallScanner()
{
    Scan();
    return 0;
}

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    MainWindow w;
    QPushButton *button = new QPushButton("Hello World", &w);
    button->setGeometry(10, 10, 80, 30);
    w.show();

    return app.exec();
}
