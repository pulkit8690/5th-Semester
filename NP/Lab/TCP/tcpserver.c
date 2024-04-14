#include <stdio.h>
#include <sys/socket.h>
#include <netdb.h>
#include <sys/types.h>
#include <string.h>

int main() {
    int connection_socket, data_socket; // Sockets for client connection and data transfer
    char message[100]; // Buffer for message

    // Create a socket for the server
    int socket_id = socket(AF_INET, SOCK_STREAM, 0);

    struct sockaddr_in server_address, client_address;

    // Configure the server address
    server_address.sin_family = AF_INET;
    server_address.sin_addr.s_addr = htonl(INADDR_ANY); // Listen on any available network interface
    server_address.sin_port = htons(2200); // Port to listen on

    // Bind the socket to the server address
    bind(socket_id, (struct sockaddr*)&server_address, sizeof(server_address));

    // Start listening for incoming connections
    listen(socket_id, 10); // Queue up to 10 connection requests

    while (1) { // Continuously accept and handle connections
        // Accept a client connection
        connection_socket = accept(socket_id, (struct sockaddr*)NULL, NULL);

        // Receive data from the client
        recv(connection_socket, message, 100, 0);
        printf("received - %s", message);

        // Send the received data back to the client
        send(data_socket, message, strlen(message), 0); 

        // Close the connection with the client
        close(connection_socket);
    }

    return 0;
}
