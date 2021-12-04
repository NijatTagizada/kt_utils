import 'package:flutter_test/flutter_test.dart';
import 'package:kt_utils/kt_utils.dart';

void main() {
  group('String test', () {
    late String word;

    setUp(() {
      word = 'lorem ipsum';
    });

    test('Capitalize', () {
      expect(word.toCapitalize(), 'Lorem ipsum');
    });

    test('To Int', () {
      String num = '11';
      expect(num.toInt(), 11);
    });

    test('To Int error', () {
      String num = '11A';
      expect(() => num.toInt(), throwsA(TypeMatcher<FormatException>()));
    });

    test('Reversed', () {
      expect(word.reversed(), 'muspi merol');
    });

    test('Plus', () {
      expect(word.plus(' dolor'), 'lorem ipsum dolor');
    });
  });
}
