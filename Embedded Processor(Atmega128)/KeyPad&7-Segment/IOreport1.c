#include <mega128.h>
#include <delay.h>
  //active low ����
unsigned char Port_char[]={0xc0,0xf9,0xa4,0xb0,0x99,0x92,0x82,0xd8,0x80,0x90};  //0���� 9
unsigned int Port_fnd[]={0x1f,0x2f,0x4f,0x8f};//FND �ڸ���
unsigned char FND0,FND1,FND2,FND3;

void init_PORT(void)
{
    DDRE=0xf0;      //�ڸ��� �����ϴ� PE4-PB7���� ��¼���.
                                                           
    DDRB=0xff; //B��Ʈ ���δ� ��¼���                     
    }

void main()
{

init_PORT();

while(1)
{
    for(FND3=0;FND3<10;FND3++)   //4��° �ڸ���. min  0-9
    {                                               
        for(FND2=0;FND2<7;FND2++)    //3��° �ڸ���sec1  0-6
        {
            for(FND1=0;FND1<10;FND1++) //2��°   sec2 0-9
            {
                for(FND0=0;FND0<10;FND0++)   //ù��° 0.1sec 0-9
                {
                    PORTE=Port_fnd[0];
                    PORTB=Port_char[FND0];
                    delay_ms(25);
                    
                    PORTE=Port_fnd[1];
                    PORTB=Port_char[FND1];
                    delay_ms(25);
                    
                    PORTE=Port_fnd[2];
                    PORTB=Port_char[FND2];
                    delay_ms(25);
                    
                    PORTE=Port_fnd[3];
                    PORTB=Port_char[FND3];
                    delay_ms(25);
                     //������ ���� 100ms �� 0.1��.
                
                     
                    }
                }
            }
        }
    }
}