#include <mega128.h>
#include <delay.h>

//anode공통이다.
unsigned char Port_char[]={0xc0,0xf9,0xa4,0xb0,0x99,0x92,0x82,0xd8,0x80,0x90};
unsigned int Port_fnd[]={0x20,0x10,0x08,0x04,0x02,0x01};//fnd 자릿수
//알람에서 사용할 전역변수. 
unsigned char alram_set=0;
unsigned char alram_on=0;
unsigned int alram1[]={0,0,0} ;
unsigned int alram2[]={0,0,0} ;
unsigned int alram3[]={0,0,0} ;
//인터럽트에서 사용될 변수들 
unsigned int cnt_2=0; 
unsigned int cnt_7=0;
unsigned char sec=0;
unsigned char min=0;
unsigned char hour=0;
unsigned char mode=0;
unsigned char set=0;
unsigned char up=0;
unsigned char down=0; 
unsigned char S_W=0;                                    
unsigned char set_count=0;  
unsigned char count=1;
//현재시간 저장용 변수 like Stack.
unsigned char pre=0; //if문 작동용
unsigned char pre_sec=0;
unsigned char pre_min=0;
unsigned char pre_hour=0;

//타이머 2초기화. 
void init_timer2(void)
{
TCCR2 |= (1<<WGM21)|(1<<CS21);
TIMSK |=(1<<OCIE2);          //출력비교 인터럽트 허가.
TIFR=0xff; //타이머 카운터 0,2 인터럽트 클리어.
OCR2=99; //0~100까지 카운트.  50us
SREG|=0x80;
}
//포트 초기화.
void init_port(void)  
{
    DDRE=0x3f; //상위의 상우ㅣ2비트 입력(인터럽트),. 나머지 6비트는 출력(SEG표기용)
    DDRB=0xff; //led출력
    DDRD=0x00; //버튼(인터럽트)를 위한 초기화.   
    DDRG |=(1<<4); //부저비트 on
}
//타이머카운터 2 비교일치 인터럽트 
interrupt [TIM2_COMP] void timer2_out_comp(void)
{   if(!mode){   //모드면 스탑
    if(!S_W||set){  //스탑워치 모드면 stop set누르면 시 작
    if(!alram_set){ //모드, 스탑워치 ,알람이 눌리면 바로 스탑
    cnt_2++; // 인터럽트 발생마다 카운트 1씩증가.    
    if(cnt_2==2000)
    { //100ms 로 간략화
    cnt_2=0;
    sec++;
    if(sec>=60){
    min++;
    sec=0;
    }
    if(min>=60){
    hour++;
    min=0;
    }
    if (hour>=24){hour=0;}
    } 
    }  
    }
      }
    if(pre==1) //원래 시간을 저장해 백그라운드에서 시간증가.
    { 
    cnt_7++; // 인터럽트 발생마다 카운트 1씩증가.    
    if(cnt_7==2000)
    { //100ms 로 간략화
    cnt_7=0;
    pre_sec++;
    if(pre_sec>=60){
    pre_min++;
    pre_sec=0;
    }
    if(pre_min>=60){
    pre_hour++;
    pre_min=0;
    }
    if (pre_hour>=24){pre_hour=0;}
    }
    
    }
    

} 
//인터럽트 초기화.
void interrupt_init (void)
    {                      
     EIMSK=0xcf;    //INT0-3,6,7 개별 인터럽트 허가. SREG 레지스터가 허가되야 실제허가.
     EICRA=0xaa;     //INT0-3 하강에지 
     EICRB=0xa0;// int6-7 하강에지
     SREG |= 0X80;  //전체 인터럽트 허가.
     }
      
//인터럽트 내용들  
interrupt [EXT_INT0] void ext_int0_isr(void)
{
   if(mode==1) mode=0;//mode를 on/off
   else mode=1;
}

interrupt [EXT_INT1] void ext_int1_isr(void)//set
{   if(S_W==1) //스탑워치 모드에서.
    {
        if(set==1)//set을 누르면 화면 멈춤.
        {
        set=0; //set이 0이되면 비교일치 인터럽트가안돌아가서 화면이멈춤. 
        }
       else set=1; 
    }
    else{//스탑워치 이외의 set동작시
        if(set==0) set=1; //set
        else set=0;
        set_count++;  //자릿수 변경.
    }
}

