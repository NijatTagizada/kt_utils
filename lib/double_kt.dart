part of 'kt_utils.dart';

extension DoubleKt on double {
  /// Rounding number to decimal places
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
}
