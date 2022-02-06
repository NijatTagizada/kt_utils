import 'package:kt_utils/kt_utils.dart';

void main(List<String> args) {
  // String
  print('lorem'.toCapitalize());

  print('Lorem'.plus(' Ipsum'));

  print('Lorem Ipsum'.reversed());

  print('10'.toInt());

  print('10.3'.toDouble());

  print('lorem ipsum dolor'.toTitleCase());

  print('123abc'.containsDigit());

  print('abc@abc.test'.isEmailValid());

  print('hello world'.encodeBase64());

  print('aGVsbG8gd29ybGQ='.decodeBase64());

  print('10'.isDigit());

  print('lorem ipsum'.isLowerCase());

  print('LOREM IPSUM'.isUpperCase());

  print('ŹŻŚĄ å abcd'.isAlpha());

  print('LorEM IpsUM'.swapCase());

  // Double
  print(5.432.roundPrecision(1));

  print(7.6.roundPrecision(0));

  // List
  List<String> ls = ['A', 'B', 'C', 'D', 'A', 'D', 'A'];

  ls.forEachIndexed((index, element) {
    print('Index $index - Element $element');
  });

  print(ls.random());

  print(ls.lastIndex);

  print(ls.count((e) => e == 'A'));
}
