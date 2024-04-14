#include <stdio.h>
#include <netdb.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <string.h>

int main() {
    char buffer[100];
    int socketId = socket(AF_INET, SOCK_DGRAM, 0); // Create a UDP socket

    struct sockaddr_in serverAddress, clientAddress;

    serverAddress.sin_family = AF_INET;
    serverAddress.sin_addr.s_addr = htonl(INADDR_ANY);
    serverAddress.sin_port = htons(2000);

    bind(socketId, (struct sockaddr*)&serverAddress, sizeof(serverAddress)); // Bind socket to server address

    int addrLength = sizeof(clientAddress);

    while (1) {
        bzero(buffer, 100);
        
        // Receive data from the client
        recvfrom(socketId, buffer, sizeof(buffer), 0, (struct sockaddr*)&clientAddress, &addrLength);

        // Display the received data (echo)
        printf("\nEcho back: %s", buffer);

        // Send data back to the client
        sendto(socketId, buffer, sizeof(buffer), 0, (struct sockaddr*)&clientAddress, addrLength);

        // Check if the client wants to exit
        if (strncmp("exit", buffer, 4) == 0) {
            printf("Client exit...\n");
            break;
        }
    }

    close(socketId); // Close the socket
}
