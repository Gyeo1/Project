#include <mega128.h>
#include <delay.h>
#define EXT_INT0 2
#define EXT_INT1 3
#define EXT_INT2 4
#define EXT_INT3 5
#define EXT_INT4 6
#define EXT_INT5 7
#define EXT_INT6 8
#define EXT_INT7 9

unsigned char Led;
unsigned char count; 
unsigned int i;    

interrupt [EXT_INT0] void ext_int0_isr(void)
{
    if(count>4) count =0;  //4번이상누르면 초기화.
   
 count++;    
}
void LED_RShift(void)   
{  
    Led = 0x7f;// 맨위만 켜짐.  
    for(i=0;i<8;i++) 
    {   delay_ms(250);  
        PORTB=Led;         
        Led=(Led>>1)|0x80;   //PB를 >>shift 상위비트는 다 채워서 하위 비트만 움직이게 보이도록함
        delay_ms(250);
        }
}
void LED_LShift(void)
{
    Led=0xfe;     //최하위 led만킴.
         
    for(i=0;i<8;i++) 
    {                                
        delay_ms(100);
        PORTB=Led;          //포트b의 마지막 비트가 0 즉 마지막 비트의 LED만 켜져있음
        Led=(Led<<1)|0x01;   //좌로 시프트하고 마지막비트를 1로 채움
        delay_ms(100);
    }
}

void LED_Allon(void)
{
    PORTB=0x00;//모든 LED on;
    delay_ms(100);
}

void LED_swap(void)
{
 Led = 0xf0; //하위 4비트만 on
for (i=0;i<2;i++){
 PORTB=Led;    
 delay_ms(100); 
 Led = ~(PORTB);      //비트 반전 위 4비트만 on
}
}

void interupt_init(void)
{
    EIMSK=0x01;// int0만 활성.
    EICRA=0x02;     //하강엣지.
    DDRB=0xff;      //포트b 출력.    
    DDRD=0x00;
    SREG |= 0x80;
    
}

void main(void)
{
 count =0;
 
 interupt_init();
 PORTB=0xff; //LED전체 off.
 while(1)
 {          
    if(count==1)  LED_LShift();
    else if (count==2)  LED_RShift();
    else if (count==3)  LED_Allon();
    else if (count==4)  LED_swap();
    else PORTB=0x00;
 }             
  
}
