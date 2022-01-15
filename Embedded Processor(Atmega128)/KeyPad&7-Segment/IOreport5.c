#include <mega128.h>
#include <delay.h>
#define a 10  //port_char[]에서의 a~f순서.
#define b 11
#define c 12
#define d 13
#define e 14
#define f 15
#define FND_Null 17
unsigned char Port_char[]={0xc0,0xf9,0xa4,0xb0,0x99,0x92,0x82,0xd8,0x80,0x90,0x88,0x83,0xc4,0xa1,0x84,0x8e};  //0부터 f
unsigned int Port_fnd[]={0x1f,0x2f,0x4f,0x8f};//FND 자릿수?
unsigned int buf_seg[4]={FND_Null,FND_Null,FND_Null,FND_Null};//초기 세그먼트
unsigned int Key_off_flag=0;
unsigned char key_Num =0; 
void init_PORT(void)
{
    DDRE=0xf0;      //자릿수 선택하는 PE4-PB7까지 출력설정.
                                                           
    DDRB=0xff; //B포트 전부다 출력설정    
    
    DDRC=0x0f;//상위는 입력 하위는(scan)출력 .               
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
    getPinData=PINC&0xF0; //스위치 몇번이 눌렸나 확ㅣㅇㄴ.  
    if(getPinData !=0x00){
        switch (getPinData)
           {      //10이 되는이유 = 74LS14로 반전된 값을 받기때문에 스위치가 눌리면 1임.
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
       
    Key_scan_line =(Key_scan_line<<1)|0x01;  //데이터 선택비트를 시프팅.
        
          
    return key_Num;   //아무것도 안눌리면 0 출력.
        }
}

void Print_Segment(unsigned int* seg_value)   //seg_value는 buf_seg[]값/
{  //각자릿수에   buf_seg배열을 넣는다.
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
if(Key_off_flag)      //Key _off_flag는 키가 눌렸다 때졌을때 즉 값이 입력됬을때 1 이된다(아마)
    {      
    //새로운 값이 들어오면 시프트 시킨다.
    
    buf_seg[3]=buf_seg[2];
    buf_seg[2]=buf_seg[1]; 
    buf_seg[1]=buf_seg[0];
    
    Key_off_flag = ~Key_off_flag; //여기서 키오프를 0으로 만들어서 채터링 발생시 else문으로 가게한다.
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