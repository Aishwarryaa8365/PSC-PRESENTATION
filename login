// Login function
int login() {
    char username[50], password[50];

    printf("\n\tWelcome to the Airline Reservation System\n");
    printf("\t=========================================\n");
    printf("\t\t\tLOGIN\n");
    printf("\t=========================================\n");

    // Get username
    printf("\nEnter Username: ");
    fgets(username, 50, stdin);
    username[strcspn(username, "\n")] = 0; // Remove newline character

    // Get password
    printf("Enter Password: ");
    fgets(password, 50, stdin);
    password[strcspn(password, "\n")] = 0; // Remove newline character

    // Check credentials
    if (strcmp(username, USERNAME) == 0 && strcmp(password, PASSWORD) == 0) {
        printf("\nLogin successful! Welcome, %s.\n", username);
        pause();
        return 1; // Login successful
    } else {
        printf("\nInvalid username or password. Please try again.\n");
        pause();
        return 0; // Login failed
    }
}

