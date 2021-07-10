#include <mega128.h>
#include <delay.h>
#define a 10  //port_char[]������ a~f����.
#define b 11
#define c 12
#define d 13
#define e 14
#define f 15
#define FND_Null 17
unsigned char Port_char[]={0xc0,0xf9,0xa4,0xb0,0x99,0x92,0x82,0xd8,0x80,0x90,0x88,0x83,0xc4,0xa1,0x84,0x8e};  //0���� f
unsigned int Port_fnd[]={0x1f,0x2f,0x4f,0x8f};//FND �ڸ���?
unsigned int buf_seg[4]={FND_Null,FND_Null,FND_Null,FND_Null};//�ʱ� ���׸�Ʈ
unsigned int Key_off_flag=0;
unsigned char key_Num =0; 
void init_PORT(void)
{
    DDRE=0xf0;      //�ڸ��� �����ϴ� PE4-PB7���� ��¼���.
                                                           
    DDRB=0xff; //B��Ʈ ���δ� ��¼���    
    
    DDRC=0x0f;//������ �Է� ������(scan)��� .               
    }
    
char KeyScan(void)
{
  unsigned int Key_scan_loop;
  unsigned char Key_scan_line = 0xFE;   
  unsigned char getPinData;  
  delay_us(1);                        
  
  for(Key_scan_loop =0; Key_scan_loop<4;Key_scan_loop++)
  {     
    PORTC=Key_scan_line;  
    delay_us(1);
    getPinData=PINC&0xF0; //����ġ ����� ���ȳ� Ȯ�Ӥ���.  
    if(getPinData !=0x00){
        switch (getPinData)
           {      //10�� �Ǵ����� = 74LS14�� ������ ���� �ޱ⶧���� ����ġ�� ������ 1��.
           case 0x10:
                key_Num = Key_scan_loop*4+1;                
           break;
           case 0x20:
                key_Num = Key_scan_loop*4+2;
           break;   
           case 0x40:
                key_Num = Key_scan_loop*4+3;
           break;              
           case 0x80:
                key_Num = Key_scan_loop*4+4;
           break;   
           default:   
               
                
           break;
           }
        } 
       
    Key_scan_line =(Key_scan_line<<1)|0x01;  //������ ���ú�Ʈ�� ������.
        
          
    return key_Num;   //�ƹ��͵� �ȴ����� 0 ���.
        }
}

void Print_Segment(unsigned int* seg_value)   //seg_value�� buf_seg[]��/
{  //���ڸ�����   buf_seg�迭�� �ִ´�.
    PORTE=Port_fnd[0];
    PORTB=Port_char[seg_value[0]];
    delay_ms(1);
     
    PORTE=Port_fnd[1];
    PORTB=Port_char[seg_value[1]];
    delay_ms(1);
     
    PORTE=Port_fnd[2];
    PORTB=Port_char[seg_value[2]];
    delay_ms(1);   
 
    PORTE=Port_fnd[3];
    PORTB=Port_char[seg_value[3]];
    delay_ms(1);
    }

unsigned char keypad_in()
{
if(Key_off_flag)      //Key _off_flag�� Ű�� ���ȴ� �������� �� ���� �Է����� 1 �̵ȴ�(�Ƹ�)
    {      
    //���ο� ���� ������ ����Ʈ ��Ų��.
    
    buf_seg[3]=buf_seg[2];
    buf_seg[2]=buf_seg[1]; 
    buf_seg[1]=buf_seg[0];
    
    Key_off_flag = ~Key_off_flag; //���⼭ Ű������ 0���� ���� ä�͸� �߻��� else������ �����Ѵ�.
    }
    else
    buf_seg[0]=key_Num;    
    
return key_Num;
}
  


  
void main(){
unsigned char Sw_Num;

init_PORT();
while(1)
{
    Sw_Num=KeyScan();
    if(Sw_Num)    
        {    
        
        switch (Sw_Num)
               {
               case 1:
                  key_Num=1;
               break;
               case 2:
                  key_Num=2;
               break;
               case 3:
                  key_Num=3;
               break;
               case 4:
                  key_Num=a;
               break;
               case 5:
                  key_Num=4;
               break;
               case 6:
                  key_Num=5;
               break;
               case 7:
                  key_Num=7;
               break; 
               case 8:
                  key_Num=b;
               break;
               case 9:
                  key_Num=7;

               break;                     
               case 10:
                   key_Num=8;
               break; 
               case 11:
                   key_Num=9;
               break; 
               
               case 12:
                   key_Num=c;
               break; 
               
               case 13:
                   key_Num=e;
               break; 
               case 14:
                   key_Num=0;
               break; 
               case 15:
                   key_Num=f;
               break; 
               case 16:
                   key_Num=d;
               break; 
               default:

               break;
               }
             
           keypad_in();    
          }
          else
            Key_off_flag =1;
            
       Print_Segment(buf_seg);
       }
       }