interrupt [EXT_INT2] void ext_int2_isr(void)
{
    up=1;     //up 
    //up_count++;
    if(alram_set){ //알람일때만쓰기.
    count++;
    if(count==4)
    {
    count=1;
    }  
    }
}  
interrupt [EXT_INT3] void ext_int3_isr(void)
{
    down=1;         //down   
    //down_count++; 
    if(alram_set) //알람모드시 카운트 값 감소.
    {      
    if(count>0){
    count--; 
    if(count==0) count=1;
    }
}
}
interrupt [EXT_INT6] void ext_int6_isr(void)//알람설정 인터럽트
{
    if(alram_set==1) alram_set=0;   
    else alram_set=1;
}
interrupt [EXT_INT7] void ext_int7_isr(void)//스탑워치 인터럽트
{
    if(S_W==1) S_W=0;   
    else if (S_W==0) S_W=1;
}

void Play_Screen(void)  //세그먼트 출력 함수.
{
        PORTE=Port_fnd[0];
        PORTB=Port_char[hour/10]; 
        delay_ms(10);
        
        PORTE=Port_fnd[1];
        PORTB=Port_char[hour%10];               
        delay_ms(1);

         
        PORTE=Port_fnd[2] ;
        PORTB=Port_char[min/10];
        delay_ms(1);
    
        PORTE=Port_fnd[3];
        PORTB=Port_char[min%10]; 
        delay_ms(1);
        
        PORTE=Port_fnd[4] ;
        PORTB=Port_char[sec/10];
        delay_ms(1);
    
        PORTE=Port_fnd[5];
        PORTB=Port_char[sec%10];
        delay_ms(1); 
}

//아래 2개는 부저를 위한 함수.
void Mydelay_us(int delay)
{
    int i=0;
    for(i=0;i<delay;i++)
    {
        delay_us(1); 
        Play_Screen();//부저작동될동안 화면보여줌.
    }
}
void Buzzer(int time)
{
    unsigned int i=0;
    for(i=0;i<time;i++)
    {
      PORTG|=(1<<4);
      Mydelay_us(time);
      PORTG &=~(1<<4);
      Mydelay_us(time);
    }   
} 

void Chage_Time(void) //mode 인터럽트 발생시(mode=1);
{ 
set_count=1;
up=0;//updown은 항상 0부터 시작하게.
down=0;    
while(mode==1){ //모드 1이면 모드를 풀때까지(한번더 누를때까지) 루프
 S_W=0;//스탑워치 인터럽트 방지.
 set=0;
  
 if(set_count==1)//일의자리  
 {
    if(up){
    sec++; //시간 1초단위증가 
    up=0;  //다시 초기화.
    }
    else if (down){     
    sec--;     
    down=0;  //다시 초기화.
    }
 }
 if(set_count==2) 
 {
    if(up){ 
    up=0;
    sec=sec+10; //시간10초단위 
    if(sec>60)
    {
    sec=sec%10;//한계값 지정.
    min++;
    }
    }
    else if (down) 
    {    
    sec=sec-10;
    down=0; 
    }
 }
 if(set_count==3) 
 {
    if(up){ 
    up=0;
    min++; 
    }
    else if (down) 
    {
    min--;
    down=0; 
    }
 }
 if(set_count==4) 
 {
    if(up){ 
    up=0;
    min=min+10;
    if(min>=60)
    {
    min=min%10;
    hour++;
    }
    }
    else if (down){
    min=min-10;  
    down=0; 
    }
 }
 if(set_count==5) 
 {
    if(up) 
    {
    hour=hour+1; 
    if(hour>24)
    {
    hour=hour/10;
    }
    up=0;
    }
    else if (down)
    {hour--;
    down=0;
    }
 }
 if(set_count==6) 
 {
    if(up) 
    {
    hour=hour+10; 
    if(hour>24)
    {
    hour=hour%10;
    }
    up=0;
    }
    else if (down)
    {
    hour=hour-10;
    down=0;
    }
 }
 if(set_count==7){set_count=1;}//7넘어가면 다시 1의 자릿수부터. 
 
 Play_Screen();  //while 진행할동한 시간보여줌.
}
set_count=1; //나갈때 다시 초기화.
up=0;   //알람설정완료시 화면 바뀌는것 방지.
}

