#include <iostream>
#include <cstdlib>
#include <cstdio>
#include <SerialStream.h>
#include <pthread.h>
#include "scanner.h"
using namespace LibSerial;
SerialStream ScannerStream;

Scanner::Scanner ()
{
    done = false;
    data = "";
}

Scanner::Scanner(bool a, std::string b)
{
    done = a;
    data = b;
}

Scanner::~Scanner()
{

}

int Scanner::err(std::string message)
{
    if ( ! ScannerStream.good() ){
        std::cerr << "[" << __FILE__ << ":" << __LINE__ << "] "
                  << "[SCANNER] Could not set the " << message << std::endl ;
        exit(1) ;
    }
    return EXIT_SUCCESS;
}

void *Scanner::fetch(void *thread)
{
    while( ScannerStream.rdbuf()->in_avail() > 0  )
    {
        char next_byte;
        ScannerStream.get(next_byte);
        std::cerr << std::hex << (int)next_byte << " ";
    }
    std::cerr << std::endl ;
    return EXIT_SUCCESS;
}

void *Scanner::listen(void *thread)
{
    pthread_t fetcher;
    while( ! done ) {
        while( ScannerStream.rdbuf()->in_avail() == 0 ) usleep(100);
        pthread_create(&fetcher, NULL, fetch, (void *)0);
    }
    return EXIT_SUCCESS;
}

int Scanner::init()
{
    pthread_t listener;
    ScannerStream.Open( "/dev/ttyUSB0" );
    err("SERIAL STREAM.");
    ScannerStream.SetBaudRate( SerialStreamBuf::BAUD_9600 );
    err("BAUD RATE.");
    ScannerStream.SetCharSize( SerialStreamBuf::CHAR_SIZE_8 );
    err("CHAR SIZE.");
    ScannerStream.SetParity( SerialStreamBuf::PARITY_NONE ) ;
    err("PARITY BIT.");
    ScannerStream.SetNumOfStopBits( 1 ) ;
    err("STOP BITS.");
    ScannerStream.SetFlowControl( SerialStreamBuf::FLOW_CONTROL_HARD );
    err("HARDWARE FLOW CONTROL.");
    pthread_create(&listener, NULL, listen, (void *)0);

    std::cerr << std::endl;
    pthread_exit(NULL);
    return EXIT_SUCCESS;
}
