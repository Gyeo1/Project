#include <mega128.h>
#include <delay.h>

void init_PORT(void)
{
    DDRD=0x00;
    DDRB=0xff;
}

void LED_LShift(int a) //인자값x를 받음.
{
    int i;
    
    unsigned char Led;
    Led = 0xfe;   //최하단 LED만 on.
    for(i=0;i<8;i++)
    {
        delay_ms(a/2);
        PORTB=Led;          //포트b의 마지막 LED만 켜져있음
        Led=(Led<<1)|0x01;   //좌로 시프트하고 마지막비트를 1로 채움
        delay_ms(a/2); //인자값 x만큼 시간이 지난뒤 루프 반복.
        }
}

void main(void){
int switch_number;
unsigned char key;
init_PORT();
while(1)
{
key = ~(PIND);//스위치는 0일때 on이다.
switch(key)
{   case(0x01):
        switch_number=10;
        LED_LShift(switch_number);        
        break;
        
    case(0x02):                  
        switch_number=20;
        LED_LShift(switch_number);
        break;  
        
    case(0x04):
        switch_number=30;  
        LED_LShift(switch_number);        
        break; 
    
    case(0x08):
        switch_number=40; 
        LED_LShift(switch_number);        
        break;
        
    case(0x10):
        switch_number=50; 
        LED_LShift(switch_number);
        break; 
        
    case(0x20):
        switch_number=60;   
        LED_LShift(switch_number);
        break;
       
    case(0x40):
        switch_number=70; 
        LED_LShift(switch_number);
        break;    
        
    case(0x80):
        switch_number=80;   
        LED_LShift(switch_number);
        break;

  }
 }
}