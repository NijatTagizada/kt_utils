import 'package:kt_utils/kt_utils.dart';

void main(List<String> args) {
  // String
  var word = 'hello';
  word = word.toCapitalize();
  print(word.plus(' World'));

  // Double
  print(5.457.roundPrecision(1));
}
