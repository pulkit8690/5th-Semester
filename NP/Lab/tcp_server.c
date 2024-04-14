#include<stdio.h>
#include<sys/socket.h>
#include<netdb.h>
#include<sys/types.h>
#include<string.h>
int main()
{
int connection_socket;
char message[100];
//Socket Creation
int socket_id=socket(AF_INET,SOCK_STREAM,0);
//Specifying Address
struct sockaddr_in server_address,client_address;
server_address.sin_family=AF_INET;
server_address.sin_addr.s_addr=htonl(INADDR_ANY);
server_address.sin_port=htons(2200);
//Bind
bind(socket_id,(struct sockaddr*)&server_address,sizeof(server_address));
//listen
listen(socket_id,10);
while(1)
{
//accept
connection_socket=accept(socket_id,(struct sockaddr*)NULL,NULL);
//Receive
recv(connection_socket,message,100,0);
printf("Received Message: %s",message);
//Send
send(connection_socket,message,strlen(message),0);
//Close
close(connection_socket);
}
return 0;
}
