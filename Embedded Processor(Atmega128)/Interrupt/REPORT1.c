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

void LED_RShift(void)   //r ������.
{  
    Led = 0xf7;   //0�̸� ���� ���⼱ portb3�� �ѵ�
    for(i=0;i<4;i++) 
    {   delay_ms(250);  
        PORTB=Led;         
        Led=(Led>>1)|0x80;   //PB�� >>shift ������Ʈ�� �� ä���� ���� ��Ʈ�� �����̰� ���̵�����
        delay_ms(250);
        }
}
void LED_LShift(void)
{
    Led=0xfe;     //������ led��Ŵ.
         
    for(i=0;i<4;i++)   //���� 3��Ʈ ����Ʈ�ϱ� 3����.
    {                                
        delay_ms(100);
        PORTB=Led;          //��Ʈb�� ������ ��Ʈ�� 0 �� ������ ��Ʈ�� LED�� ��������
        Led=(Led<<1)|0x01;   //�·� ����Ʈ�ϰ� ��������Ʈ�� 1�� ä��
        delay_ms(100);
    }
}

void LED_swap(void)
{
Led = 0x0f; //���� 4��Ʈ�� on
for (i=0;i<5;i++){
 PORTB=Led;    
 delay_ms(1000); //1
 Led = ~(PORTB);      //��Ʈ ���� ���� 4��Ʈ�� on
}            
 }
 
void LED_even(void)
{
 int i;
 unsigned char Led;
 Led = 0x55; //¦���� ����

 for(i=0;i<5;i++){
  PORTB=Led;
  delay_ms(1000);
  Led = ~(PORTB);//¦���� ������Ű�� Ȧ�� �κи� ����.
 }
}


void interrupt_init (void)
     {                 
     DDRB=0xff;     //��Ʈ b�� ��ü���.
     EIMSK =0x0f;    //���� 4 ���ͷ�Ʈ �㰡. SREG �������Ͱ� �㰡�Ǿ� �����㰡.
     EICRA=0xaf;     //INT0,1�� ��¿��� 2,3�� �ϰ����� Ʈ���ŷ� ����
     SREG |= 0x80;  //��ü ���ͷ�Ʈ �㰡.
     DDRD=0x00; //D �� IO�� ���� �Է�.
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
       PORTB=0xff;// �����ְ� �����·� �ʱ�ȭ.
       int0=0;
       }
 else if(int1==1)
       {
       LED_LShift();
       PORTB=0xff;// �����ְ� �����·� �ʱ�ȭ. 
       int1=0;       
       }
 else if(int2==1)
 {
       LED_swap();
       PORTB=0xff;// �����ְ� �����·� �ʱ�ȭ.
       int2=0;      
 }
 else if (int3==1) 
 {
       LED_even();
       PORTB=0xff;// �����ְ� �����·� �ʱ�ȭ. 
       int3=0;        
 }
      }
    }