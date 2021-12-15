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

  // Double
  print(5.457.roundPrecision(1));

  // List
  List<String> ls = ['A', 'B', 'C', 'D'];

  ls.forEachIndexed((index, element) {
    print('Index $index - Element $element');
  });

  print(ls.random());

  print(ls.lastIndex);
}
