#include <QApplication>
#include "mainwindow.h"
#include "database.h"
#include "qrgen.h"
#include "PrintLabel.h"
#include "PortListener.h"
#include <QDebug>

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

    QString portName = QLatin1String("COM1"); //Scanner
    PortListener listener(portName);


    CallDatabase();
    return app.exec();
}
