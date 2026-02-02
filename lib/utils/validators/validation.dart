class SValidator {
  static String? validateEmptyText(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required.';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required.';
    }
    final emailRegExp = RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address.';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "password is required";
    }
    if (value.length < 6) {
      return "password must be at least 6 characters long.";
    }
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return "password must contain at least one uppercase letter.";
    }
    //check for number
    if (!value.contains(RegExp(r'[0-9]'))) {
      return "password must contain at least one number.";
    }

    ///check for special character
    if (value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return "password must contain at least one special character.";
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return "Phone Number is required";
    }
    final phoneRegExp = RegExp(r'^\+?[0-9]{7,15}$');
    if (!phoneRegExp.hasMatch(value)) {
      return "Invalid Phone Number format (10-15 digits, optional + at start).";

      // Add more custom validators as needed for your specific requirements.
    }
    return null;
  }
}
