#include <iostream>
#include <fstream>
#include <string>
#include <qrencode.h>

using namespace std;


unsigned char *QRGen(string dataString)//Now takes single string param
{
   //string sampleDataString = "It Works!!!"; Keep for backup, in case input does not work.
   QRcode *qrc;
   qrc = new QRcode;
   qrc = QRcode_encodeString8bit(dataString.c_str(),4,QR_ECLEVEL_Q);
   cout << "The QRC data string should be " << dataString << endl; //Ensure the input is correct.
   return qrc->data;
}

void test()//function to test QRGen
{
   cout << QRGen("Hello, World") << endl;//should print out QRC data from QRGen
}

int main()//used to call test function
{
	test();
	return 0;
}
