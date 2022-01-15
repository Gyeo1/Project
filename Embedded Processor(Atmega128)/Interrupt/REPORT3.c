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
     DDRB=0xff;     //��Ʈ b�� ��ü���.
     EIMSK=0x09;    //INT0,3 ���� ���ͷ�Ʈ �㰡. SREG �������Ͱ� �㰡�Ǿ� �����㰡.
     EICRA=0x82;     //INT0 �ϰ����� //INT3 �ϰ� ����
     SREG |= 0X80;  //��ü ���ͷ�Ʈ �㰡.
     DDRD=0x00; //D �� IO�� ���� �Է�.
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
    PORTB=Led;//������ ��Ʈ�� on;
    while(1){  
    
    if(int0==1)
    {
     LED_LShift();
     int0=0;  //������ int0 �ʱ�ȭ.
    }
    else if(int3==1) 
    {
     LED_RShift(); 
     int3=0; //������ int3�ʱ�ȭ. 
    }
    else if(Led==0xff)  //�� �������� �ٽ� �ʱ�� ����.
    {
       Led=0xfe;
    }  
 
    
        
    }
  
}