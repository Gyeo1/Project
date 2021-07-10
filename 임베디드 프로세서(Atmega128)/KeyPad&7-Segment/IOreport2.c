#include <mega128.h>
#include <delay.h>
#define FND_Null 17
#define FND_Star 13
#define FND_Sharp 15
unsigned char Port_char[]={0xc0,0xf9,0xa4,0xb0,0x99,0x92,0x82,0xd8,0x80,0x90,0x88,0x83,0xc4,0xa1,0x84,0x8e};
unsigned int Port_fnd[]={0x1f,0x2f,0x4f,0x8f};//FND �ڸ���?
unsigned int buf_seg[4]={FND_Null,FND_Null,FND_Null,FND_Null};
unsigned int Key_off_flag=0;
unsigned char New_key_data=0, key_Num =0; 
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




void Print_Segment_blinking(unsigned int* seg_value)   //seg_value�� buf_seg[]��/
{  //���ڸ�����   buf_seg�迭�� �ִ´�.
    PORTE=Port_fnd[0];
    PORTB=Port_char[seg_value[0]];
    delay_ms(17); //�����ڷ� ���� 16ms �ʰ��� ��ŷ ����߻�.
     
    PORTE=Port_fnd[1];
    PORTB=Port_char[seg_value[1]];
    delay_ms(17);
     
    PORTE=Port_fnd[2];
    PORTB=Port_char[seg_value[2]];
    delay_ms(17);      
 
    PORTE=Port_fnd[3];
    PORTB=Port_char[seg_value[3]];
    delay_ms(17);
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
if(Key_off_flag)     
    {      
    //���ο� ���� ������ ����Ʈ ��Ų��.
    
    buf_seg[3]=buf_seg[2];
    buf_seg[2]=buf_seg[1]; 
    buf_seg[1]=buf_seg[0];
    
    Key_off_flag = ~Key_off_flag; 
    //���⼭ Ű������ 0���� ���� ä�͸� �߻��� else������ �����Ѵ�.
    }
    else
    buf_seg[0]=key_Num;    
    
return key_Num;
}

void main(void)
{
   
    init_PORT();    
    while(1)
    {
        New_key_data = KeyScan(); 
        if(New_key_data)     //Ű�� ������.
        {
         if(New_key_data%4 !=0)            //���Ű�� �ƴҶ�
          {
             key_Num =(New_key_data/4)*3+(New_key_data%4);  //Ű���� ������
            
             if(key_Num>=10)      //10������ * 0 #�̹Ƿ� ���� ����
             {
                switch (key_Num)
                       {
                       case 10:
                              key_Num= FND_Star;
                       break;

                       case 11:
                              key_Num=0;
                       break; 
                       
                       case 12:
                              key_Num = FND_Sharp;
                       break;  
                       
                       default:
                       break;
                       }
                }
            else;        //if �� Ż��.
            }
            else{
                key_Num =(New_key_data/4)+9;  //���Ű�� �ѹ����� �缳�� 10,11,12,13
                switch (key_Num)
                       {
                       case 10:    //m1�϶� segment�� �·ν���Ʈ
                           while(key_Num==10){ 
                            buf_seg[3]=buf_seg[2];   //seg���� �ٲٸ� ����Ʈ��.
                            buf_seg[2]=buf_seg[1]; 
                            buf_seg[1]=buf_seg[0];
                            buf_seg[0]=FND_Null;  
                            Print_Segment(buf_seg);         
                            }
                            
                       break;
                       case 11: //m2�϶� R-shift  
                            while(key_Num==11)  {
                            buf_seg[3]=FND_Null;
                            buf_seg[2]=buf_seg[3];
                            buf_seg[1]=buf_seg[2];
                            buf_seg[0]=buf_seg[1];  
                            Print_Segment(buf_seg);
                            }
                       break; 
                       case 12:     //m3�� ��ŷ ����.
                            while(key_Num==12){
                            Print_Segment_blinking(buf_seg);
                            }

                       break;
                       case 13:      //������� ���� reserved;
                            while(key_Num==13){
                            buf_seg[3]=FND_Null;
                            buf_seg[2]=FND_Null;
                            buf_seg[1]=FND_Null;
                            buf_seg[0]=FND_Null; 
                            Print_Segment(buf_seg);
                            }
                       break;
                       }
                        
                       }
                 keypad_in();
                }
        else
            Key_off_flag=1;    //Ű�� ������ 1�Է�.
            Print_Segment(buf_seg);
            }
    }