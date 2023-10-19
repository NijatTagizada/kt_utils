import 'package:jiffy/jiffy.dart';
import 'package:kt_utils/kt_utils.dart';

import 'dart:math';

import 'package:intl/intl.dart';

import 'decimal.dart';

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

  print(setScaleRoundUp(Decimal.parse('12.345'), 0));
  print(setScaleRoundUp(Decimal.parse('12.345'), 1));
  print(setScaleRoundUp(Decimal.parse('12.345'), 2));
  print(setScaleRoundUp(Decimal.parse('9876.54210'), 4));

  var d = Decimal.parse('11') / Decimal.parse('3600');
  print(d.toDouble());

  var ji = Jiffy.parse('2023-07-19 05:45:52.959655').diff(
      Jiffy.parse('2023-07-19 05:45:00.595804'),
      unit: Unit.second,
      asFloat: true);

  var time1 = DateTime.parse('2023-07-19 05:45:06.595804');
  var time2 = DateTime.parse('2023-07-19 05:45:52.959655');

  print((time2.microsecondsSinceEpoch - time1.microsecondsSinceEpoch) /
      Duration.microsecondsPerSecond);
}

Decimal setScaleRoundDown(Decimal decimal, int scale) =>
    setScale(decimal, scale, (val) => val.floor());
Decimal setScaleRoundUp(Decimal decimal, int scale) =>
    setScale(decimal, scale, (val) => val.ceil());
Decimal setScaleRound(Decimal decimal, int scale) =>
    setScale(decimal, scale, (val) => val.round());

Decimal setScale(
    Decimal decimal, int scale, Decimal roundMethod(Decimal decimal)) {
  Decimal scaleVal = Decimal.fromInt(pow(10, scale).toInt());
  final s = roundMethod(decimal * scaleVal) / scaleVal;
  return s.toDecimal();
}

//TODO string last char
