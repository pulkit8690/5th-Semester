#include<stdio.h>
#include<sys/socket.h>
#include<netdb.h>
#include<sys/types.h>
#include<string.h>

int main(){
	int sockfd;
	struct sockaddr_in S_address;
	char sendline[100], recvline[100];
	sockfd = socket(AF_INET,SOCK_STREAM, 0);
	
	S_address.sin_family = AF_INET;
	S_address.sin_addr.s_addr = inet_addr("127.0.0.1");
	S_address.sin_port = htons(2200);
	
	connect(sockfd, (struct sockaddr*)&S_address ,sizeof(S_address));

	while(1){
		fgets(sendline, 100, stdin);
		send(sockfd, sendline, strlen(sendline), 0);
		if(strncmp("exit",sendline,4) == 0){
			printf("Exited\n");				
			break;
		}
		recv(sockfd, recvline, 100, 0);
		printf("From server: %s", recvline);
		if(strncmp("exit",recvline,4) == 0){
			printf("Exited\n");			
			break;
		}
	}
	return 0;
}
