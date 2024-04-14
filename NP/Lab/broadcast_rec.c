#include<stdio.h>
#include<sys/socket.h>
#include<sys/types.h>
#include<netdb.h>
#include<stdlib.h>
#include<string.h>
#include<netinet/in.h>

int main()
{
char buff[100];
int socket_id=socket(AF_INET,SOCK_DGRAM,0);
struct sockaddr_in recv_address,server_address;
recv_address.sin_family=AF_INET;
recv_address.sin_addr.s_addr=htonl(INADDR_ANY);
recv_address.sin_port=htons(2200);
int a=1;
setsockopt(socket_id,SOL_SOCKET,SO_REUSEADDR,&a,sizeof(a));
bind(socket_id,(struct sockaddr*)&recv_address,sizeof(recv_address));
int clen=sizeof(server_address);
recvfrom(socket_id,buff,100,0,(struct sockaddr*)&server_address,&clen);
printf("%s \n",buff);
close(socket_id);
}