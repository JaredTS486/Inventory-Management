//#include <iostream>
//#include <fstream>
//#include <string>
//#include <qrencode.h>
//#include <stddef.h> //Required to use the NULL def?

//using namespace std;


//unsigned char* QRGen(string dataString)//Now takes single string param
//{
//   //string sampleDataString = "It Works!!!"; Keep for backup, in case input does not work.
//   if(/*dataString != NULL &&*/ dataString != "") //make sure that the input actually contains data first.
//   {
//        QRcode *qrc;
//        qrc = new QRcode;
//        qrc = QRcode_encodeString8bit(dataString.c_str(),4,QR_ECLEVEL_Q);
//        cout << "The QRC data string should be " << dataString << endl; //Ensure the input is correct.
//        return qrc->data;
//   }
//   else //convert -1 to unsigned char* and return it for error;
//   {
//        unsigned char *error;
//        error = new unsigned char;
//        *error = (unsigned char)-1;
//        return error;
//   }
//}
