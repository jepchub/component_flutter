extension ExtString on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    return emailRegExp.hasMatch(this);
  }

  bool get isValidName{
    final nameRegExp = RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
    return nameRegExp.hasMatch(this);
  }

  bool get isValidPassword{
    final passwordRegExp = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~]).{8,}/pre>');
    return passwordRegExp.hasMatch(this);
  }

  bool get isValidPhone{
    final phoneRegExp = RegExp(r"[0-9]{8,15}$");
    return phoneRegExp.hasMatch(this);
  }

  bool get isUpperCase{
    return contains(RegExp(r'[A-Z]'));
  }

  bool get isLowerCase{
    return contains(RegExp(r'[a-z]'));
  }

  bool get isCharacterEspecialCase{
    return contains(RegExp(r'[`~!@#$%\^&*\(\)_+\\\-={}\[\]\/.,<>;]'));
  }

  bool get isNumberCase{
    return contains(RegExp(r'[0-9]'));
  }


}