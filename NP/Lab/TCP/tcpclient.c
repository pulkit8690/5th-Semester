#include <stdio.h>
#include <sys/socket.h>
#include <netdb.h>
#include <sys/types.h>
#include <string.h>

int main() {
    int connection_socket;
    struct sockaddr_in server_address;
    char input_message[100], received_message[100];

    // Create a socket for the client
    connection_socket = socket(AF_INET, SOCK_STREAM, 0);

    // Configure the server address
    server_address.sin_family = AF_INET;
    server_address.sin_addr.s_addr = inet_addr("127.0.0.1"); // Server IP address
    server_address.sin_port = htons(2200); // Server port

    // Connect to the server
    connect(connection_socket, (struct sockaddr*)&server_address, sizeof(server_address));

    // Get user input
    printf("Enter a message: ");
    fgets(input_message, 100, stdin);

    // Send user's message to the server
    send(connection_socket, input_message, strlen(input_message), 0);

    // Receive the server's response
    recv(connection_socket, received_message, 100, 0);

    // Print the server's response
    printf("Server's response: %s", received_message);

    // Close the connection
    close(connection_socket);

    return 0;
}
