#include <mega128.h>
#include <delay.h>


#define Do 1908
#define Re 1700
#define Mi 1515
#define Fa 1432
#define Sol 1275
#define La 1136
#define Si 1012
#define Do_H 956

void myDelay_us(unsigned int delay)
{
    int i;
    for(i=0;i<delay;i++)
    {
    delay_us(1);
    }

}

void SSound(int time)
{
    int i,tim;
    tim = 50000/time;
    
    for(i = 0 ;i<tim;i++)
    {
    
    PORTG|=1<<4;   
    
    myDelay_us(time);
    PORTG &=~(1<<4);
    myDelay_us(time);
    
    }
}



unsigned char scan_sw(void)//������ ���� ����ġ ��ĵ
{
    unsigned char sw_num=0;
    sw_num =~PIND;//Reverse
    delay_ms(10);
    return sw_num;
}

void gen_sound(int sw)
{

  //����ġ�� 1->2->3->2->1->2->4�� ����ġ�� ���������� ������.
 if(sw==0x01)   SSound(Mi), SSound(Re), SSound(Do), SSound(Re);
 else if (sw==0x02)      SSound(Mi), SSound(Mi),SSound(Mi);
 else if (sw==0x04)      SSound(Re),SSound(Re),SSound(Re);
 else if (sw==0x08)       SSound(Re),SSound(Re),SSound(Mi), SSound(Re), SSound(Do);
 else if (sw==0x10)       SSound(Sol);
 else if (sw==0x20)       SSound(La);
 else if (sw==0x40)       SSound(Si);
 else if (sw==0x80)       SSound(Do_H);
 
}

void main(void)
{
unsigned char sel_sw;

DDRD=0x00; //����ġ�� �Է¼���.

DDRG |=(1<<4);//buzeer ��¼���

while(1)
{
    
 //����ġ�� 1->2->3->2->1->2->4�� ����ġ�� ���������� ������.
    sel_sw = scan_sw();
    gen_sound(sel_sw);     

}
}