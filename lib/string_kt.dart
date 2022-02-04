part of kt_utils;
//TODO swapcase
extension StringKt on String {
  ///Merge text
  String plus(String text) => '${this}$text';

  ///Capitalize first letter
  String toCapitalize() {
    if (this.trim().length > 0) {
      return this.replaceFirst(this[0], this[0].toUpperCase());
    } else {
      return this;
    }
  }

  ///Parse to [int]
  int toInt() {
    return int.parse(this);
  }

  ///Parse to [double]
  double toDouble() {
    return double.parse(this);
  }

  ///Reverse text
  String reversed() {
    return this.split('\n').map((s) => s.split('').reversed.join('')).join();
  }

  ///Capitalizes all words
  String toTitleCase() {
    return this.split(' ').map((s) => s.toCapitalize()).join(' ');
  }

  ///Check contain digit
  bool containsDigit() {
    return RegExp(kHaveDigitPtrn).hasMatch(this);
  }

  ///Check email is valid
  bool isEmailValid() {
    return RegExp(kEmailPtrn).hasMatch(this);
  }
}
