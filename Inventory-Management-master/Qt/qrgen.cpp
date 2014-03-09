#include <iostream>
#include <fstream>
#include <string>
#include <iomanip>
#include <qrencode.h>

using namespace std;


void QRGen()
{
   string sampleDataString = "It Works!!!";
   QRcode *qrc;
   qrc = new QRcode;
   qrc =  QRcode_encodeString8bit(sampleDataString.c_str(),4,QR_ECLEVEL_Q);
   ofstream outf("SampleQRCodeFile.txt");

   outf << "QRC Data: " << qrc->data <<endl
        << "\nQRC Version: " << qrc->version <<endl
        << "\nQRC Width: " << qrc->width<<endl;

   cout << sampleDataString <<endl;
}
