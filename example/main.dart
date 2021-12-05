import 'package:kt_utils/kt_utils.dart';

void main(List<String> args) {
  // String
  var word = 'Lorem';
  word = word.toCapitalize();

  print(word.plus(' Ipsum'));

  print('Lorem Ipsum'.reversed());
  
  print('10'.toInt());

  print('10.3'.toDouble());

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
