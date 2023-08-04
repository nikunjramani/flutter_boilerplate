  extension ValidationUtils on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,6}))$');
    return !emailRegExp.hasMatch(this);
  }

  bool get isValidName{
    final name = RegExp(r"^[A-Za-z][A-Za-z\s]{4,29}$");

    return !name.hasMatch(this);
  }

  bool get isUsernameName{
    final name = RegExp( r'^[a-zA-Z][a-zA-Z0-9_-]{2,16}$');

    return !name.hasMatch(this);
  }

  bool get isValidText{
    final name = RegExp(r"^[A-Za-z][A-Za-z\s]{4,29}$");

    return !name.hasMatch(this);
  }

  bool get isValidPassword{
    final passwordRegExp = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).\S{8,}$');
    return !passwordRegExp.hasMatch(this);
  }

  bool get isValidAlphanumeric{
     final validCharacters = RegExp(r'^[a-zA-Z0-9- ]+$');
     return !validCharacters.hasMatch(this);
  }

  bool get isValidPhone{
    final phoneRegExp = RegExp(r"^\+?0[0-9]{10}$");
    return !phoneRegExp.hasMatch(this);
  }

  bool get isDateValid{
    return isNotEmpty && RegExp(r'(0[1-9]|1[0-2])/(0[1-9]|[12]\d|3[01])/[12]\d{3}').hasMatch(this);
  }

}
