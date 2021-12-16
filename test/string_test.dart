import 'package:flutter_test/flutter_test.dart';
import 'package:kt_utils/kt_utils.dart';

void main() {
  late String word;

  setUp(() {
    word = 'lorem ipsum';
  });

  group('plus', () {
    test('Plus', () {
      expect(word.plus(' dolor'), 'lorem ipsum dolor');
    });
    test('Plus empty string', () {
      expect(''.plus('lorem'), 'lorem');
    });
  });

  group('toCapitalize', () {
    test('toCapitalize', () {
      expect(word.toCapitalize(), 'Lorem ipsum');
    });

    test('toCapitalize empty string', () {
      expect(''.toCapitalize(), '');
    });
  });

  group('toDouble', () {
    test('To Double', () {
      String num = '10.22';
      expect(num.toDouble(), 10.22);
    });
    test('To Double error', () {
      String num = '10.22a';
      expect(() => num.toDouble(), throwsA(TypeMatcher<FormatException>()));
    });
  });

  group('toInt', () {
    test('To Int', () {
      String num = '11';
      expect(num.toInt(), 11);
    });

    test('To Int error', () {
      String num = '11A';
      expect(() => num.toInt(), throwsA(TypeMatcher<FormatException>()));
    });
  });

  group('reversed', () {
    test('Reversed', () {
      expect(word.reversed(), 'muspi merol');
    });

    test('Reversed empty string', () {
      expect(''.reversed(), '');
    });
  });

  group('toTitleCase', () {
    test('toTitleCase', () {
      expect(word.toTitleCase(), 'Lorem Ipsum');
    });

    test('toTitleCase empty string', () {
      expect(''.toTitleCase(), '');
    });
  });

  group('containsDigit', () {
    test('contains digit 1', () {
      expect('11'.containsDigit(), true);
    });

    test('contains digit 2', () {
      expect('11dc'.containsDigit(), true);
    });

    test('contains digit 3', () {
      expect('#@f!#@'.containsDigit(), false);
    });

    test('contains digit empty string', () {
      expect(''.containsDigit(), false);
    });
  });

  group('isEmailValid', () {
    test('check email is valid 1', () {
      expect('dd.@com'.isEmailValid(), false);
    });

    test('check email is valid 2', () {
      expect('test@test.com'.isEmailValid(), true);
    });

    test('check email is valid 4', () {
      expect('a@b.c'.isEmailValid(), false);
    });

    test('check email is valid empty string', () {
      expect(''.isEmailValid(), false);
    });
  });
}
