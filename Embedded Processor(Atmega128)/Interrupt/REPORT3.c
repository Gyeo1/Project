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
unsigned char int0;
unsigned char int3;
void interrupt_init (void)
     {                 
     DDRB=0xff;     //포트 b를 전체출력.
     EIMSK=0x09;    //INT0,3 개별 인터럽트 허가. SREG 레지스터가 허가되야 실제허가.
     EICRA=0x82;     //INT0 하강에지 //INT3 하강 에지
     SREG |= 0X80;  //전체 인터럽트 허가.
     DDRD=0x00; //D 는 IO로 사용시 입력.
     }  

interrupt [EXT_INT0] void ext_int0_isr(void)
{
    int0=1;
}

interrupt [EXT_INT3] void ext_int3_isr(void)
{
    int3=1;
}

void LED_RShift(void)   
{          
    Led=(Led>>1)|0x80; 
    delay_ms(250);
    PORTB=Led;
 
}
void LED_LShift(void)
{
    Led=(Led<<1)|0x01;  
    delay_ms(250);  
    PORTB=Led;   
    
}

void main(void)
{
    int0=0;
    int3=0;
    interrupt_init();   
    Led = 0xfe;
    PORTB=Led;//최하위 비트만 on;
    while(1){  
    
    if(int0==1)
    {
     LED_LShift();
     int0=0;  //끝나면 int0 초기화.
    }
    else if(int3==1) 
    {
     LED_RShift(); 
     int3=0; //끝나면 int3초기화. 
    }
    else if(Led==0xff)  //다 꺼버리면 다시 초기로 복귀.
    {
       Led=0xfe;
    }  
 
    
        
    }
  
}