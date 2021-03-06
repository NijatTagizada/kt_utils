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
  });

  group('[toCapitalize]', () {
    test('should capitalize string', () {
      expect(word.toCapitalize(), 'Lorem ipsum');
    });

    test('should return empty when capitalize empty string', () {
      expect(''.toCapitalize(), '');
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
  });

  group('[reversed]', () {
    test('should revers given string', () {
      expect(word.reversed(), 'muspi merol');
    });

    test('should return empty when reversed empty string', () {
      expect(''.reversed(), '');
    });
  });

  group('[toTitleCase]', () {
    test('should capizalize first letter of word', () {
      expect(word.toTitleCase(), 'Lorem Ipsum');
    });

    test('should return empty when call toTitleCase with empty string', () {
      expect(''.toTitleCase(), '');
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
  });

  group('[encodeBase64]', () {
    test('return base64 when encode successfully', () {
      expect(word.encodeBase64(), 'bG9yZW0gaXBzdW0=');
    });
  });

  group('[decodeBase64]', () {
    test('return valid text when decode successfully', () {
      expect('bG9yZW0gaXBzdW0='.decodeBase64(), word);
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
  });

  group('[isLowerCase]', () {
    test('should return true when all letters is lower case', () {
      expect(word.isLowerCase(), true);
    });

    test('should return false when all letters is not lower case', () {
      expect('Lorem ipsUm'.isLowerCase(), false);
    });
  });

  group('[isUpperCase]', () {
    test('should return true when all letters is upper case', () {
      expect('LOREM IPSUM'.isUpperCase(), true);
    });

    test('should return false when all letters is not upper case', () {
      expect('Lorem ipsUm'.isLowerCase(), false);
    });
  });

  group('[isalpha]', () {
    test('should return true when given text contains only letters', () {
      expect('??u??c????b??????eikv ????????m'.isAlpha(), true);
    });
    
    test('should return false when given text not contains only letters', () {
      expect('10abc'.isAlpha(), false);
    });
  });

  group('[swapcase]', () {
    test('should return valid text when swap case given text', () {
      expect('loReM iPsUm DOLOR'.swapCase(),'LOrEm IpSuM dolor');
    });

     test('should return empty text when swapcase call with empty text', () {
      expect(''.swapCase(),'');
    });
  });
}
