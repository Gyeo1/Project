#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <pthread.h> //Thread Library
#include <dirent.h>
#define SERV_IP		"220.149.128.103"
#define SERV_PORT	4470
#define My_PORT "4473"
#define My_IP "220.149.128.102"
#define BACKLOG 10
#define Login "Log-in Fail: Incorrect information\n"
#define Q "#quit"
#define LOGINFAIL "#Already in use"
#define EXIT "#exit"
pthread_t p_thread[5];//스레드 갯수 설정.
int sockfd; /*will hold the destination addr */
int p2p_flag = 0;
char P2P_PORT[30] = { 0 };
char P2P_IP[30] = { 0 };
char savetxt[30000];

char id[20];
char pw[20];
void filelist(int p2p_sock)
{
	int i = 0;
	int j = 0;
	int rcv_len;
	int size = 0;
	int i_2;
	char Text[10][10] = { 0 };
	char check[10] = { 0 };
	char check2[10] = { 0 };
	char s1[100] = "/home/st2016146007/finaldir";
	char s2[10]="/";
	char s3[10];

	FILE *fp;
	DIR *dir;
	struct dirent *ent;
	dir = opendir(s1);
	

	if (dir != NULL) {

		/* print all the files and directories within directory */
		while ((ent = readdir(dir)) != NULL)
		{
			if (strlen(ent->d_name) > 2) {
				strcpy(Text[i], ent->d_name);
				i++;

			}
		}
		closedir(dir);
	}
	else {
		/* could not open directory */
		perror("");
		return EXIT_FAILURE;
	}
	//작업순서 1. 파일리스트를 보내준다(send) 2.번호를 rcv받는다 3.해당 번호의 txt를 보내준다.
	for (j = 0; j < i; j++) {
		send(p2p_sock, Text[j], 100, 0); //SEND1 반복
		rcv_len = recv(p2p_sock, check2, sizeof(check2), 0);
	}

	send(p2p_sock, "listend", 10, 0);//SEND2
	rcv_len = recv(p2p_sock, check2, sizeof(check2), 0);

	send(p2p_sock, "ACK", 10, 0);//SEND2
	rcv_len = recv(p2p_sock, check, sizeof(check), 0);//RCV1 
	i_2=atoi(check) - 1;
	send(p2p_sock, Text[i_2], 10, 0);//SEND3
	rcv_len = recv(p2p_sock, check2, sizeof(check2), 0);
	////////////////////
	strcat(s1, s2);
	strcat(s1,Text[i_2]);
	
	fp = fopen(s1, "r");
	if (fp == NULL) {
		printf("NO File\n");
		return 0;
	}
	else {
		fseek(fp, 0, SEEK_END);
		size = ftell(fp);
		sprintf(s3, "%d", size);
		send(p2p_sock, s3, sizeof(s3), 0);//SEND4
		rcv_len = recv(p2p_sock, check2, sizeof(check2), 0);
		fseek(fp, 0, SEEK_SET);
		fread(savetxt, size, 1, fp);
		send(p2p_sock, savetxt, sizeof(savetxt), 0); // SEND5
		printf("File read END\n");
		fclose(fp);
	}
	return 0;
}


void Rcv_P2P(int p2p_fd)
{
	int rcv_len;
	int i = 0;
	int j = 0;
	int k = 1;
	char list[10][10] = { 0 };
	char number[10] = { 0 };
	char check[10] = { 0 };
	char txt_name[100] = { 0 };
	char savetxt[30000] = { 0 };
	char size[10];
	FILE *fp;
	while (1)
	{
		rcv_len = recv(p2p_fd, list[i], 100, 0);
		
			if (strcmp(list[i], "listend") == 0) 
			{
				break;
			}
			send(p2p_fd, "ACK", 10, 0);
			i++;
	}
	send(p2p_fd, "ACK", 10, 0);

	for (j = 0; j < i; j++) 
	{
		printf("%d.%s\n",k,list[j]);
		k++;
	}

	rcv_len= recv(p2p_fd, check, sizeof(check), 0);
	printf("select File:");
	gets(number);
	send(p2p_fd, number, sizeof(number), 0);//SEND1
	rcv_len = recv(p2p_fd, txt_name, sizeof(txt_name), 0);//RCV2
	send(p2p_fd, "ACK", 10, 0);
	rcv_len = recv(p2p_fd, size, sizeof(size), 0);//RCV3
	send(p2p_fd, "ACK", 10, 0);
	rcv_len = recv(p2p_fd, savetxt, sizeof(savetxt), 0); //RCV4 
	fp = fopen(txt_name, "w"); //
	fwrite(savetxt, atoi(size), 1, fp);//문자열 size를 정수형으로 변환.
	printf("File Write Finish\n");
	fclose(fp);	
	return 0;
}

