#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <pthread.h> //Thread Library
#define SERV_IP "220.149.128.103"
#define USER1_IP "220.149.128.101"
#define USER2_IP "220.149.128.102"
#define SERV_PORT 4470
#define BACKLOG 10

#define INIT_MSG  "======================\n Hello! I'M P2P File sharing Server.. \n Please, LOG-In \n =======================\n"
#define USER1_ID  "user1"
#define USER1_PW  "passwd1"
#define USER2_ID  "user2"
#define USER2_PW  "passwd2"
#define USER3_ID  "user3"
#define USER3_PW  "passwd3"
#define LOGINFAIL "#Already in use"
#define EXIT "#exit"

int user_sck[100] = { 0 }; //접속 가능 유저수
int status;
pthread_t p_thread[5];//스레드 갯수 설정.
int new_fd;

int Chatting_flag1 = 0;
int Chatting_flag2 = 0;
int Chatting_flag3 = 0;
char P2P_IP1[30] = { 0 };
char P2P_IP2[30] = { 0 };
char P2P_PORT1[30] = { 0 };
char P2P_PORT2[30] = { 0 };
char P2P_PORT3[30] = { 0 };
char P2P_IP3[30] = { 0 };
int SCK_NUM = 0;

int user1_Flag = 0;	//0이 아직 로그인 안한상태
int user2_Flag = 0;
int user3_Flag = 0;


pid_t pid;

void* ChattingRoom(void* arg)
{
	/*int rcv_len1, rcv_len2;
	if (Chatting_flag1 == 1 && Chatting_flag2 == 1)
	{
	while (1) {
	if ((rcv_len1 = recv(user_sck[0], msg, sizeof(msg), 0)) >= 0)
	{
	printf("%s\n", msg);
	send(user_sck[1], msg, sizeof(msg), 0);
	}
	else if ((rcv_len2 = recv(user_sck[1], buf, sizeof(buf), 0)) >= 0)
	{
	printf("%s\n", buf);
	send(user_sck[0], buf, sizeof(buf), 0);
	}

	}
	}*/
}

void* ChattingRoom1(void* arg)
{
	int rcv_len1;
	int rcv_len2;
	char msg[512] = { 0 };



	while (1)
	{
		char msg[512] = { 0 };
		char check[10] = { 0 };
		if ((rcv_len1 = recv(user_sck[0], msg, sizeof(msg), 0)) >= 0)
		{
			if (strcmp(msg, EXIT) == 0)
			{
				printf("All Cilents and Server are Closed!\n");
				for (int i = 0; i<SCK_NUM; i++) {
					send(user_sck[i], "#exit", 10, 0);
				}
				exit(0);
			}
			else if (strcmp(msg, "#quit") == 0)
			{
				close(user_sck[0]);
				user1_Flag = 0;
				printf("User1 Log out\n");
				break;
			}
			else if (strcmp(msg, "[File]") == 0)
			{
				rcv_len1 = recv(user_sck[0], check, sizeof(check), 0);
				if (strcmp(check, "user2") == 0)
				{
					send(user_sck[1], "[File]", 10, 0);
					send(user_sck[1], P2P_PORT1, sizeof(P2P_PORT1), 0);
					send(user_sck[1], P2P_IP1, sizeof(P2P_IP1), 0);
					rcv_len1 = recv(user_sck[0], check, sizeof(check), 0);
				}
				else if (strcmp(check, "user3") == 0)
				{

					send(user_sck[2], "[File]", 10, 0);
					send(user_sck[2], P2P_PORT1, sizeof(P2P_PORT1), 0);
					send(user_sck[2], P2P_IP1, sizeof(P2P_IP1), 0);
					rcv_len1 = recv(user_sck[0], check, sizeof(check), 0);
				}
				else
				{
					rcv_len1 = recv(user_sck[0], check, sizeof(check), 0);
					printf("Wrong INFO\n");
				}
				//rcv_len1 = recv(user_sck[0], check, sizeof(check), 0);

			}
			else {
				char add1[512] = "[USER1]:";
				printf("%s\n", msg);
				strcat(add1, msg);//수신한 메시지 앞에 mfg붙음 
				for (int i = 0; i < SCK_NUM; i++) {
					if (i != 0) {
						send(user_sck[i], add1, sizeof(add1), 0);
					}
				}
				add1[0] = '\0';//배열내용 지움=> strcat때문에 계속 불어나는것 방지.
			}
		}
	}
}


