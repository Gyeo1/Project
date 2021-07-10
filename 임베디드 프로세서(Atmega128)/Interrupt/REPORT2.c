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
    if(count>4) count =0;  //4���̻󴩸��� �ʱ�ȭ.
   
 count++;    
}
void LED_RShift(void)   
{  
    Led = 0x7f;// ������ ����.  
    for(i=0;i<8;i++) 
    {   delay_ms(250);  
        PORTB=Led;         
        Led=(Led>>1)|0x80;   //PB�� >>shift ������Ʈ�� �� ä���� ���� ��Ʈ�� �����̰� ���̵�����
        delay_ms(250);
        }
}
void LED_LShift(void)
{
    Led=0xfe;     //������ led��Ŵ.
         
    for(i=0;i<8;i++) 
    {                                
        delay_ms(100);
        PORTB=Led;          //��Ʈb�� ������ ��Ʈ�� 0 �� ������ ��Ʈ�� LED�� ��������
        Led=(Led<<1)|0x01;   //�·� ����Ʈ�ϰ� ��������Ʈ�� 1�� ä��
        delay_ms(100);
    }
}

void LED_Allon(void)
{
    PORTB=0x00;//��� LED on;
    delay_ms(100);
}

void LED_swap(void)
{
 Led = 0xf0; //���� 4��Ʈ�� on
for (i=0;i<2;i++){
 PORTB=Led;    
 delay_ms(100); 
 Led = ~(PORTB);      //��Ʈ ���� �� 4��Ʈ�� on
}
}

void interupt_init(void)
{
    EIMSK=0x01;// int0�� Ȱ��.
    EICRA=0x02;     //�ϰ�����.
    DDRB=0xff;      //��Ʈb ���.    
    DDRD=0x00;
    SREG |= 0x80;
    
}

void main(void)
{
 count =0;
 
 interupt_init();
 PORTB=0xff; //LED��ü off.
 while(1)
 {          
    if(count==1)  LED_LShift();
    else if (count==2)  LED_RShift();
    else if (count==3)  LED_Allon();
    else if (count==4)  LED_swap();
    else PORTB=0x00;
 }             
  
}
