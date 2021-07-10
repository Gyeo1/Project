#include <mega128.h>
#include <delay.h>

void init_PORT(void)
{
    DDRB=0xff;
    DDRD=0x0f; //참고 : 스위치는 닫히면 port에 입력을 주므로 이 줄은 스위치를 상위 4개만 읽겠다는것.       
          
          //DDRx의 0은 입력 1은 출력. 즉 포트 b출력.
}

void LED_LShift(void)
{
    int i;
    unsigned char Led=0xfe;
      //마지막 비트만 0
    for(i=0;i<4;i++)
    {
        delay_ms(100);
        PORTB=Led;          //포트b의 마지막 비트가 0 즉 마지막 비트의 LED만 켜져있음
        Led=(Led<<1)|0x01;   //좌로 시프트하고 마지막비트를 1로 채움
        delay_ms(100);
    }
}

void LED_RShift(void)
{
    int i;
    unsigned char LED = 0xf4;
     
    for(i=0;i<4;i++)
    {
        delay_ms(100);
        PORTB=LED;         
        LED=(LED>>1)|0x80;    //PB를 >>shift 하고 최상위비트에 1을 넣는다 PB7=1
        delay_ms(100);
        }
}


void LED_OnOff(void)
{
PORTB = 0x00;
delay_ms(100);
PORTB = 0xff;
delay_ms(100);
}

void LED_Switch(void)
{
    PORTB=0xfc;
    delay_ms(100);
    PORTB=0xf3;
    delay_ms(100);
}

void main(void)
{
    unsigned char key;
    init_PORT();
    
        while(1)
        {
            key=~(PIND & 0xff);      
                                    //스위치가 닫히면(on) LOW/열리면(off) High
            switch (key)
                   {
                   case 0x10: 
                   
                   while ((key==0x10)||(key==0xff)) // 스위치가 똑같거나 아무것도 안눌리면 계속실행.
                   {         
                     LED_LShift();
                     delay_ms(500);
                   } 
                   break;
                       

                   case 0x20 : 
                   while((key==0x20)||(key==0xff))
                   {
                   LED_RShift();
                   delay_ms(500);
                    }
                    break; 
                   
                   case 0x40:  
                   while ((key==0x40)||(key==0xff))
                   {
                   LED_OnOff();
                   delay_ms(500);
                    }
                   break;
                   
                   case 0x80:   
                   while((key==0x80)||(key==0xff))
                   {
                   LED_Switch();
                   delay_ms(500);
                    }
                    break;
                   
                   default:
                         break;
                   }
            }
        
}