void P2P_ServerSet()
{
	char buf[512];
	char msg[512];
	int val = 1;
	struct sockaddr_in my_addr;
	struct sockaddr_in their_addr;
	unsigned int sin_size;
	int p2p_sck;//내가 서버가 될때 소켓번호저장
	int p2p_fd;
	p2p_sck = socket(AF_INET, SOCK_STREAM, 0); //Make soket!! 
	if (p2p_sck == -1) {
		perror("Server-socket() error lol!");
		exit(1);
	}


	my_addr.sin_family = AF_INET;
	my_addr.sin_port = htons(atoi(My_PORT));//atoi는 문자열을 정수형으로 반환 내포트번호로 서버만들어줌
	my_addr.sin_addr.s_addr = INADDR_ANY;

	memset(&(my_addr.sin_zero), 0, 8);
	if (setsockopt(p2p_sck, SOL_SOCKET, SO_REUSEADDR, (char*)&val, sizeof(val)) < 0) {
		perror("setsockopt");
		close(p2p_sck);
	}

	if (bind(p2p_sck, (struct sockaddr*)&my_addr, sizeof(struct sockaddr)) == -1) //bind
	{
		perror("Server-bind error lol");
		exit(1);
	}


	if (listen(p2p_sck, BACKLOG) == -1)
	{
		perror("lisent() error lol!");
		exit(1);
	}

	sin_size = sizeof(struct sockaddr_in);
	p2p_fd = accept(p2p_sck, (struct sockaddr*)&their_addr, &sin_size);
	printf("P2P accept is OK!\n");
	Rcv_P2P(p2p_fd);
	close(p2p_sck);
	return 0;

}



void* P2P_ClientSet()
{
	int p2p_sock;
	struct sockaddr_in dest_addr;
	char buf[512];
	char msg[512];
	char check[512];
	int end;
	p2p_sock = socket(AF_INET, SOCK_STREAM, 0);
	if (p2p_sock == -1) {
		perror("Client-socket() error 103");
		exit(1);
	}
	/*host byte order */
	dest_addr.sin_family = AF_INET;
	/*short, network byte order */
	dest_addr.sin_port = htons(atoi(P2P_PORT));
	dest_addr.sin_addr.s_addr = inet_addr(P2P_IP);
	/*zero the rest of the struct */
	memset(&(dest_addr.sin_zero), 0, 8);
	/*connet */
	if (connect(p2p_sock, (struct sockaddr*)&dest_addr, sizeof(struct sockaddr)) == -1) {
		perror("Client-connect() error 101");
		exit(1);
	}
	else { printf("P2P connect ok\n"); }
	filelist(p2p_sock);//파일 전송하는 거
	close(p2p_sock);
	return 0;

}

