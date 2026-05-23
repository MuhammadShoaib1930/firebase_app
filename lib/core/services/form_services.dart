class FormServices {
  static String? validationEmail(String? value) {
    if (value!.isEmpty) return "Enter email!";
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return "Enter valid email!";
    }
    return null;
  }

  static String? validationPhoneNumber(String? value) {
    if (value!.isEmpty) return "Enter valid Phone number!";
    if (value.length < 11) return "Enter valid phone number!";
    
    return null;
  }

  static String? validationPassword(String? value) {
    if (value!.isEmpty) return "Enter password!";
    if (value.length < 6) return "Enter more then 8 digits!";
    if (!RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d@$!%*#?&]{8,}$').hasMatch(value)) {
      if (!value.contains(RegExp(r'[a-zA-Z]'))) {
        return "Enter at least one Character!";
      } else if (!value.contains(RegExp(r'[0-9]'))) {
        return "Enter at least one Digit!";
      } else {
        return "Enter minmum 8 Character or Digits!";
      }
    }
    return null;
  }

  static String? nameValidator(String? value) {
    if (value == null) {
      return "Enter name!";
    } else if (value.length < 3) {
      return "Enter valid name!";
    }
    return null;
  }

  static String? ageValidator(String? value) {
    int age = int.parse(value.toString().trim());
    if (age == 0) {
      return "Enter age!";
    } else if (age <= 0 || age >= 150) {
      return "Enter valid age!";
    }
    return null;
  }
}
