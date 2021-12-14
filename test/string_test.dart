import 'package:flutter_test/flutter_test.dart';
import 'package:kt_utils/kt_utils.dart';

void main() {
  group('String test', () {
    late String word;

    setUp(() {
      word = 'lorem ipsum';
    });

    test('toCapitalize', () {
      expect(word.toCapitalize(), 'Lorem ipsum');
    });

    test('toCapitalize empty string', () {
      expect(''.toCapitalize(), '');
    });

    test('To Int', () {
      String num = '11';
      expect(num.toInt(), 11);
    });

    test('To Int error', () {
      String num = '11A';
      expect(() => num.toInt(), throwsA(TypeMatcher<FormatException>()));
    });

    test('To Double', () {
      String num = '10.22';
      expect(num.toDouble(), 10.22);
    });

    test('Reversed', () {
      expect(word.reversed(), 'muspi merol');
    });

    test('Reversed empty string', () {
      expect(''.reversed(), '');
    });

    test('Plus', () {
      expect(word.plus(' dolor'), 'lorem ipsum dolor');
    });

    test('toTitleCase', () {
      expect(word.toTitleCase(), 'Lorem Ipsum');
    });

    test('toTitleCase empty string', () {
      expect(''.toTitleCase(), '');
    });
  });
}
