#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#define SERV_IP		"220.149.128.100"
#define SERV_PORT	4470
int main(int argc, char *argv[ ])
{
	int sockfd; /*will hold the destination addr */
	struct sockaddr_in dest_addr;
	int rcv_byte;
	int rcv_byte2;
	char buf[512];
	char msg[512];
	char check[512];
	char id[20];
	char pw[20];
	sockfd = socket(AF_INET,SOCK_STREAM,0);
	if(sockfd == -1){
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
	memset(&(dest_addr.sin_zero),0,8);
	/*connet */
	if(connect(sockfd,(struct sockaddr *)&dest_addr,sizeof(struct sockaddr)) == -1){
		perror("Client-connect() error 101");
		exit(1);
	}else printf("Client-connet() is OK...\n\n");
	rcv_byte=recv(sockfd,check,sizeof(check),0);
	printf("%s",check);	
	send(sockfd,id,sizeof(id),0);	
	rcv_byte = recv(sockfd,buf,sizeof(buf),0);
	printf("%s",buf);
	scanf("%s",id);
	send(sockfd,id,sizeof(id),0);	
	rcv_byte2 = recv(sockfd,msg,sizeof(msg),0);	
	printf("%s",msg);
	scanf("%s",pw);
	send(sockfd,pw,sizeof(pw),0);
	rcv_byte=recv(sockfd,check,sizeof(check),0);
	printf("%s",check);
	close(sockfd);
	return 0;		
}
