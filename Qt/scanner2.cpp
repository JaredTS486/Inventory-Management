/**
   Bar code scanner interface.
   Brice Rebsamen, National University of Singapore, Nov 2006
   brice.brice@gmail.com

   Works with the USB bar code scanner by Symbol Technology:
   VendorID 0x5e0 and ProductID 0x200.
   Requires libhid.

   This bar code scanner acts like a USB keyboard.
   On an interrupt read request, the scanner returns 8 bytes:
   - The first byte corresponds to the control keys pressed. It is
   equal to 2 if SHIFT is pressed, i.e. upper case character.
   - Bytes 2 to 7 correspond to a max of 6 keys pressed
   simultaneously. In the case of the scanner, there is only one key
   pressed therefore we are only interested in the third byte.

   To get a full barcode we need to send requests until we read a
   carriage return character (code 0x28);
*/

#include <hid.h>
#include <stdio.h>
#include <string.h>

#define PACKET_LEN 8


char keycodelist(char scancode){
  char ret = '-';

  // from /usr/src/linux/drivers/usb/input/usbkbd.c
  char usb_kbd_keycode[256] = {
     0,  0,  0,  0, 30, 48, 46, 32, 18, 33, 34, 35, 23, 36, 37, 38,
    50, 49, 24, 25, 16, 19, 31, 20, 22, 47, 17, 45, 21, 44,  2,  3,
     4,  5,  6,  7,  8,  9, 10, 11, 28,  1, 14, 15, 57, 12, 13, 26,
    27, 43, 43, 39, 40, 41, 51, 52, 53, 58, 59, 60, 61, 62, 63, 64,
    65, 66, 67, 68, 87, 88, 99, 70,119,110,102,104,111,107,109,106,
   105,108,103, 69, 98, 55, 74, 78, 96, 79, 80, 81, 75, 76, 77, 71,
    72, 73, 82, 83, 86,127,116,117,183,184,185,186,187,188,189,190,
   191,192,193,194,134,138,130,132,128,129,131,137,133,135,136,113,
   115,114,  0,  0,  0,121,  0, 89, 93,124, 92, 94, 95,  0,  0,  0,
   122,123, 90, 91, 85,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
     0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
     0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
     0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
     0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
    29, 42, 56,125, 97, 54,100,126,164,166,165,163,161,115,114,113,
   150,158,159,128,136,177,178,176,142,152,173,140
  };

  switch(usb_kbd_keycode[scancode]){
  case 0x02: ret ='1';break;
  case 0x03: ret ='2';break;
  case 0x04: ret ='3';break;
  case 0x05: ret ='4';break;
  case 0x06: ret ='5';break;
  case 0x07: ret ='6';break;
  case 0x08: ret ='7';break;
  case 0x09: ret ='8';break;
  case 0x0a: ret ='9';break;
  case 0x0b: ret ='0';break;
  case 0x1e: ret ='a';break;
  case 0x30: ret ='b';break;
  case 0x2e: ret ='c';break;
  case 0x20: ret ='d';break;
  case 0x12: ret ='e';break;
  case 0x21: ret ='f';break;
  case 0x22: ret ='g';break;
  case 0x23: ret ='h';break;
  case 0x17: ret ='i';break;
  case 0x24: ret ='j';break;
  case 0x25: ret ='k';break;
  case 0x26: ret ='l';break;
  case 0x32: ret ='m';break;
  case 0x31: ret ='n';break;
  case 0x18: ret ='o';break;
  case 0x19: ret ='p';break;
  case 0x10: ret ='q';break;
  case 0x13: ret ='r';break;
  case 0x1f: ret ='s';break;
  case 0x14: ret ='t';break;
  case 0x16: ret ='u';break;
  case 0x2f: ret ='v';break;
  case 0x11: ret ='w';break;
  case 0x2d: ret ='x';break;
  case 0x15: ret ='y';break;
  case 0x2c: ret ='z';break;
  case 0x0c: ret ='-';break;
  default: break;
  }
  return ret;
}


void printPacket(const char* packet, unsigned int size){
  int i;
  printf("received packet: 0x ");
  for( i=0; i<size; printf("%02x ",packet[i++]) );
  printf(" | ");
  for( i=0; i<size; putchar(keycodelist(packet[i++])) );
  putchar('\n');
}


int main(void){
  HIDInterface* hid;
  hid_return ret;
  HIDInterfaceMatcher matcher = { 0x5e0, 0x200, NULL, NULL, 0 };
  char packet[PACKET_LEN], code[PACKET_LEN], c=0;
  int i=0,ci=0;

  hid_set_debug(HID_DEBUG_NONE);
  hid_set_debug_stream(stderr);
  hid_set_usb_debug(0);

  hid_init();
  hid = hid_new_HIDInterface();
  hid_force_open(hid, 0, &matcher, 3);

  //hid_set_idle(hid,0,0);
  memset(code,0,sizeof(code));
  while(1){
    memset(packet,0,sizeof(packet));
    ret = hid_interrupt_read(hid,0x81,packet,PACKET_LEN,1000);
    if( ret == HID_RET_SUCCESS ){
      //printPacket(packet,PACKET_LEN);
      if( packet[2]==0x28 ){
    printf("%s\n",code);
    memset(code,0,sizeof(code));
    ci = 0;
      }
      else{
    if( packet[2]!=0 ){
      c = keycodelist(packet[2]);
      if( packet[0]==2 )
        c = toupper(c);
      code[ci++] = c;
    }
      }
    }
  }

  hid_close(hid);
  hid_delete_HIDInterface(&hid);
  hid_cleanup();
  return 0;
}
