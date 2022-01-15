#include <mega128.h>
#include <delay.h>

void LED_RShift(void)
{
    int i;
    unsigned char Led;
    Led = 0x7f;   //PB 7 =0
    for(i=0;i<8;i++) 
    {   delay_ms(250);  
        PORTB=Led;         
        Led=(Led>>1)|0x80;    //PB를 >>shift 하고 최상위비트에 1을 넣는다 PB7=1
        delay_ms(250);
        }
}

void main(void)
{
    DDRB = 0xff; //포트b를 모두 출력으로 지정
    PORTB=0xff; //모든 LED를 off 시켜놓기.
    while(1)
    {
        LED_RShift();
        delay_ms(100);
    }
}
