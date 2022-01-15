#include <mega128.h>
#include <delay.h>

void init_PORT(void)
{
    DDRD=0x00;
    DDRB=0xff;
}

void LED_LShift(int a) //���ڰ�x�� ����.
{
    int i;
    
    unsigned char Led;
    Led = 0xfe;   //���ϴ� LED�� on.
    for(i=0;i<8;i++)
    {
        delay_ms(a/2);
        PORTB=Led;          //��Ʈb�� ������ LED�� ��������
        Led=(Led<<1)|0x01;   //�·� ����Ʈ�ϰ� ��������Ʈ�� 1�� ä��
        delay_ms(a/2); //���ڰ� x��ŭ �ð��� ������ ���� �ݺ�.
        }
}

void main(void){
int switch_number;
unsigned char key;
init_PORT();
while(1)
{
key = ~(PIND);//����ġ�� 0�϶� on�̴�.
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