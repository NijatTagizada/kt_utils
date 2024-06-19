import 'package:flutter_test/flutter_test.dart';
import 'package:kt_utils/kt_utils.dart';

void main() {
  late String word;

  setUp(() {
    word = 'lorem ipsum';
  });

  group('[plus]', () {
    test('should combine strings', () {
      expect(word.plus(' dolor'), 'lorem ipsum dolor');
    });
    test('should combine strings (with empty string)', () {
      expect(''.plus('lorem'), 'lorem');
    });

    test('should combine strings (with null string)', () {
      expect(null.plus('lorem'), 'lorem');
    });
  });

  group('[toCapitalize]', () {
    test('should capitalize string', () {
      expect(word.toCapitalize(), 'Lorem ipsum');
    });

    test('should return empty when capitalize empty string', () {
      expect(''.toCapitalize(), '');
    });

    test('should return null when capitalize null string', () {
      expect(null.toCapitalize(), null);
    });
  });

  group('[toDouble]', () {
    test('should convert string to double', () {
      String num = '10.22';
      expect(num.toDouble(), 10.22);
    });

    test('throw [FormatException] when can not convert to double', () {
      String num = '10.22a';
      expect(() => num.toDouble(), throwsA(TypeMatcher<FormatException>()));
    });

    test('throw [FormatException] when can not convert to double', () {
      String? num = null;
      expect(() => num.toDouble(), throwsA(TypeMatcher<FormatException>()));
    });
  });

  group('[toInt]', () {
    test('should convert string to int', () {
      String num = '11';
      expect(num.toInt(), 11);
    });

    test('throw [FormatException] when can not convert to int', () {
      String num = '11A';
      expect(() => num.toInt(), throwsA(TypeMatcher<FormatException>()));
    });

    test('throw [FormatException] when can not convert to int', () {
      String? num = null;
      expect(() => num.toInt(), throwsA(TypeMatcher<FormatException>()));
    });
  });

  group('[reversed]', () {
    test('should revers given string', () {
      expect(word.reversed(), 'muspi merol');
    });

    test('should return empty when reversed empty string', () {
      expect(''.reversed(), '');
    });

    test('should return null when reversed null string', () {
      expect(null.reversed(), null);
    });
  });

  group('[toTitleCase]', () {
    test('should capizalize first letter of word', () {
      expect(word.toTitleCase(), 'Lorem Ipsum');
    });

    test('should return empty when call toTitleCase with empty string', () {
      expect(''.toTitleCase(), '');
    });

    test('should return null when call toTitleCase with null string', () {
      expect(null.toTitleCase(), null);
    });
  });

  group('[containsDigit]', () {
    test('should return true when string contains only digit', () {
      expect('11'.containsDigit(), true);
    });

    test('should return true when string contains digit and letter', () {
      expect('11dc'.containsDigit(), true);
    });

    test('should return false when string not contains any digit', () {
      expect('#@f!#@'.containsDigit(), false);
    });

    test('should return false when call containsDigit with empty string', () {
      expect(''.containsDigit(), false);
    });

    test('should return false when call containsDigit with null string', () {
      expect(null.containsDigit(), false);
    });
  });

  group('[isEmailValid]', () {
    test('should return true when valid email', () {
      expect('dd.@com'.isEmailValid(), false);
    });

    test('should return false when invalid email', () {
      expect('a@b.c'.isEmailValid(), false);
    });

    test('should return false when isEmailValid with empty string', () {
      expect(''.isEmailValid(), false);
    });

    test('should return false when isEmailValid with null string', () {
      expect(null.isEmailValid(), false);
    });
  });

  group('[encodeBase64]', () {
    test('return base64 when encode successfully', () {
      expect(word.encodeBase64(), 'bG9yZW0gaXBzdW0=');
    });

    test('should return null when given text is null', () {
      expect(null.encodeBase64(), null);
    });

    test('should return empty when given text is empty', () {
      expect(''.encodeBase64(), '');
    });
  });

  group('[decodeBase64]', () {
    test('return valid text when decode successfully', () {
      expect('bG9yZW0gaXBzdW0='.decodeBase64(), word);
    });

    test('should return null when given text is null', () {
      expect(null.decodeBase64(), null);
    });

    test('should return empty when given text is empty', () {
      expect(''.decodeBase64(), '');
    });
  });

  group('[isDigit]', () {
    test('should return true when given text contains positive number', () {
      expect('10'.isDigit(), true);
    });

    test('should return true when given text contains negative number', () {
      expect('-10'.isDigit(), true);
    });

    test('should return false when given text not contains only number', () {
      expect('10abc'.isDigit(), false);
    });

    test('should return false when given text is null', () {
      expect(null.isDigit(), false);
    });

    test('should return false when given text is empty', () {
      expect(''.isDigit(), false);
    });
  });

  group('[isLowerCase]', () {
    test('should return true when all letters is lower case', () {
      expect(word.isLowerCase(), true);
    });

    test('should return false when all letters is not lower case', () {
      expect('Lorem ipsUm'.isLowerCase(), false);
    });

    test('should return true when given text is null', () {
      expect(null.isLowerCase(), false);
    });

    test('should return true when given text is empty', () {
      expect(''.isLowerCase(), true);
    });
  });

  group('[isUpperCase]', () {
    test('should return true when all letters is upper case', () {
      expect('LOREM IPSUM'.isUpperCase(), true);
    });

    test('should return false when all letters is not upper case', () {
      expect('Lorem ipsUm'.isUpperCase(), false);
    });

    test('should return true when given text is null', () {
      expect(null.isUpperCase(), false);
    });

    test('should return true when given text is empty', () {
      expect(''.isLowerCase(), true);
    });
  });

  group('[isalpha]', () {
    test('should return true when given text contains only letters', () {
      expect('åuœcµåböğüeikv ŹŻŚĄm'.isAlpha(), true);
    });

    test('should return false when given text not contains only letters', () {
      expect('10abc'.isAlpha(), false);
    });

    test('should return false when given text is null', () {
      expect(null.isAlpha(), false);
    });

    test('should return true when given text is empty', () {
      expect(''.isAlpha(), false);
    });
  });

  group('[swapcase]', () {
    test('should return valid text when swap case given text', () {
      expect('loReM iPsUm DOLOR'.swapCase(), 'LOrEm IpSuM dolor');
    });

    test('should return empty text when swapcase call with empty text', () {
      expect(''.swapCase(), '');
    });

    test('should return null when swapcase call with null', () {
      expect(null.swapCase(), null);
    });
  });

  group('[last]', () {
    test('should return last character of string', () {
      expect('example'.last(), 'e');
    });

    test('should return empty string', () {
      expect(''.last(), '');
    });
    test('should return null string', () {
      expect(null.last(), null);
    });
  });

  group('[isNotNullEmpty]', () {
    test('should return true when string is not null and also empty', () {
      expect('example'.isNotNullEmpty(), true);
    });

    test('should return false when string is empty', () {
      expect(''.isNotNullEmpty(), false);
    });

    test('should return false when string is null', () {
      expect(null.isNotNullEmpty(), false);
    });

    test('should return false when string is gap', () {
      expect('            '.isNotNullEmpty(), false);
    });
  });
}
