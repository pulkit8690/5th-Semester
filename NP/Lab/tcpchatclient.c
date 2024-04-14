#include<stdio.h>
#include<sys/socket.h>
#include<netdb.h>
#include<sys/types.h>
#include<string.h>
int main()
{
char input_message[100],receive_message[100];

int connection_socket=socket(AF_INET,SOCK_STREAM,0);

struct sockaddr_in server_address;
server_address.sin_family=AF_INET;
server_address.sin_addr.s_addr=inet_addr("127.0.0.1");
server_address.sin_port=htons(2200);

connect(connection_socket,(struct sockaddr*)&server_address,sizeof(server_address));

while(1)
{
printf("Enter Message: ");
fgets(input_message,100,stdin);
send(connection_socket,input_message,strlen(input_message),0);
if(strncmp("exit",input_message,4)==0)
{
printf("Client Exited");
break;
}
recv(connection_socket,receive_message,100,0);
printf("Message From Server: %s",receive_message);
if(strncmp("exit",receive_message,4)==0)
{
printf("Client Exited");
break;
}
}

return 0;
}
