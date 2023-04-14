
extension StringValidation on String {
  bool get isNullOrEmpty => this.isEmpty;

  bool get isEmail =>
      RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(this);

  bool get isPassword => this.length >= 6;

}

