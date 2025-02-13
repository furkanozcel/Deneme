# Flutter Örnek Login ve Signup ve Kaydetme

This Flutter project demonstrates a simple login and signup functionality with user data persistence using `shared_preferences`.

## Project Structure

The project follows a standard Flutter structure:

- **android/**: Android-specific project files.
- **ios/**: iOS-specific project files.
- **lib/**: Dart source code.
    - **anasayfa.dart**: Displays the user's username and password after successful login.
    - **karar_sayfasi.dart**: The initial screen, providing options for login or signup.
    - **kayit_ol.dart**: The signup screen for new users.
    - **login.dart**: The login screen for existing users.
    - **main.dart**: The main application entry point.
- **pubspec.yaml**: Project dependencies and configuration.
- **test/**: Unit and widget tests.
- **web/**: Web-specific project files.
- **windows/**: Windows-specific project files.
- **.gitignore**: Specifies files and directories to exclude from version control.
- **README.md**: This file.


## Tech Stack & Dependencies

- **Flutter:**  The framework used for cross-platform development.
- **Dart:** The programming language used in Flutter.
- **shared_preferences:** Used for storing user data locally.
- **cupertino_icons:**  Provides Cupertino-style icons for iOS.


## Installation & Setup

1. **Prerequisites:**
   - Flutter SDK installed and configured.  See [https://docs.flutter.dev/get-started/install](https://docs.flutter.dev/get-started/install).
   - An IDE like Android Studio, VS Code, or IntelliJ IDEA with Flutter support.

2. **Clone the repository:**

```bash
git clone https://github.com/furkanozcel/Flutter_ornek_loginVeSignupVeKaydetme.git
```

3. **Navigate to the project directory:**

```bash
cd Flutter_ornek_loginVeSignupVeKaydetme
```

4. **Get dependencies:**

```bash
flutter pub get
```

5. **Run the app:**

```bash
flutter run
```


## Usage Guide

The app starts with a decision screen (`karar_sayfasi.dart`).  You can either:

- **Login:** Enter a username and password on the login screen (`login.dart`).  Currently, a hardcoded set of usernames and passwords is used for demonstration.  Successful login navigates to the home screen (`anasayfa.dart`).
- **Signup:** Create a new account on the signup screen (`kayit_ol.dart`). The new username and password are stored locally using `shared_preferences`. After signup, the app redirects to the login screen.

The home screen displays the entered username and password.

## Contributing

Contributions are welcome! Please follow these guidelines:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes and commit them with clear messages.
4. Push your branch to your forked repository.
5. Create a pull request to merge your changes into the main branch.

Please adhere to the Dart style guide.


## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.


## Author

Furkan Özçel
