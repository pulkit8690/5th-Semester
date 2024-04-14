#include<stdio.h>
#include<sys/socket.h>
#include<netdb.h>
#include<sys/types.h>
#include<string.h>
int main()
{
int socket_id;
char buffer[100];
//Socket Creation
socket_id=socket(AF_INET,SOCK_DGRAM,0);
//Specifying Address
struct sockaddr_in server_address,client_address;
server_address.sin_family=AF_INET;
server_address.sin_addr.s_addr=htonl(INADDR_ANY);
server_address.sin_port=htons(2200);
//Bind
bind(socket_id,(struct sockaddr*)&server_address,sizeof(server_address));

//Buffer Empty
bzero(buffer,100);
printf("Enter Message: ");
int n=0;
while((buffer[n++]=getchar())!='\n');
sendto(socket_id,buffer,sizeof(buffer),0,(struct sockaddr*)&server_address,sizeof(server_address));
printf("Echo Back is: %s",buffer);
close(socket_id);
}
