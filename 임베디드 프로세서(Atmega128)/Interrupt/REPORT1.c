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

unsigned char int0 ;
unsigned char int1 ;
unsigned char int2 ;
unsigned char int3 ;


unsigned char Led; 
unsigned int i;
interrupt [EXT_INT0] void ext_int0_isr(void)
{
      int0=1;
}

interrupt [EXT_INT1] void ext_int1_isr(void)
{
     int1=1;
}

interrupt [EXT_INT2] void ext_int2_isr(void)
{
      int2=1;
}
interrupt [EXT_INT3] void ext_int3_isr(void)
{
      int3=1;     
}

void LED_RShift(void)   //r 시프팅.
{  
    Led = 0xf7;   //0이면 켜짐 여기선 portb3만 켜둠
    for(i=0;i<4;i++) 
    {   delay_ms(250);  
        PORTB=Led;         
        Led=(Led>>1)|0x80;   //PB를 >>shift 상위비트는 다 채워서 하위 비트만 움직이게 보이도록함
        delay_ms(250);
        }
}
void LED_LShift(void)
{
    Led=0xfe;     //최하위 led만킴.
         
    for(i=0;i<4;i++)   //하위 3비트 시프트니깐 3번만.
    {                                
        delay_ms(100);
        PORTB=Led;          //포트b의 마지막 비트가 0 즉 마지막 비트의 LED만 켜져있음
        Led=(Led<<1)|0x01;   //좌로 시프트하고 마지막비트를 1로 채움
        delay_ms(100);
    }
}

void LED_swap(void)
{
Led = 0x0f; //상위 4비트만 on
for (i=0;i<5;i++){
 PORTB=Led;    
 delay_ms(1000); //1
 Led = ~(PORTB);      //비트 반전 하위 4비트만 on
}            
 }
 
void LED_even(void)
{
 int i;
 unsigned char Led;
 Led = 0x55; //짝수만 켜짐

 for(i=0;i<5;i++){
  PORTB=Led;
  delay_ms(1000);
  Led = ~(PORTB);//짝수를 반전시키면 홀수 부분만 켜짐.
 }
}


void interrupt_init (void)
     {                 
     DDRB=0xff;     //포트 b를 전체출력.
     EIMSK =0x0f;    //히위 4 인터럽트 허가. SREG 레지스터가 허가되야 실제허가.
     EICRA=0xaf;     //INT0,1를 상승에지 2,3을 하강에지 트리거로 만듦
     SREG |= 0x80;  //전체 인터럽트 허가.
     DDRD=0x00; //D 는 IO로 사용시 입력.
     } 
     
void main()
{
interrupt_init();
int0=0;
int1=0;
int2=0;
int3=0;
PORTB=0xff;  //off
while(1){  
    
 if(int0==1) 
       {  
       LED_RShift(); 
       PORTB=0xff;// 보여주고 원상태로 초기화.
       int0=0;
       }
 else if(int1==1)
       {
       LED_LShift();
       PORTB=0xff;// 보여주고 원상태로 초기화. 
       int1=0;       
       }
 else if(int2==1)
 {
       LED_swap();
       PORTB=0xff;// 보여주고 원상태로 초기화.
       int2=0;      
 }
 else if (int3==1) 
 {
       LED_even();
       PORTB=0xff;// 보여주고 원상태로 초기화. 
       int3=0;        
 }
      }
    }