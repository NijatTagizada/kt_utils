part of kt_utils;

extension StringKt on String {
  ///Merge text
  String plus(String text) => '${this}$text';

  ///Capitalize first letter
  String toCapitalize() => this.replaceFirst(this[0], this[0].toUpperCase());

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
}
