part of kt_utils;

extension StringKt on String? {
  ///Merge text
  String? plus(String text) {
    if (this == null) {
      return text;
    }
    return '${this}$text';
  }

  ///Capitalize first letter
  String? toCapitalize() {
    if (this == null) {
      return null;
    }

    if (this!.trim().length > 0) {
      return this!.replaceFirst(this![0], this![0].toUpperCase());
    } else {
      return this;
    }
  }

  ///Parse to [int]
  int? toInt() {
    if (this == null) {
      throw FormatException();
    }
    return int.parse(this!);
  }

  ///Parse to [double]
  double? toDouble() {
    if (this == null) {
      throw FormatException();
    }
    return double.parse(this!);
  }

  ///Reverse text
  String? reversed() {
    if (this == null) {
      return null;
    }
    return this!.split('\n').map((s) => s.split('').reversed.join('')).join();
  }

  ///Capitalizes all words
  String? toTitleCase() {
    if (this == null) {
      return null;
    }
    return this!.split(' ').map((s) => s.toCapitalize()).join(' ');
  }

  ///Check contain digit
  bool containsDigit() {
    if (!this.isNotNullEmpty()) {
      return false;
    }
    return RegExp(kContainDigitPtrn).hasMatch(this!);
  }

  ///Check email is valid
  bool isEmailValid() {
    if (this == null) {
      return false;
    }
    return RegExp(kEmailPtrn).hasMatch(this!);
  }

  ///Encode text to Base64
  String? encodeBase64() {
    if (this == null) {
      return null;
    }
    return base64.encode(utf8.encode(this!));
  }

  ///Decode from base64 to readable text
  String? decodeBase64() {
    if (this == null) {
      return null;
    }
    return utf8.decode(base64.decode(this!));
  }

  ///Check text contains only digit
  bool isDigit() {
    if (!this.isNotNullEmpty()) {
      return false;
    }
    return RegExp(kOnlyDigitPtrn).hasMatch(this!);
  }

  ///Check all letters is lower case
  bool isLowerCase() {
    if (this == null) {
      return false;
    }
    return this == this!.toLowerCase();
  }

  ///Check all letters is upper case
  bool isUpperCase() {
    if (this == null) {
      return false;
    }
    return this == this!.toUpperCase();
  }

  ///Check text contains only letters
  bool isAlpha() {
    if (this == null) {
      return false;
    }
    return RegExp(kOnlyLettersPtrn).hasMatch(this!);
  }

  ///Get last character
  String? last() {
    if (this == null) {
      return null;
    }
    if (this!.isEmpty) {
      return '';
    }
    return this![this!.length - 1];
  }

  ///Change given text case
  ///For example change lower case to upper and upper to lower ('HeLlo worLd' => 'hElLO WORlD')
  String? swapCase() {
    if (this == null) {
      return null;
    }

    return this!.split('').map((String e) {
      if (e.toLowerCase() == e) {
        return e.toUpperCase();
      } else {
        return e.toLowerCase();
      }
    }).join('');
  }

  ///Check text is not null and empty
  bool isNotNullEmpty() {
    if (this != null && this!.isNotEmpty) {
      return true;
    }
    return false;
  }
}