void* ChattingRoom2(void* arg)
{
	int rcv_len2;


	//char add1[];
	while (1) {
		char buf[512] = { 0 };
		char check[10] = { 0 };
		if ((rcv_len2 = recv(user_sck[1], buf, sizeof(buf), 0)) >= 0) //유저 2의 주소에서 오는걸 확인함.
		{
			if (strcmp(buf, EXIT) == 0)
			{
				printf("All Cilents and Server are Closed!\n");
				for (int i = 0; i<SCK_NUM; i++) {
					send(user_sck[i], "#exit", 10, 0);
				}
				exit(0);
			}
			else if (strcmp(buf, "#quit") == 0)
			{
				close(user_sck[1]);
				user2_Flag = 0;
				printf("User2 Log out\n");
				break;
			}
			else if (strcmp(buf, "[File]") == 0)
			{
				rcv_len2 = recv(user_sck[1], check, sizeof(check), 0);
				if (strcmp(check, "user1") == 0)
				{

					send(user_sck[0], "[File]", 10, 0);
					send(user_sck[0], P2P_PORT2, sizeof(P2P_PORT2), 0);
					send(user_sck[0], P2P_IP2, sizeof(P2P_IP2), 0);
					rcv_len2 = recv(user_sck[1], check, sizeof(check), 0);
				}
				else if (strcmp(check, "user3") == 0)
				{

					send(user_sck[2], "[File]", 10, 0);
					send(user_sck[2], P2P_PORT2, sizeof(P2P_PORT2), 0);
					send(user_sck[2], P2P_IP2, sizeof(P2P_IP2), 0);
					rcv_len2 = recv(user_sck[1], check, sizeof(check), 0);
				}
				else
				{
					rcv_len2 = recv(user_sck[1], check, sizeof(check), 0);
					printf("Wrong INFO\n");
					
				}
				

				//send(user_sck[0], "[File]", 10, 0);					
				//send(user_sck[0], P2P_PORT2, sizeof(P2P_PORT2), 0);				
				//send(user_sck[0], P2P_IP2, sizeof(P2P_IP2), 0);


			}
			else {
				char add1[512] = "[USER2]:"; //계속해서 초기화를 위해.
											 //if (buf == "#quit") {
											 //	exit(0);
											 //}
				printf("%s\n", buf);
				strcat(add1, buf);//수신한 메시지 앞에 mfg붙음 
				for (int i = 0; i < SCK_NUM; i++) {
					if (i != 1) {
						send(user_sck[i], add1, sizeof(add1), 0);
					}
				}
				add1[0] = '\0';//문자열 비움 => strcat때문에 계속 불어나는것 방지.
			}
		}
		//else {
		//buf[0] = '\0';
		//	}

	}
}

