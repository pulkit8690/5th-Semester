#include<stdio.h>
#include<sys/socket.h>
#include<netdb.h>
#include<sys/types.h>
#include<string.h>
int main()
{
int connection_socket;
char message[100];
int socket_id=socket(AF_INET,SOCK_STREAM,0);

struct sockaddr_in server_address,client_address;
server_address.sin_family=AF_INET;
server_address.sin_addr.s_addr=htonl(INADDR_ANY);
server_address.sin_port=htons(2200);

bind(socket_id,(struct sockaddr*)&server_address,sizeof(server_address));

listen(socket_id,10);

while(1)
{
connection_socket=accept(socket_id,(struct sockaddr*)NULL,NULL);
while(1)
{
recv(connection_socket,message,100,0);
printf("Received Message from Client: %s\n",message);
if(strncmp("exit",message,4)==0)
{
printf("Client Exited");
break;
}
fgets(message,100,stdin);
send(connection_socket,message,strlen(message),0);
if(strncmp("exit",message,4)==0)
{
printf("Client Exited");
break;
}
}
if(strncmp("exit",message,4)==0)
{
printf("Client Exited");
break;
}
close(connection_socket);
}
return 0;
}
