#include<stdio.h>
#include<sys/types.h>
#include<sys/socket.h>
#include<string.h>
#include<netdb.h>
#define port 80
int main(){
  int sockid,comm_sock;
  char str[100];
  sockid=socket(AF_INET,SOCK_STREAM,0);
  struct sockaddr_in serveraddr;
  serveraddr.sin_family=AF_INET;
  serveraddr.sin_port=htons(port);
  serveraddr.sin_addr.s_addr=htonl(INADDR_ANY);
  bind(sockid,(struct sockaddr*)&serveraddr,sizeof(serveraddr));
  listen(sockid,10);
  char *htmlr="HTTP/1.1 200 OK\n Content-Type:text/html\n Content-Length:72 \n\n <!Doctype HTML><HTML><body><h1>hello</h1></body></HTML>";
  while(1){
    comm_sock=accept(sockid,(struct sockaddr*)NULL,NULL);
    recv(comm_sock,str,100,0);
    printf("received-%s",str);
    send(comm_sock,htmlr,strlen(htmlr),0);
    printf("sent");
    close(comm_sock);
    }
}