void* ChattingRoom3(void* arg)
{
	int rcv_len2;


	//char add1[];
	while (1) {
		char buf[512] = { 0 };
		char check[10] = { 0 };
		if ((rcv_len2 = recv(user_sck[2], buf, sizeof(buf), 0)) >= 0) //유저 2의 주소에서 오는걸 확인함.
		{
			if (strcmp(buf, EXIT) == 0)
			{
				printf("All Cilents and Server are Closed!\n");
				for (int i = 0; i<SCK_NUM; i++) {
					send(user_sck[i], "#exit", 10, 0);
				}
				exit(0);
			}
			else if (strcmp(buf, "#quit") == 0)
			{
				close(user_sck[2]);
				user3_Flag = 0;
				printf("User3 Log out\n");
				break;
			}
			else if (strcmp(buf, "[File]") == 0)
			{
				rcv_len2 = recv(user_sck[2], check, sizeof(check), 0);
				if (strcmp(check, "user1") == 0)
				{

					send(user_sck[0], "[File]", 10, 0);
					send(user_sck[0], P2P_PORT3, sizeof(P2P_PORT3), 0);
					send(user_sck[0], P2P_IP3, sizeof(P2P_IP3), 0);
					rcv_len2 = recv(user_sck[2], check, sizeof(check), 0);

				}
				else if (strcmp(check, "user2") == 0)
				{

					send(user_sck[1], "[File]", 10, 0);
					send(user_sck[1], P2P_PORT3, sizeof(P2P_PORT3), 0);
					send(user_sck[1], P2P_IP3, sizeof(P2P_IP3), 0);
					rcv_len2 = recv(user_sck[2], check, sizeof(check), 0);
				}
				else
				{
					rcv_len2 = recv(user_sck[2], check, sizeof(check), 0);
					printf("Wrong INFO\n");
					
				}
				

			}
			else {
				char add1[512] = "[USER3]:"; //계속해서 초기화를 위해.
				printf("%s\n", buf);
				strcat(add1, buf);//수신한 메시지 앞에 mfg붙음 
				for (int i = 0; i < SCK_NUM; i++) {
					if (i != 2) {
						send(user_sck[i], add1, sizeof(add1), 0);
					}
				}			
				add1[0] = '\0';//문자열 비움 => strcat때문에 계속 불어나는것 방지.
			}
		}
		

	}
}


