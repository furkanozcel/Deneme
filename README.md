# Flutter Örnek Login ve Signup ve Kaydetme

This Flutter project demonstrates a simple login and signup functionality with user data persistence using `shared_preferences`.  This README provides comprehensive documentation for developers to understand and utilize this project.

## Project Description

This application allows users to log in with existing credentials or sign up to create a new account. User data (username and password) is stored locally using the `shared_preferences` package for persistence between sessions.  The application is designed for illustrative purposes and showcases basic Flutter features.

## Project Structure

The project directory is organized as follows:

- **android/**: Contains Android-specific project files.
- **ios/**: Contains iOS-specific project files.
- **lib/**: Contains the Dart source code.
    - **anasayfa.dart**: Displays the user's username and password after successful login.
    - **karar_sayfasi.dart**: The initial screen, offering login or signup options.
    - **kayit_ol.dart**: The signup screen for new users.
    - **login.dart**: The login screen for existing users.
    - **main.dart**: The main application entry point.
- **linux/**: Contains Linux-specific project files.
- **macos/**: Contains macOS-specific project files.
- **web/**: Contains web-specific project files.
- **windows/**: Contains Windows-specific project files.
- **pubspec.yaml**: Specifies project dependencies and configurations.
- **test/**: Contains unit and widget tests.
- **.gitignore**: Specifies files and directories to exclude from version control.
- **README.md**: This file.
- **analysis_options.yaml**: Configuration for the Dart analyzer.
- **pubspec.lock**: Locked dependencies file.


## Tech Stack & Dependencies

The project uses the following technologies and dependencies:

- **Flutter:** The cross-platform UI framework.
- **Dart:** The programming language used in Flutter.
- **shared_preferences:** For local data storage.
- **cupertino_icons:** Provides Cupertino-style icons (iOS).

The exact versions of these dependencies are specified in the `pubspec.yaml` file.


## Installation & Setup

1. **Prerequisites:**
   - Ensure you have the Flutter SDK installed and configured.  Follow the instructions at [https://docs.flutter.dev/get-started/install](https://docs.flutter.dev/get-started/install).
   - Install an IDE such as Android Studio, VS Code, or IntelliJ IDEA with Flutter support.

2. **Clone the Repository:**

   ```bash
   git clone https://github.com/furkanozcel/Flutter_ornek_loginVeSignupVeKaydetme.git
   ```

3. **Navigate to the Project Directory:**

   ```bash
   cd Flutter_ornek_loginVeSignupVeKaydetme
   ```

4. **Get Dependencies:**

   ```bash
   flutter pub get
   ```

5. **Run the App:**

   ```bash
   flutter run
   ```


## Usage Guide

The app starts with a decision screen (`karar_sayfasi.dart`).  Users can:

- **Login:** Enter a username and password on the login screen (`login.dart`).  Currently, the application uses hardcoded usernames and passwords for demonstration purposes. Successful login leads to the home screen (`anasayfa.dart`).
- **Signup:** Create a new account on the signup screen (`kayit_ol.dart`). The new username and password are stored locally using `shared_preferences`. After signup, users are redirected to the login screen.

The home screen displays the entered username and password.


## Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes and commit them with clear and concise messages.
4. Push your branch to your forked repository.
5. Create a pull request to merge your changes into the `main` branch.

Please adhere to the Dart style guide.


## License

This project is licensed under the MIT License.  (Note: A LICENSE file was not included in the provided data).

## Author

Furkan Özçel
