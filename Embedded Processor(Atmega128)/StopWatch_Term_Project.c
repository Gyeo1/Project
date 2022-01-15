#include <mega128.h>
#include <delay.h>

//anode�����̴�.
unsigned char Port_char[]={0xc0,0xf9,0xa4,0xb0,0x99,0x92,0x82,0xd8,0x80,0x90};
unsigned int Port_fnd[]={0x20,0x10,0x08,0x04,0x02,0x01};//fnd �ڸ���
//�˶����� ����� ��������. 
unsigned char alram_set=0;
unsigned char alram_on=0;
unsigned int alram1[]={0,0,0} ;
unsigned int alram2[]={0,0,0} ;
unsigned int alram3[]={0,0,0} ;
//���ͷ�Ʈ���� ���� ������ 
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
//����ð� ����� ���� like Stack.
unsigned char pre=0; //if�� �۵���
unsigned char pre_sec=0;
unsigned char pre_min=0;
unsigned char pre_hour=0;

//Ÿ�̸� 2�ʱ�ȭ. 
void init_timer2(void)
{
TCCR2 |= (1<<WGM21)|(1<<CS21);
TIMSK |=(1<<OCIE2);          //��º� ���ͷ�Ʈ �㰡.
TIFR=0xff; //Ÿ�̸� ī���� 0,2 ���ͷ�Ʈ Ŭ����.
OCR2=99; //0~100���� ī��Ʈ.  50us
SREG|=0x80;
}
//��Ʈ �ʱ�ȭ.
void init_port(void)  
{
    DDRE=0x3f; //������ ����2��Ʈ �Է�(���ͷ�Ʈ),. ������ 6��Ʈ�� ���(SEGǥ���)
    DDRB=0xff; //led���
    DDRD=0x00; //��ư(���ͷ�Ʈ)�� ���� �ʱ�ȭ.   
    DDRG |=(1<<4); //������Ʈ on
}
//Ÿ�̸�ī���� 2 ����ġ ���ͷ�Ʈ 
interrupt [TIM2_COMP] void timer2_out_comp(void)
{   if(!mode){   //���� ��ž
    if(!S_W||set){  //��ž��ġ ���� stop set������ �� ��
    if(!alram_set){ //���, ��ž��ġ ,�˶��� ������ �ٷ� ��ž
    cnt_2++; // ���ͷ�Ʈ �߻����� ī��Ʈ 1������.    
    if(cnt_2==2000)
    { //100ms �� ����ȭ
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
    if(pre==1) //���� �ð��� ������ ��׶��忡�� �ð�����.
    { 
    cnt_7++; // ���ͷ�Ʈ �߻����� ī��Ʈ 1������.    
    if(cnt_7==2000)
    { //100ms �� ����ȭ
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
//���ͷ�Ʈ �ʱ�ȭ.
void interrupt_init (void)
    {                      
     EIMSK=0xcf;    //INT0-3,6,7 ���� ���ͷ�Ʈ �㰡. SREG �������Ͱ� �㰡�Ǿ� �����㰡.
     EICRA=0xaa;     //INT0-3 �ϰ����� 
     EICRB=0xa0;// int6-7 �ϰ�����
     SREG |= 0X80;  //��ü ���ͷ�Ʈ �㰡.
     }
      
//���ͷ�Ʈ �����  
interrupt [EXT_INT0] void ext_int0_isr(void)
{
   if(mode==1) mode=0;//mode�� on/off
   else mode=1;
}

interrupt [EXT_INT1] void ext_int1_isr(void)//set
{   if(S_W==1) //��ž��ġ ��忡��.
    {
        if(set==1)//set�� ������ ȭ�� ����.
        {
        set=0; //set�� 0�̵Ǹ� ����ġ ���ͷ�Ʈ���ȵ��ư��� ȭ���̸���. 
        }
       else set=1; 
    }
    else{//��ž��ġ �̿��� set���۽�
        if(set==0) set=1; //set
        else set=0;
        set_count++;  //�ڸ��� ����.
    }
}

interrupt [EXT_INT2] void ext_int2_isr(void)
{
    up=1;     //up 
    //up_count++;
    if(alram_set){ //�˶��϶�������.
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
    if(alram_set) //�˶����� ī��Ʈ �� ����.
    {      
    if(count>0){
    count--; 
    if(count==0) count=1;
    }
}
}
interrupt [EXT_INT6] void ext_int6_isr(void)//�˶����� ���ͷ�Ʈ
{
    if(alram_set==1) alram_set=0;   
    else alram_set=1;
}
interrupt [EXT_INT7] void ext_int7_isr(void)//��ž��ġ ���ͷ�Ʈ
{
    if(S_W==1) S_W=0;   
    else if (S_W==0) S_W=1;
}

void Play_Screen(void)  //���׸�Ʈ ��� �Լ�.
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

//�Ʒ� 2���� ������ ���� �Լ�.
void Mydelay_us(int delay)
{
    int i=0;
    for(i=0;i<delay;i++)
    {
        delay_us(1); 
        Play_Screen();//�����۵��ɵ��� ȭ�麸����.
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

void Chage_Time(void) //mode ���ͷ�Ʈ �߻���(mode=1);
{ 
set_count=1;
up=0;//updown�� �׻� 0���� �����ϰ�.
down=0;    
while(mode==1){ //��� 1�̸� ��带 Ǯ������(�ѹ��� ����������) ����
 S_W=0;//��ž��ġ ���ͷ�Ʈ ����.
 set=0;
  
 if(set_count==1)//�����ڸ�  
 {
    if(up){
    sec++; //�ð� 1�ʴ������� 
    up=0;  //�ٽ� �ʱ�ȭ.
    }
    else if (down){     
    sec--;     
    down=0;  //�ٽ� �ʱ�ȭ.
    }
 }
 if(set_count==2) 
 {
    if(up){ 
    up=0;
    sec=sec+10; //�ð�10�ʴ��� 
    if(sec>60)
    {
    sec=sec%10;//�Ѱ谪 ����.
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
 if(set_count==7){set_count=1;}//7�Ѿ�� �ٽ� 1�� �ڸ�������. 
 
 Play_Screen();  //while �����ҵ��� �ð�������.
}
set_count=1; //������ �ٽ� �ʱ�ȭ.
up=0;   //�˶������Ϸ�� ȭ�� �ٲ�°� ����.
}

void Set_Alram(void) //�˶� ���� �Լ�.
{
//���� �ð��� ����. �̶� pre�� 1�μ����ϸ�  pre_sec,min,hour�� �ð�ó�� ���� ����.
pre=1 ;
pre_sec=sec;
pre_min=min;
pre_hour=hour;
//ȭ�� �ʱ�ȭ
sec=0;
min=0;
hour=0;
count=1;
alram_on=0;
up=0;//updown�� �׻� 0���� �����ϰ�.
down=0;
while(alram_set==1)
{
    S_W=0;  //��ž��ġ ����   
    set=0;  //set�ʱ갪 ������.  
    if(count==1) //1�� �˶� 
    {    
        if(mode)// �˶����� ���Ű ������ �˶� �ð� ����.
        { 
        Chage_Time(); //mode�� ������ �ð� �����ϴ� �Լ�call.
        count=1;//��� ���� ������ ȭ�� �̵� ����.  
        //�˶� ������ ������ �ش� �˶� �ð��� �غ��� �迭�� �־��ݴϴ�. 
        alram1[0]=sec;
        alram1[1]=min;
        alram1[2]=hour;   

        set=0;//�����˶����� �ð������� �� set�� 0���� �ϱ� ���� �ʱ�ȭ��Ű�� ����.   
        }      
        //�˶����� ��带 Ż���ϱ� ������ ���� ������ �˶� �ð��� ǥ�����ݴϴ�. 
        sec=alram1[0];
        min=alram1[1];
        hour=alram1[2];
        Play_Screen();                    
    }
    if(count==2)  //2�� �˶�.
    { 
        if(mode)
        {
         Chage_Time(); //set�� ������ �ð� �����ϴ� �Լ�call 
         count=2;
        //�ð����������� set�� 0���� ���ְ� ������ �ð��� ������.
        
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
    if(count==3) //3�� �˶�
    {   
        if(mode) 
        { 
        Chage_Time(); //set�� ������ �ð� �����ϴ� �Լ�call  
        count=3;
        //�ð����������� set�� 0���� ���ְ� ������ �ð��� ������.
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
//�˶���带 ������ �� ��׶��忡�� ���ư��� �ִ� �ð��� �ٽ� ǥ���ϱ����� �����ɴϴ�.  
pre=0;
sec=pre_sec;
min=pre_min;
hour=pre_hour;
alram_on=1;
mode=0; //���ͷ�Ʈ �ʱ�ȭ
}
void Stop_Watch(void)
{
//ȭ�� �ʱ�ȭ �ϱ����� ���� �ð����� 
pre=1;
pre_sec=sec;
pre_min=min;
pre_hour=hour;
sec=0;
min=0;
hour=0;
set=0;
while(S_W==1)// 7�� ��ư ������������ �ݺ�.
{
alram_set=0; //��ž��ġ �߿��� �����ϱ�����.
mode=0; //��� ���� ���ſ� 
Play_Screen();
}
//���������� ���� �������� �ð����� ������.
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
        //1���˶���   
        if(alram_on==1&&sec==alram1[0] &&  min ==alram1[1]&&hour==alram1[2])
        {  
            Buzzer(2000);  //30��
        }
       //2�� �˶���    
        if(alram_on==1&&sec==alram2[0] &&  min ==alram2[1]&&hour==alram2[2])
        {             
            Buzzer(2000);
        }
        //3�� �˶��� 
        if(alram_on==1&&sec==alram1[0] &&  min ==alram1[1]&&hour==alram1[2])
        {       

            Buzzer(2000);
        }
                                
        Play_Screen();
    }
  }