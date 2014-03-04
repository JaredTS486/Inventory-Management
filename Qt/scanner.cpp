#include <iostream>
#include <cstdlib>
#include <SerialStream.h>
using namespace LibSerial;

int Scan()
{
    SerialStream ScannerStream;
    ScannerStream.Open( "/dev/tty32" );
    if ( ! ScannerStream.good() ){
        std::cerr << "[" << __FILE__ << ":" << __LINE__ << "] "
                  << "Error: Could not open serial port."
                  << std::endl ;
        exit(1) ;
    }

    //BAUD Rate
    ScannerStream.SetBaudRate( SerialStreamBuf::BAUD_115200 ) ;
    if ( ! ScannerStream.good() ){
        std::cerr << "Error: Could not set the baud rate." << std::endl ;
        exit(1) ;
    }

    // Set the number of data bits.
    ScannerStream.SetCharSize( SerialStreamBuf::CHAR_SIZE_8 ) ;
    if ( ! ScannerStream.good() ){
        std::cerr << "Error: Could not set the character size." << std::endl ;
        exit(1) ;
    }

    // Disable parity.
    ScannerStream.SetParity( SerialStreamBuf::PARITY_NONE ) ;
    if ( ! ScannerStream.good() ){
        std::cerr << "Error: Could not disable the parity." << std::endl ;
        exit(1) ;
    }

    // Set the number of stop bits.
    ScannerStream.SetNumOfStopBits( 1 ) ;
    if ( ! ScannerStream.good() ){
        std::cerr << "Error: Could not set the number of stop bits."
                  << std::endl ;
        exit(1) ;
    }

    // Turn on hardware flow control.
    ScannerStream.SetFlowControl( SerialStreamBuf::FLOW_CONTROL_HARD );
    if ( ! ScannerStream.good() ){
        std::cerr << "Error: Could not use hardware flow control."
                  << std::endl ;
        exit(1) ;
    }

    // Keep reading data from serial port and print it to the screen.
    while( ScannerStream.rdbuf()->in_avail() > 0  )
    {
        char next_byte;
        ScannerStream.get(next_byte);
        std::cerr << std::hex << (int)next_byte << " ";
    }
    std::cerr << std::endl;
    return EXIT_SUCCESS;
}
