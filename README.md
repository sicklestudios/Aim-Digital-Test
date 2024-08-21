# Flutter Login with Firebase Authentication and Cubit State Management

This project demonstrates a simple yet powerful implementation of a login screen using Flutter, Firebase Authentication, and Cubit for state management. The application handles user authentication, including creating new users, error management, and state transitions. The project follows best practices for UI design, state management, and Firebase integration.

## Features

- **Login Screen**: Includes email and password fields with validation, a login button, and an error message display.
- **State Management**: Uses Cubit to manage the different states of the login process, including loading, success, and error states.
- **Firebase Authentication**: Integrates Firebase Authentication to handle email/password login and user creation.
- **User Notification**: Displays a notification when a new user account is created.
- **Logout Functionality**: Allows users to log out and return to the login screen.
- **Responsive UI**: The UI is designed to be responsive and look good on different screen sizes.

## Note
 **Firebase is already configured, so you can test the app by cloning and running it.**

- **Test Credentials**:
    ```
    Email: haris@gmail.com
    Password: 123456
    ```

- The application will create a new user when a new email is entered.

## Installation

1. **Clone the repository**:
    ```bash
    git clone https://github.com/your-repo/flutter-login-firebase-cubit.git
    cd flutter-login-firebase-cubit
    ```

2. **Set up Firebase**:
   - Follow the [official Firebase documentation](https://firebase.flutter.dev/docs/overview) to configure Firebase for your Flutter project.
   - Use Flutter Fire CLI to register your apps to firebase

3. **Install dependencies**:
    ```bash
    flutter pub get
    ```

4. **Run the app**:
    ```bash
    flutter run
    ```



