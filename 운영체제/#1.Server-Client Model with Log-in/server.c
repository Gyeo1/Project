#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>

#define SERV_IP "220.149.128.100"
#define SERV_PORT 4470
#define BACKLOG 10

#define INIT_MSG  "======================\n Hello! I'M P2P File sharing Server.. \n Please, LOG-In \n =======================\n"
#define USER1_ID  "user1"
#define USER1_PW  "passwd1"
#define USER2_ID  "user2"
#define USER2_PW  "passwd2"

int main()
{
	
	int sockfd, new_fd;
	struct sockaddr_in my_addr;
	struct sockaddr_in their_addr;
	unsigned int sin_size;
	int rcv_byte;
	char buf[512];
	int rcv_byte1;
	char id[20];
	char pw[20];
	char msg[512];
	char success[512];
	int val=1;
	pid_t pid;
	sockfd=socket(AF_INET, SOCK_STREAM, 0);
	if (sockfd ==-1){
		perror("Server-socket() error lol!");
		exit(1);
	}
	else printf("Server-socket() sockfd is OK...\n");

	my_addr.sin_family=AF_INET;
	my_addr.sin_port=htons(SERV_PORT);
	my_addr.sin_addr.s_addr=INADDR_ANY;

	memset(&(my_addr.sin_zero),0,8);
	if(setsockopt(sockfd,SOL_SOCKET,SO_REUSEADDR,(char*)&val,sizeof(val))<0){
		perror("setsockopt");
		close(sockfd);
		return -1;
	}

	if(bind(sockfd,(struct sockaddr *)&my_addr, sizeof(struct sockaddr))==-1)
	{
		perror("Server-bind error lol");
		exit(1);
	}
	else printf("Server-bind() is OK...\n");

	if(listen(sockfd, BACKLOG)==-1)
	{
		perror("lisent() error lol!");
		exit(1);
	}
	else printf("listen() is OKOK \n\n");

	sin_size=sizeof(struct sockaddr_in);
	while(1){  

		new_fd=accept(sockfd,(struct sockaddr *)&their_addr, &sin_size);
		printf("\naccept() is OK..\n");
		pid=fork();	// start Fork
		if (pid==0)//child
		{	
			send(new_fd,"ID:",10,0);				
			rcv_byte=recv(new_fd,buf,sizeof(buf),0);				
			send(new_fd,"PW:",10,0);			
			rcv_byte=recv(new_fd,msg,sizeof(msg),0);			
			printf("\n====\n User Information \n ID:%s, PW:%s \n====\n",buf,msg);
			
			if(strcmp(buf,USER1_ID)==0&&strcmp(msg,USER1_PW)==0){ //log_in OK?
				printf("Log-in Success!! [User1]");
				send(new_fd,"Log-in Success!! [User1]\n",50,0);
				break;
			}
				
			else if(strcmp(buf,USER2_ID)==0&&strcmp(msg,USER2_PW)==0){ //log_in OK?			
				printf("Log-in Success!! [User2]\n");				
				send(new_fd,"Log-in Success!! [User2]\n",50,0);
				break;
			}
			else{				
				send(new_fd,"Log-in Fail: Incorrect information\n",50,0);	
				printf("Log-in Fail: incorrect information\n");
				break;
				}
		close(sockfd);
		}
		else //Parent always send Hello!
		{
			send(new_fd,INIT_MSG,strlen(INIT_MSG)+1,0);
			rcv_byte=recv(new_fd,msg,sizeof(msg),0);			
			close(new_fd);
		}
}
return 0;
}
