#include <mega128.h>
#include <delay.h>

void LED_RShift(void)
{
    int i;
    unsigned char Led;
    Led = 0x7f;   //PB 7 =0
    for(i=0;i<8;i++) 
    {   delay_ms(250);  
        PORTB=Led;         
        Led=(Led>>1)|0x80;    //PB�� >>shift �ϰ� �ֻ�����Ʈ�� 1�� �ִ´� PB7=1
        delay_ms(250);
        }
}

void main(void)
{
    DDRB = 0xff; //��Ʈb�� ��� ������� ����
    PORTB=0xff; //��� LED�� off ���ѳ���.
    while(1)
    {
        LED_RShift();
        delay_ms(100);
    }
}
