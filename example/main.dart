import 'package:kt_utils/kt_utils.dart';

void main(List<String> args) {
  var word = 'hello';

  
  word = word.toCapitalize();

  print(word.plus(' World'));

  var num = '10';
  print(num.toInt());

  print(5.457.roundPrecision(1));
}