void* Log_in_Thread(void* arg) { //로그인 쓰레드	
	char check1[512];
	char check2[512];
	char IP[30];
	char PORT[10];
	int rcv_byte;
	int thread_fd;

	thread_fd = new_fd;
	send(thread_fd, "ID:", 10, 0);
	rcv_byte = recv(thread_fd, check1, sizeof(check1), 0);
	send(thread_fd, "PW:", 10, 0);
	rcv_byte = recv(thread_fd, check2, sizeof(check2), 0);
	printf("\n====\n User Information \n ID:%s, PW:%s \n====\n", check1, check2);
	if (strcmp(check1, USER1_ID) == 0 && strcmp(check2, USER1_PW) == 0) { //log_in OK?
		if (user1_Flag == 1) {
			send(thread_fd, LOGINFAIL, strlen(LOGINFAIL), 0);
			printf("#####Already exit member#####\n");
		}
		else {
			user1_Flag = 1;	//로그인했다는 의미
			printf("Log-in Success!! [User1]\n");//====Chatting Room====\n>>
			user_sck[0] = thread_fd; //user1의 소켓 번호를 저장함.			
			send(user_sck[0], "Log-in Success!!-Welcome[user1!] \n====Chatting Room====\n>>", 100, 0);
			rcv_byte = recv(user_sck[0], P2P_PORT1, sizeof(P2P_PORT1), 0);
			rcv_byte = recv(user_sck[0], P2P_IP1, sizeof(P2P_IP1), 0);//ip주소받음				

			printf("USER1 Port :%s\n", P2P_PORT1);
			printf("USER1 IP:%s\n", P2P_IP1);
			printf("\n====Chatting Room====\n>>");
			SCK_NUM = SCK_NUM + 1;

			pthread_create(&p_thread[1], NULL, ChattingRoom1, NULL);
		}
	}
	else if (strcmp(check1, USER2_ID) == 0 && strcmp(check2, USER2_PW) == 0) { //log_in OK?	
		if (user2_Flag == 1) {
			send(thread_fd, LOGINFAIL, strlen(LOGINFAIL), 0);
			printf("#####Already exit member#####\n");
		}
		else {
			user2_Flag = 1;	//로그인했다는 의미
			user_sck[1] = thread_fd; //user2의 소켓 번호(new_fd)를 저장함.
			printf("Log-in Success!! [User2]\n");//====Chatting Room====\n>>
			send(user_sck[1], "Log-in Success!!-Welcome[user2!!] \n====Chatting Room====\n>>", 70, 0);

			rcv_byte = recv(user_sck[1], P2P_PORT2, sizeof(P2P_PORT2), 0);
			rcv_byte = recv(user_sck[1], P2P_IP2, sizeof(P2P_IP2), 0);

			printf("USER2 PORT:%s\n", P2P_PORT2);
			printf("USER2 IP:%s\n", P2P_IP2);
			printf("\n====Chatting Room====\n>>");
			SCK_NUM = SCK_NUM + 1;
			pthread_create(&p_thread[2], NULL, ChattingRoom2, NULL);
		}

	}
	else if (strcmp(check1, USER3_ID) == 0 && strcmp(check2, USER3_PW) == 0) { //log_in OK?	
		if (user3_Flag == 1) {
			send(thread_fd, LOGINFAIL, strlen(LOGINFAIL), 0);
			printf("#####Already exit member#####\n");
		}
		else {
			user3_Flag = 1;	//로그인했다는 의미
			user_sck[2] = thread_fd; //user2의 소켓 번호(new_fd)를 저장함.
			printf("Log-in Success!! [User3]\n");//====Chatting Room====\n>>
			send(user_sck[2], "Log-in Success!!-Welcome[user3!!] \n====Chatting Room====\n>>", 70, 0);

			rcv_byte = recv(user_sck[2], P2P_PORT3, sizeof(P2P_PORT3), 0);
			rcv_byte = recv(user_sck[2], P2P_IP3, sizeof(P2P_IP3), 0);

			printf("USER3 PORT:%s\n", P2P_PORT3);
			printf("USER3 IP:%s\n", P2P_IP3);
			printf("\n====Chatting Room====\n>>");
			SCK_NUM = SCK_NUM + 1;
			pthread_create(&p_thread[3], NULL, ChattingRoom3, NULL);
		}
	}
	else {
		send(thread_fd, "Log-in Fail: Incorrect information\n", 50, 0);
		printf("Log-in Fail: incorrect information\n");
	}

}
int main()
{
	char buf[512];
	char msg[512];
	int val = 1;
	int sockfd;
	struct sockaddr_in my_addr;
	struct sockaddr_in their_addr;
	unsigned int sin_size;


	sockfd = socket(AF_INET, SOCK_STREAM, 0); //Make soket!! 
	if (sockfd == -1) {
		perror("Server-socket() error lol!");
		exit(1);
	}
	else printf("Server-socket() sockfd is OK...\n");

	my_addr.sin_family = AF_INET;
	my_addr.sin_port = htons(SERV_PORT);
	my_addr.sin_addr.s_addr = INADDR_ANY;

	memset(&(my_addr.sin_zero), 0, 8);
	if (setsockopt(sockfd, SOL_SOCKET, SO_REUSEADDR, (char*)&val, sizeof(val)) < 0) {
		perror("setsockopt");
		close(sockfd);
		return -1;
	}

	if (bind(sockfd, (struct sockaddr*)&my_addr, sizeof(struct sockaddr)) == -1) //bind
	{
		perror("Server-bind error lol");
		exit(1);
	}
	else printf("Server-bind() is OK...\n");

	if (listen(sockfd, BACKLOG) == -1)
	{
		perror("lisent() error lol!");
		exit(1);
	}
	else printf("listen() is OKOK \n\n");

	sin_size = sizeof(struct sockaddr_in);

	while (1) {
		new_fd = accept(sockfd, (struct sockaddr*)&their_addr, &sin_size);
		//accept받아지면 쓰레드 실행 여기서 new_fd란 새로운 소켓 번호
		printf("\naccept() is OK..\n");
		pthread_create(&p_thread[0], NULL, Log_in_Thread, NULL);

		//close(sockfd); 무한루프 범인

	}
}
