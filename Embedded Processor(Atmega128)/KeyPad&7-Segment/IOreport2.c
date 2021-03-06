#include <mega128.h>
#include <delay.h>
#define FND_Null 17
#define FND_Star 13
#define FND_Sharp 15
unsigned char Port_char[]={0xc0,0xf9,0xa4,0xb0,0x99,0x92,0x82,0xd8,0x80,0x90,0x88,0x83,0xc4,0xa1,0x84,0x8e};
unsigned int Port_fnd[]={0x1f,0x2f,0x4f,0x8f};//FND 자릿수?
unsigned int buf_seg[4]={FND_Null,FND_Null,FND_Null,FND_Null};
unsigned int Key_off_flag=0;
unsigned char New_key_data=0, key_Num =0; 
void init_PORT(void)
{
    DDRE=0xf0;      //자릿수 선택하는 PE4-PB7까지 출력설정.
                                                           
    DDRB=0xff; //B포트 전부다 출력설정    
    
    DDRC=0x0f;//상위는 입력 하위는(scan)출력 .
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
    getPinData=PINC&0xf0; //스위치 몇번이 눌렸나 확인.  
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




void Print_Segment_blinking(unsigned int* seg_value)   //seg_value는 buf_seg[]값/
{  //각자릿수에   buf_seg배열을 넣는다.
    PORTE=Port_fnd[0];
    PORTB=Port_char[seg_value[0]];
    delay_ms(17); //강의자료 참고 16ms 초과시 블링킹 현상발생.
     
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
if(Key_off_flag)     
    {      
    //새로운 값이 들어오면 시프트 시킨다.
    
    buf_seg[3]=buf_seg[2];
    buf_seg[2]=buf_seg[1]; 
    buf_seg[1]=buf_seg[0];
    
    Key_off_flag = ~Key_off_flag; 
    //여기서 키오프를 0으로 만들어서 채터링 발생시 else문으로 가게한다.
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
        if(New_key_data)     //키가 눌릴때.
        {
         if(New_key_data%4 !=0)            //모드키가 아닐때
          {
             key_Num =(New_key_data/4)*3+(New_key_data%4);  //키값을 재정비
            
             if(key_Num>=10)      //10넘으면 * 0 #이므로 따로 구분
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
            else;        //if 문 탈출.
            }
            else{
                key_Num =(New_key_data/4)+9;  //모드키의 넘버값을 재설정 10,11,12,13
                switch (key_Num)
                       {
                       case 10:    //m1일때 segment를 좌로시프트
                           while(key_Num==10){ 
                            buf_seg[3]=buf_seg[2];   //seg값을 바꾸면 시프트됨.
                            buf_seg[2]=buf_seg[1]; 
                            buf_seg[1]=buf_seg[0];
                            buf_seg[0]=FND_Null;  
                            Print_Segment(buf_seg);         
                            }
                            
                       break;
                       case 11: //m2일때 R-shift  
                            while(key_Num==11)  {
                            buf_seg[3]=FND_Null;
                            buf_seg[2]=buf_seg[3];
                            buf_seg[1]=buf_seg[2];
                            buf_seg[0]=buf_seg[1];  
                            Print_Segment(buf_seg);
                            }
                       break; 
                       case 12:     //m3시 블링킹 현상.
                            while(key_Num==12){
                            Print_Segment_blinking(buf_seg);
                            }

                       break;
                       case 13:      //사용하지 않음 reserved;
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
            Key_off_flag=1;    //키가 때지면 1입력.
            Print_Segment(buf_seg);
            }
    }