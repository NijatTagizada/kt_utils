part of kt_utils;

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
    return RegExp(kContainDigitPtrn).hasMatch(this);
  }

  ///Check email is valid
  bool isEmailValid() {
    return RegExp(kEmailPtrn).hasMatch(this);
  }

  ///Encode text to Base64
  String encodeBase64() {
    return base64.encode(utf8.encode(this));
  }

  ///Decode from base64 to readable text
  String decodeBase64() {
    return utf8.decode(base64.decode(this));
  }

  ///Check text contains only digit
  bool isDigit() {
    return RegExp(kOnlyDigitPtrn).hasMatch(this);
  }

  ///Check all letters is lower case
  bool isLowerCase() {
    return this == this.toLowerCase();
  }

  ///Check all letters is upper case
  bool isUpperCase() {
    return this == this.toUpperCase();
  }

  ///Check text contains only letters
  bool isAlpha(){
    return RegExp(kOnlyLettersPtrn).hasMatch(this);
  }
}
