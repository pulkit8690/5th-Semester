#include <stdio.h>
#include <netdb.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <string.h>

int main() {
    char buffer[100];
    int socketId = socket(AF_INET, SOCK_DGRAM, 0); // Create a UDP socket

    struct sockaddr_in serverAddress, clientAddress;

    // Set up the server address
    serverAddress.sin_family = AF_INET;
    serverAddress.sin_addr.s_addr = htonl(INADDR_ANY);
    serverAddress.sin_port = htons(2000);

    // Bind the socket to the server address
    bind(socketId, (struct sockaddr*)&serverAddress, sizeof(serverAddress));

    int addrLength = sizeof(serverAddress);

    bzero(buffer, 100);
    printf("Enter: ");
    int n = 0;
    
    // Read input from the user until they press Enter
    while ((buffer[n++] = getchar()) != '\n');

    // Send the input to the server
    sendto(socketId, buffer, sizeof(buffer), 0, (struct sockaddr*)&serverAddress, addrLength);

    // Display the received data (echo)
    printf("\nEcho back is: %s", buffer);

    // Close the socket
    close(socketId);
}
