#include<stdio.h>
#include<sys/socket.h>
#include<sys/types.h>
#include<netdb.h>
#include<stdlib.h>
#include<string.h>
#include<netinet/in.h>

int main()
{

int socket_id=socket(AF_INET,SOCK_DGRAM,0);
struct sockaddr_in server_address;
server_address.sin_family=AF_INET;
server_address.sin_addr.s_addr=inet_addr("172.16.118.255");
server_address.sin_port=htons(2200);
int a=1;
setsockopt(socket_id,SOL_SOCKET,SO_BROADCAST,&a,sizeof(a));
char buff[]="Sending Broadcast Message ";
printf("Sending Message\n");
sendto(socket_id,buff,strlen(buff),0,(struct sockaddr*)&server_address,sizeof(server_address));
close(socket_id);
}