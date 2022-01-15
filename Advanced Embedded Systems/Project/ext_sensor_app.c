#include <sys/ioctl.h>

#include <signal.h>

#include <stdio.h>

#include <stdlib.h>

#include <unistd.h>

#include <sys/types.h>

#include <sys/stat.h>

#include <fcntl.h>

#include <time.h>

#include <string.h>

#define PASSWORD 

#define MAX_DIGIT 4

#define FND_DEVICE "/dev/fpga_fnd"

#define MAX_BUTTON 9

#include "./fpga_dot_font.h"

#define FPGA_DOT_DEVICE "/dev/fpga_dot"

#define LED_DEVICE "/dev/fpga_led"

#define FPGA_STEP_MOTOR_DEVICE "/dev/fpga_step_motor"

#define BUZZER_DEVICE "/dev/fpga_buzzer"

 

#define MOTOR_ATTRIBUTE_ERROR_RANGE 4

 

#define MAX_BUFF 32

#define LINE_BUFF 16

#define FPGA_TEXT_LCD_DEVICE "/dev/fpga_text_lcd"

 

unsigned char password_check(unsigned char a[], unsigned char b[],int size);

int set_motor_action(int m1, int m2, int m3);

 

int main(int argc, char **argv) //함수 값 받을 필요가?

 

{

 

    int loop=0;

    int escape=0;

    int i;

    int rand_val=0;

 

    char buf[10] = {0};

    int gas_sensor;

    int dev_ps;

    int dev_fnd;

    int dev_dot;

    int dev_led;

    int str_size;//dot에 넣을 int값?

    int set_num;

    int a;

    int check;

    int check_pass=0;

    unsigned char fnd_data[4];

    unsigned char Password[4]={1,2,3,4};//비밀 번호 미리 정의

    unsigned char sector[8]={1,2,4,8,16,32,64,128};

    int digit=0;

    int buff_size;

    unsigned char retval;

    unsigned char LED_data;

    unsigned char push_sw_buff[MAX_BUTTON]; //버튼 값 읽어 와 저장할 곳.

 

    int str_size_l;//lcd str사이즈 조정

    char str[16]={0}; //lcd str 크기

    unsigned char string[32];//

 

    //int motor_action = 0;

    //int motor_direction = 0;

    //int motor_speed = 0;

 

    //int dev_m; //모터

    int dev_b;//부저

    int dev_l;//lcd

 

 

 

    //unsigned char motor_state[3];

    //memset(motor_state, 0, sizeof(motor_state)); //motor 리셋

 

    unsigned char buzzer_data;

    memset(fnd_data, 0, sizeof(fnd_data)); //data 메모리 리셋    

 

 

    //푸시 스위치디바이스를 열어준다.

 

    dev_ps = open("/dev/fpga_push_switch", O_RDWR);

    if (dev_ps < 0) {

        printf("Device Open Error\n");

        close(dev_ps);

        return -1;

    }

 

    buff_size = sizeof(push_sw_buff);

 

    //Gas Sensor open

 

    gas_sensor = open("/dev/ext_sens", O_RDWR);

    printf("gas_sensor = %d\n", gas_sensor);

    if(gas_sensor<0){

    perror("/dev/ext_sens error");

    exit(-1);

    }else{

    printf("< ext_sens device has been detected >\n");

     }

 

    

    //fnd 디바이스를 열어준다. 그리고 FND 값을 전부 0으로 설정.

    dev_fnd = open(FND_DEVICE, O_WRONLY);

 

    if (dev_fnd < 0) {

        printf("Device open error : %s\n", FND_DEVICE);

        exit(1);

    }

 

    for (i=0;i<sizeof(fnd_data);i++){

        fnd_data[i]=0;

    }

    retval = write(dev_fnd, &fnd_data, 4);

 

 

 

    //Dot 디바이스를 열어줌.

    dev_dot = open(FPGA_DOT_DEVICE, O_WRONLY);

    if(dev_dot<0){

        printf("Device open error : %s\n", FPGA_DOT_DEVICE);

        exit(1);

    }

 

    //LED 디바이스를 열어줌 LED는 구역을 구분할때 사용할 내용임.

    dev_led = open(LED_DEVICE, O_RDWR);

    if(dev_led<0){

        printf("Device open error : %s\n", LED_DEVICE);

        exit(1);

    }

    //LED_data=rand()%7 +1; 확인이 필요한 부분.

  

 

    //부저 open

    dev_b=open(BUZZER_DEVICE, O_RDWR);

    if(dev_b<0)

    {

        printf("Device open error : %s\n",BUZZER_DEVICE);

        exit(1);

    }

 

    //스탭모터

    /*dev_m=open(FPGA_STEP_MOTOR_DEVICE,O_WRONLY);

    if (dev_m<0) 

    {

        printf("Device open error : %s\n",FPGA_STEP_MOTOR_DEVICE);

        exit(1);

    }

    */

    //lcd

    dev_l = open(FPGA_TEXT_LCD_DEVICE, O_WRONLY);

    if(dev_l<0)

    {

        printf("Device open error : %s\n", FPGA_TEXT_LCD_DEVICE);

        exit(1);

    }

 
set_motor_action(1, 0, 10); //추가부분
while (1) 

{

 

 

    usleep(40000);
    read(gas_sensor,buf,10);
    for (i=0; i<sizeof(buf); i++){printf("%c",buf[i]);}
    printf("\n");
    //위의 3줄이 가스 센서의 값을 read 평상시 0 감지시 1

 

    for(loop = 0; loop < 1000000; loop++) {};
    write(dev_b, &buzzer_data, 1);
    memset(string,0,sizeof(string));
    strcpy(str,"Detecting");
    str_size_l=strlen(str);
    strncat(string,str, str_size_l);
    memset(string+str_size_l,' ',LINE_BUFF-str_size_l);
    write(dev_l,string, MAX_BUFF);

    if(buf[0] == '1')// 가스 센서가 탐지됨 

    {   /// LED 켜기.

        rand_val=rand()%8;

        LED_data=sector[rand_val];

        write(dev_led,&LED_data,1);

 

        escape=0;//while문 트리거 함수

 

        printf("Gas Detected!");

        printf("\n");


        buzzer_data = 1;

        write(dev_b, &buzzer_data, 1);

        set_motor_action(0, 0, 10);

        //LCD 화면에 

        memset(string,0,sizeof(string));
        strcpy(str,"Warning Gas");
        str_size_l=strlen(str);
        strncat(string,str, str_size_l);
        memset(string+str_size_l,' ',LINE_BUFF-str_size_l);
        write(dev_l,string, MAX_BUFF);

 

 

 

        while(escape==0)

        { 

        read(dev_ps, &push_sw_buff, buff_size); //PushSwitch 값을 확인

        for (a = 0; a < MAX_BUTTON; a++)//스위치 값 확인

        {

            check = push_sw_buff[a]; //몇 번째 스위치가 1인지 확인

            if (check == 1)//1이 있다? 입력값이 있다 해당 값을 fnd 자릿수에 넣어줌

            {

                check=0;

                fnd_data[digit]=a+1; //확인 필요한 부분.

                retval = write(dev_fnd, &fnd_data, 4);

                digit+=1;

                if (digit>3)

                {

                    check_pass= password_check(fnd_data,Password,4);

                    if(check_pass)//비밀 번호가 맞다면 함수에서 1이 반환 즉 맞다면임

                    {                        
                        str_size = sizeof(fpga_number[8]);//비밀 번호가 맞다면 O를 DOT으로 표시

                        write(dev_dot, fpga_number[8], str_size);//dot 디바이스에 값 나타내기.

                        escape=1;

                    //부저 off

                        buzzer_data = 0;

                        write(dev_b, &buzzer_data, 1);
                        memset(string,0,sizeof(string));
                        strcpy(str,"Password Correct");
                        str_size_l=strlen(str);
                        strncat(string,str, str_size_l);
                        memset(string+str_size_l,' ',LINE_BUFF-str_size_l);
                        write(dev_l,string, MAX_BUFF);
                        set_motor_action(1, 0, 10);

                        LED_data=0x00;
                        write(dev_led,&LED_data,1);
                    }
                    else
                    {
                        str_size = sizeof(fpga_number[9]);//비밀 번호 실패시 X표시 나타내기

                        write(dev_dot, fpga_number[9], str_size);//dot 디바이스에 값 나타내기.
                        memset(string,0,sizeof(string));
                        strcpy(str,"Password Wrong");

                        str_size_l=strlen(str);

                        strncat(string,str, str_size_l);

                        memset(string+str_size_l,' ',LINE_BUFF-str_size_l);

                        write(dev_l,string, MAX_BUFF);

                    }

                    sleep(1);

                    memset(fnd_data, 0, sizeof(fnd_data));

                    digit=0;
                    for(i=0;i<sizeof(fnd_data);i++){fnd_data[i]=0;}                 
                    retval = write(dev_fnd, &fnd_data, 4);  

                }           

            }   

        }

        sleep(1);

        }

 

    }


}

    close(dev_ps);

    close(dev_fnd);

    close(gas_sensor);

    return 0;

}

 

 

 

