#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <signal.h>

#include "./fpga_dot_font.h"
#define MAX_BUTTON 9
#define FPGA_DOT_DEVICE "/dev/fpga_dot"
unsigned char quit=0;

void user_signal1(int sig)
{
	quit = 1;
}
int main(int argc, char **argv) //함수 값 받을 필요가?
{
	int i;
	int dev1;
	int dev2;
	int str_size;
	int set_num;
	int a;
	int check;

	int buff_size;
	unsigned char push_sw_buff[MAX_BUTTON]; //버튼 값 읽어 와 저장할 곳.

	//푸시 스위치디바이스를 열어준다.
	dev1 = open("/dev/fpga_push_switch", O_RDWR);

	if (dev1 < 0) {
		printf("Device Open Error\n");
		close(dev1);
		return -1;
	}

	(void)signal(SIGINT, user_signal1);
	buff_size = sizeof(push_sw_buff);

	//DOT 디바이스를 열어준다.
	dev2 = open(FPGA_DOT_DEVICE, O_WRONLY);
	if (dev2 < 0) {
		printf("Device open error : %s\n", FPGA_DOT_DEVICE);
		exit(1);
	}


	while (!quit) {
		usleep(400000);
		read(dev1, &push_sw_buff, buff_size); //디바이스에서 버튼 값을 읽어서 해당 값을 push_sw_buff에 넣어준다. 
		for (a = 0; a < MAX_BUTTON; a++)
		{
			check = push_sw_buff[a]; //몇 번째 스위치가 1인지 확인
			if (check == 1)//1이 있다? 입력값이 있다 입력값이 있으면 dot 작동 즉 이전 값 유지를 위해 필요
			{
				set_num = a+1;
				str_size = sizeof(fpga_number[set_num]);
				write(dev2, fpga_number[set_num], str_size);//dot 디바이스에 값 나타내기.
			}
		}
	
	}



	/*
	if(argc!=2){
		printf("please input the parameter! \n");
		printf("ex)./fpga_dot_test 7 \n");
		return -1; 

	set_num = atoi(argv[1]); //set atio는 문자를 인수로 바꾼다.
	if(set_num<0||set_num>9){
		printf("Invalid Number (0~9) ! \n");
		return -1;
	}*/
	// 이거 필요없을꺼 같은 부분임 입력을 주어지는게 아니라 스위치로 받기 때문임.


	close(dev1);
	close(dev2);
	return 0;
}
