#include <iostream>
#include <fstream>
#include <string>
#include <qrencode.h>

using namespace std;


unsigned char *QRGen(string dataString)
{
   //string sampleDataString = "It Works!!!";
   QRcode *qrc;
   qrc = new QRcode;
   qrc = QRcode_encodeString8bit(dataString.c_str(),4,QR_ECLEVEL_Q);
   cout << "The QRC data should be " << dataString << endl;
   return qrc->data;
}

void test()
{
   cout << QRGen("Hello, World") << endl;
}

int main()
{
	test();
	return 0;
}
