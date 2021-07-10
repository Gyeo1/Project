#include <mega128.h>
#include <delay.h>



void LED_SWAP(void)
{
    unsigned char Led;     
    while(1)
    {
    Led = 0x05;                
    delay_ms(1000);
    Led = 0x0a;
    delay_ms(1000);
    Led =0x06;
    delay_ms(1000);
    Led=0x09;
    delay_ms(1000);
    Led=0x00;
    delay_ms(1000);
    Led=0x0e; 
    delay_ms(1000);
     
    }
}

void main()
{
    DDRB=0x0f; 
    
    LED_SWAP();
}