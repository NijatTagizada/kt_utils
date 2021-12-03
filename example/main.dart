import 'package:kt_utils/kt_utils.dart';

void main(List<String> args) {
  // String
  var word = 'Lorem';
  word = word.toCapitalize();

  print(word.plus(' Ipsum'));

  print('Lorem Ipsum'.reversed());

  // Double
  print(5.457.roundPrecision(1));

  
  // List
  ['A', 'B', 'C', 'D'].forEachIndexed((index, element) {
    print('Index $index - Element $element');
  });
}