unsigned char password_check(unsigned char a[], unsigned char b[],int size)

 

{

    int i;

    for (i = 0; i < size; i++)

    {

        if (a[i] != b[i])

        {

            printf("Wrong Password! \n");

            return 0;           

        }

    }

    printf("PassWord Correct\n");

    return 1;

}

 

 

//step_motor option

 

int set_motor_action(int m1, int m2, int m3)

{

        //motor-related variables

    int motor_action = m1;

    int motor_direction = m2;

    int motor_speed = m3;

    unsigned char motor_state[3];

    int dev_m;

    memset(motor_state, 0, sizeof(motor_state));

 

    motor_state[0] = (unsigned char)motor_action;   //./fpga_step_motor  [0] [1] [2] 여기서 [0]은 0은 정지,1은 구동 

    motor_state[1] = (unsigned char)motor_direction;; //[1]은 모터 방향 0은 정지,1은 구동

    motor_state[2] = (unsigned char)motor_speed;      //[2]은 모터 속도로 인자값은 5로 최대 255까지 작동

    dev_m = open(FPGA_STEP_MOTOR_DEVICE, O_WRONLY);

    if (dev_m<0)

    {

        printf("Device open error : %s\n", FPGA_STEP_MOTOR_DEVICE);

        exit(1);

    }

    write(dev_m, motor_state, 3);

    sleep(1);

    close(dev_m);

}
