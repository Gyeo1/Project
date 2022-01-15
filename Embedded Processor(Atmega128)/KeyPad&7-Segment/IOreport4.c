#include <mega128.h>
#include <delay.h>
#include <mega128.h>
#include <delay.h>
#define FND_Null 17
#define FND_Star 13
#define FND_Sharp 15
unsigned char Port_char[]={0xc0,0xf9,0xa4,0xb0,0x99,0x92,0x82,0xd8,0x80,0x90,0x88,0x83,0xc4,0xa1,0x84,0x8e};
unsigned int Port_fnd[]={0x1f,0x2f,0x4f,0x8f};//FND �ڸ���?
unsigned int buf_seg[4]={FND_Null,FND_Null,FND_Null,FND_Null};//�ʱ� ���׸�Ʈ 
unsigned int Key_off_flag=0;
unsigned int key_Num =0; 


void init_PORT(void)
{
    DDRE=0xf0;      //�ڸ��� �����ϴ� PE4-PB7���� ��¼���.
                                                           
    DDRB=0xff; //B��Ʈ ���δ� ��¼���    
    
    DDRC=0x0f;//������ �Է� ������(scan)��� .
     PORTC=0x0f;               
    }
    
char KeyScan(void)
{
  unsigned int Key_scan_loop;
  unsigned char Key_scan_line = 0xfe;   
  unsigned char getPinData=0;  
  delay_us(1);                        
  
  for(Key_scan_loop =0; Key_scan_loop<4;Key_scan_loop++)
  {     
    PORTC=Key_scan_line;  
    delay_us(1);
    getPinData=PINC&0xf0; //����ġ ����� ���ȳ� Ȯ��.  
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


unsigned char keypad_in()
{
if(Key_off_flag)     
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
    
    
void main(){
unsigned int count;
unsigned char New_key_data;
count=0;
init_PORT();
while(1)
{
    New_key_data=KeyScan();
    if(New_key_data)     //Ű�� ������.
        {   
         count++;//���ο� Ű���� ������ ī��������.
         if(New_key_data%4 !=0)            //���Ű�� �ƴҶ�
          {
             key_Num =(New_key_data/4)*3+(New_key_data%4);  //Ű���� ������
            
             if(key_Num>=10 && key_Num==11)      //10������ * 0 #�̹Ƿ� ���� ���� ���ڸ�
             {
               key_Num=0;
               }                                     
              else;
                
              if (count>4)//segment�� 4�� �پ��� ī���Ͱ� 4�ʰ�.
                { 
                  //segment�� 0000���� �ʱ�ȭ�ϰ� count�� 0���� �ʱ�ȭ..
                  count=0; 
                  buf_seg[3]=0;
                  buf_seg[2]=0;
                  buf_seg[1]=0;
                  buf_seg[0]=0;
                  
                }
              else
                keypad_in();
              
             
             
            }
          }
          else//Ű�� �������� (= ney key data�� 0�϶�)
              Key_off_flag=1;    
             
          
           Print_Segment(buf_seg);
         }
         }