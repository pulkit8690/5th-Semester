#include<stdio.h>
#include<sys/socket.h>
#include<netdb.h>
#include<sys/types.h>
#include<string.h>

int main(){
	int comm_sock;
	char str[100];
	int sockid = socket(AF_INET,SOCK_STREAM, 0);
	struct sockaddr_in S_address, C_address;
	
	S_address.sin_family = AF_INET;
	S_address.sin_addr.s_addr = htonl(INADDR_ANY);
	S_address.sin_port = htons(2200);
	
	bind(sockid, (struct sockaddr*)&S_address, sizeof(S_address));
	listen(sockid,10);

	while(1){
	
		comm_sock = accept(sockid, (struct sockaddr*)NULL, NULL);
		
			while(1){
				recv(comm_sock, str,100,0);
				printf("received from client: %s",str);
                             	if(strncmp("exit",str,4) == 0){
					printf("Exited\n");				
					break;
				}
				fgets(str,100, stdin);
				send(comm_sock,str,strlen(str),0);
				
				
				
		}
		close(comm_sock);
	}
	
	return 0;
}
