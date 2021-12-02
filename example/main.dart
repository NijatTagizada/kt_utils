import 'package:kt_utils/kt_utils.dart';

void main(List<String> args) {
  var word = 'hello';

  //Capitalize
  word = word.toCapitalize();

  //Merge text
  print(word.plus(' World'));

  //Parse to int
  var num = '10';
  print(num.toInt());
}
