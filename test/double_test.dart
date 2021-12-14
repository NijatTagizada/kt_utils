import 'package:flutter_test/flutter_test.dart';
import 'package:kt_utils/kt_utils.dart';

void main() {
  group('Double test', () {
    late double number;
    setUp(() {
      number = 34.556;
    });

    test('Precision is 1', () {
      expect(number.roundPrecision(1), 34.6);
    });

    test('Precision is 0', () {
      expect(number.roundPrecision(0), 35);
    });

    test('Precision is 2', () {
      expect(number.roundPrecision(2), 34.56);
    });
  });
}