void Set_Alram(void) //알람 설정 함수.
{
//현재 시간을 저장. 이때 pre를 1로설정하면  pre_sec,min,hour가 시계처럼 값이 증가.
pre=1 ;
pre_sec=sec;
pre_min=min;
pre_hour=hour;
//화면 초기화
sec=0;
min=0;
hour=0;
count=1;
alram_on=0;
up=0;//updown은 항상 0부터 시작하게.
down=0;
while(alram_set==1)
{
    S_W=0;  //스탑워치 방지   
    set=0;  //set초깃값 유지용.  
    if(count==1) //1번 알람 
    {    
        if(mode)// 알람에서 모드키 누르면 알람 시간 설정.
        { 
        Chage_Time(); //mode을 누르면 시간 설정하는 함수call.
        count=1;//모드 설정 끝나고 화면 이동 방지.  
        //알람 설정이 끝나면 해당 알람 시간을 준비한 배열에 넣어줍니다. 
        alram1[0]=sec;
        alram1[1]=min;
        alram1[2]=hour;   

        set=0;//다음알람에서 시간설정할 때 set을 0으로 하기 위해 초기화시키고 나감.   
        }      
        //알람설정 모드를 탈출하기 전까지 현재 설정된 알람 시간을 표기해줍니다. 
        sec=alram1[0];
        min=alram1[1];
        hour=alram1[2];
        Play_Screen();                    
    }
    if(count==2)  //2번 알람.
    { 
        if(mode)
        {
         Chage_Time(); //set을 누르면 시간 설정하는 함수call 
         count=2;
        //시간설정끝나면 set을 0으로 해주고 설정한 시간을 보여줌.
        
        alram2[0]=sec;
        alram2[1]=min;
        alram2[2]=hour;
        set=0;
        }
        
        sec=alram2[0];
        min=alram2[1];
        hour=alram2[2];
        Play_Screen();       
    }
    if(count==3) //3번 알람
    {   
        if(mode) 
        { 
        Chage_Time(); //set을 누르면 시간 설정하는 함수call  
        count=3;
        //시간설정끝나면 set을 0으로 해주고 설정한 시간을 보여줌.
        set=0;   
        alram3[0]=sec;
        alram3[1]=min;
        alram3[2]=hour; 
        }  
    
        sec=alram3[0];
        min=alram3[1];
        hour=alram3[2];
        Play_Screen();   
    }

}
//알람모드를 종료할 때 백그라운드에서 돌아가고 있던 시간을 다시 표기하기위해 가져옵니다.  
pre=0;
sec=pre_sec;
min=pre_min;
hour=pre_hour;
alram_on=1;
mode=0; //인터럽트 초기화
}
void Stop_Watch(void)
{
//화면 초기화 하기전에 현재 시간저장 
pre=1;
pre_sec=sec;
pre_min=min;
pre_hour=hour;
sec=0;
min=0;
hour=0;
set=0;
while(S_W==1)// 7번 버튼 누르기전까지 반복.
{
alram_set=0; //스탑워치 중에는 무시하기위해.
mode=0; //모드 간섭 제거용 
Play_Screen();
}
//빠져나갈시 원래 진행중인 시간값을 가져옴.
pre=0;
sec=pre_sec;
min=pre_min;
hour=pre_hour;
}  


          
void main(void)
{
    cnt_2 =0; 
    init_port();
    init_timer2();  
    interrupt_init();
    while(1)
    {         
        if(mode){ Chage_Time();} 
        if(alram_set){Set_Alram();}
        if(S_W){Stop_Watch();}
        //1번알람시   
        if(alram_on==1&&sec==alram1[0] &&  min ==alram1[1]&&hour==alram1[2])
        {  
            Buzzer(2000);  //30초
        }
       //2번 알람시    
        if(alram_on==1&&sec==alram2[0] &&  min ==alram2[1]&&hour==alram2[2])
        {             
            Buzzer(2000);
        }
        //3번 알람시 
        if(alram_on==1&&sec==alram1[0] &&  min ==alram1[1]&&hour==alram1[2])
        {       

            Buzzer(2000);
        }
                                
        Play_Screen();
    }
  }