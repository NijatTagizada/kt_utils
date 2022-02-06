import 'package:flutter_test/flutter_test.dart';
import 'package:kt_utils/kt_utils.dart';

void main() {
  late double number;
  setUp(() {
    number = 34.556;
  });

  test('RoundPrecision when precision is 1', () {
    expect(number.roundPrecision(1), 34.6);
  });

  test('RoundPrecision when precision is 0', () {
    expect(number.roundPrecision(0), 35);
  });

  test('RoundPrecision when precision is 2', () {
    expect(number.roundPrecision(2), 34.56);
  });
}