void* SendMSG(void* arg)
{
	int end;


	int filemode = 0;
	int rcv_len;
	while (1)
	{
		char buf[512] = { 0 };
		char Check[100] = { 0 };
		char Num[20] = { 0 };
		//scanf("%s", buf);
		//fgets(buf, sizeof(buf), stdin);
		gets(buf);

		if (filemode == 0)
		{
			send(sockfd, buf, sizeof(buf), 0);
			if (strcmp(buf, Q) == 0)
			{
				printf("Good bye User1!\n");
				close(sockfd);
				exit(0);
			}
			else if (strcmp(buf, "[File]") == 0)//내가 file명령어 보냈음?=>recv받는거 기다리고 scanf해줌.
			{
				filemode = 1;
				printf("Where? :");
				//scanf("%s", Num);
				gets(Num);
				//fgets(Num, sizeof(Num), stdin);
				if (strcmp(Num, "user1") == 0 || strcmp(Num, "user2") == 0 || strcmp(Num, "user3") == 0) {
					if (strcmp(Num, id) == 0)
					{
						send(sockfd, Num, sizeof(Num), 0);
						printf("Wrong INFO : Same Id\n");
					}
					else {
						send(sockfd, Num, sizeof(Num), 0);
						P2P_ServerSet();
						//pthread_create(&p_thread[3], NULL, P2P_ServerSet2, NULL);
						//pthread_join(p_thread[3], (void*)&end);//끝날때까지 종료 x
					}

				}
				else {
					send(sockfd, Num, sizeof(Num), 0);
					printf("Wrong INFO by Client\n");
				}
				filemode = 0;
			}
		}
	}


}
//둘이 나누는 이유? 실시간으로 채팅을 받아야하기때문
void* RcvMSG(void* arg)
{
	int rcv_len1;
	char msg[512] = { 0 };

	int end;
	while (1) {
		if ((rcv_len1 = recv(sockfd, msg, sizeof(msg), 0)) >= 0)
		{
			if (strcmp(msg, EXIT) == 0)
			{
				printf("All Cilents and Server are Closed!\n");
				close(sockfd);
				exit(0);
			}
			else if (strcmp(msg, "[File]") == 0)
			{//File명령어 받으면 즉각적으로 			
				rcv_len1 = recv(sockfd, P2P_PORT, sizeof(P2P_PORT), 0);
				rcv_len1 = recv(sockfd, P2P_IP, sizeof(P2P_IP), 0);
				printf("%s\n", msg);
				printf("%s\n", P2P_PORT);
				printf("%s\n", P2P_IP);
				P2P_ClientSet();
				//pthread_create(&p_thread[2], NULL, P2P_ClientSet2, NULL);
				//pthread_join(p_thread[2], (void*)&end);//끝날때까지 종료 x

			}
			else {
				printf("%s\n", msg);
			}
		}
	}
}


int main(int argc, char* argv[])
{

	struct sockaddr_in dest_addr;
	int rcv_byte;
	int rcv_byte2;
	char buf[512];
	char msg[512];
	char check[512];

	int end;
	sockfd = socket(AF_INET, SOCK_STREAM, 0);
	if (sockfd == -1) {
		perror("Client-socket() error 103");
		exit(1);
	}
	else printf("Client-socket() sockfd is OK...\n");
	/*host byte order */
	dest_addr.sin_family = AF_INET;
	/*short, network byte order */
	dest_addr.sin_port = htons(SERV_PORT);
	dest_addr.sin_addr.s_addr = inet_addr(SERV_IP);
	/*zero the rest of the struct */
	memset(&(dest_addr.sin_zero), 0, 8);
	/*connet */
	if (connect(sockfd, (struct sockaddr*)&dest_addr, sizeof(struct sockaddr)) == -1) {
		perror("Client-connect() error 101");
		exit(1);
	}
	else { printf("Client-connet() is OK...\n\n"); }

	rcv_byte = recv(sockfd, check, sizeof(check), 0); //ID ReQ
	printf("%s", check);
	//fgets(id,sizeof(id), stdin);//scanf("%s",id)
	gets(id);
	send(sockfd, id, sizeof(id), 0);

	rcv_byte = recv(sockfd, msg, sizeof(msg), 0);	//PASSWD req
	printf("%s", msg);
	//fgets(pw, sizeof(pw), stdin);//scanf("%s",id)
	gets(pw);
	send(sockfd, pw, sizeof(pw), 0);

	rcv_byte = recv(sockfd, check, sizeof(check), 0);//로그인 성공 메시지받음
	printf("%s", check);//Log in 과정.
	if (strcmp(check, Login) == 0)
	{
		exit(0);
	}
	else if (strcmp(check, LOGINFAIL) == 0)
	{
		printf("\n");
		exit(0);
	}
	else
	{
		send(sockfd, My_PORT, 30, 0);//IP주소
									 //rcv_byte = recv(sockfd, check, sizeof(check), 0);
		send(sockfd, My_IP, 30, 0);//IP주소
								   //rcv_byte = recv(sockfd, check, sizeof(check), 0);

								   //rcv_byte = recv(sockfd, check, sizeof(check), 0);

		pthread_create(&p_thread[0], NULL, RcvMSG, NULL);
		pthread_create(&p_thread[1], NULL, SendMSG, NULL);

		pthread_join(p_thread[0], (void*)&end);//끝날때까지 종료 x
		pthread_join(p_thread[1], (void*)&end);//끝날때까지 종료 x

		close(sockfd);
		return 0;
	}
}
