#include <mega128.h>
#include <delay.h>

void init_PORT(void)
{
    DDRB=0xff;
    DDRD=0x0f; //���� : ����ġ�� ������ port�� �Է��� �ֹǷ� �� ���� ����ġ�� ���� 4���� �аڴٴ°�.       
          
          //DDRx�� 0�� �Է� 1�� ���. �� ��Ʈ b���.
}

void LED_LShift(void)
{
    int i;
    unsigned char Led=0xfe;
      //������ ��Ʈ�� 0
    for(i=0;i<4;i++)
    {
        delay_ms(100);
        PORTB=Led;          //��Ʈb�� ������ ��Ʈ�� 0 �� ������ ��Ʈ�� LED�� ��������
        Led=(Led<<1)|0x01;   //�·� ����Ʈ�ϰ� ��������Ʈ�� 1�� ä��
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
        LED=(LED>>1)|0x80;    //PB�� >>shift �ϰ� �ֻ�����Ʈ�� 1�� �ִ´� PB7=1
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
                                    //����ġ�� ������(on) LOW/������(off) High
            switch (key)
                   {
                   case 0x10: 
                   
                   while ((key==0x10)||(key==0xff)) // ����ġ�� �Ȱ��ų� �ƹ��͵� �ȴ����� ��ӽ���.
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