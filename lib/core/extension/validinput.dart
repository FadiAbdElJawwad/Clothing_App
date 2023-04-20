
extension StringValidation on String {
/*
  bool get isNullOrEmpty => this.isEmpty;
  bool get isEmail =>
      RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(this);

  bool get isPassword => this.length >= 6;
*/

  String? get ValidatName {
    String? result;
    if (isEmpty) {
      result = 'Please enter your name';
    }
    return result;
  }

  String? get ValidatEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    String? result;
    if (isEmpty) {
      result = 'Please enter your email address';
    }
    else if (!(emailRegExp.hasMatch(this))) {
      result = 'Please enter a valid email address';
    }
    return result;
  }

  String? get ValidatPassword {
    String? result;

    final passwordRegExp =
    RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (isEmpty) {
      result = 'Please enter your password';
    }
    else if (!(this.length >= 6)) {
      result = 'Password must be at least 6 characters long';
    }
    return result;
  }



}

