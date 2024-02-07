import 'package:flutter_test/flutter_test.dart';
import 'package:kt_utils/kt_utils.dart';

void main() {
  late double number;
  setUp(() {
    number = 34.556;
  });

  test('RoundPrecision when precision is 1', () {
    expect(number.roundDouble(1), 34.6);
  });

  test('RoundPrecision when precision is 0', () {
    expect(number.roundDouble(0), 35);
  });

  test('RoundPrecision when precision is 2(1)', () {
    expect(number.roundDouble(2), 34.56);
  });

  test('RoundPrecision when precision is 2(2)', () {
    expect((2.11 + 3.78).roundDouble(2), 5.89);
  });

  test('RoundPrecision when precision is 2(3)', () {
    expect(2.3.roundDouble(2), 2.3);
  });

  test('RoundPrecision when precision is 2(4)', () {
    expect(2.355.roundDouble(2), 2.36);
  });

  test('RoundPrecision when precision is 2(4)', () {
    expect((2.34 + 2.45).roundDouble(5), 4.79);
  });
}
