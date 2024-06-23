import 'dart:math';

extension DoubleKt on double {
  /// Rounding number to decimal places
  @Deprecated(
      'Please use [roundDouble] instead of it. Will be removed in 2.3.0')
  double roundPrecision(int precision) {
    if (precision == 0) {
      return double.parse(this.toStringAsFixed(precision));
    } else {
      double number = this;
      String numbersAfterDecimal = number.toString().split('.')[1];

      if (numbersAfterDecimal != '0') {
        int existingNumberOfDecimal = numbersAfterDecimal.length;
        number += 1 / (10 * pow(10, existingNumberOfDecimal));
      }
      return double.parse(number.toStringAsFixed(precision));
    }
  }

  /// Rounding number to decimal places
  double roundDouble(int precision) {
    num mod = pow(10.0, precision);
    return ((this * mod).round().toDouble() / mod);
  }
}
