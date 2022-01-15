#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <string.h>
#define MAX_DIGIT 4
#define FND_DEVICE "/dev/fpga_fnd"

int main(int argc, char** argv)

{
	int dev;
	unsigned char data[4];
	unsigned char retval;
	int i;
	int str_size;
	int a;
	memset(data, 0, sizeof(data));

	if (argc != 2) {
		printf("please input the parameter! \n");
		printf("ex)./test_led a1\n");

		return -1;

	}
	str_size = (strlen(argv[1]));

	if (str_size > MAX_DIGIT)

	{
		printf("Warning! 4 Digit number only! \n");
		str_size = MAX_DIGIT;
	}
	for (i = 0; i < str_size; i++)

	{

		if ((argv[1][i] < 0x30) || (argv[1][i]) > 0x39) {

			printf("Error! Invalid Value!\n");

			return -1;

		}

		data[i] = argv[1][i] - 0x30; //ASCII?

	}



	dev = open(FND_DEVICE, O_RDWR);

	if (dev < 0) {

		printf("Device open error : %s\n", FND_DEVICE);

		exit(1);
	}
	while (1) {
		// write(전송할 곳, 전송할 데이터를 가지고 있는 버퍼 위치, 전송할 바이트수)
		retval = write(dev, &data, 4);//이거가 디바이스에 값을 나타낸다.핵심은 data의 값을 넣어 준다.
		if (retval < 0) {
			printf("Write Error!\n");
			return -1;

		}
		memset(data, 0, sizeof(data)); //메모리 값을 세팅한다. 즉 data를 0으로 세팅한다.
		sleep(1);
		retval = read(dev, &data, 4); // dev에서부터 data에 4바이트 내용을 읽어온다.
		if (retval < 0) {
			printf("Read Error!\n");

			return -1;

		}

		data[3] = data[3] + 0x01;//읽어 온 데이터를 +1 시켜준다.

		//아래 부터가 세그먼트 값 증가 부분
		if (data[3] == 10) {
			data[3] = 0x00;
			data[2] += 0x01;
			if (data[2] == 10) {
				data[2] = 0x00;
				data[1] += 0x01;
				if (data[1] == 10) {
					data[1] = 0x00;
					data[0] += 0x01;

					if (data[0] == 10) {
						data[0] = 0x00;

						//data[0],data[2],data[1],data[3]=0x00;

					}

				}

			}

		}
		printf("Current FND Value : "); //증가된 값을 출력해서 보여준다.
		for (i = 0; i < str_size; i++)
			printf("%d", data[i]);
		printf("\n");

	}

	close(dev);

	return(0);



}