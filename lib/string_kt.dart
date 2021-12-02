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
}
