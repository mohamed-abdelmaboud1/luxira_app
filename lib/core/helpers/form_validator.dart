class FormValidator {
  static String? validateName(String? username) {
    if (username == null || username.isEmpty) {
      return "You must enter your Username";
    } else if (!RegExp(r'^[a-zA-Z0-9_]{3,16}$').hasMatch(username)) {
      return "You must enter vaild Username";
    }
    return null;
  }

  static String? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return "You must enter your email";
    } else if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
        .hasMatch(email)) {
      return "You must enter vaild email";
    }
    return null;
  }

  static String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return "You must enter your password";
    } else if (password.length < 8) {
      return "You must enter at least 8 char";
    } else if (!RegExp(
            r'^(?=.*[A-Za-z]?)(?=.*\d?)(?=.*[@$!%*?&]?)[A-Za-z\d@$!%*?&]{8,}$')
        .hasMatch(password)) {
      return "a password that must contain both letters and numbers";
    }
    return null;
  }

  static String? confirmPassword(String? password, String? confirmPassword) {
    if (confirmPassword == null || confirmPassword.isEmpty) {
      return "You must confirm your password";
    } else if (password != confirmPassword) {
      return "Passwords do not match!";
    } else {
      return null;
    }
  }
}
