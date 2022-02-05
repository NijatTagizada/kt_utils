import 'package:flutter_test/flutter_test.dart';
import 'package:kt_utils/kt_utils.dart';

void main() {
  test("should't throw exception when call random method", () {
    var ls = [1, 423, 423, 42, 34, 234, 2, 3, 4, 5];
    final result = ls.random;
    expect(() => result(), returnsNormally);
  });

  test('should return last index of list', () {
    var ls = [1, 2, 3];
    expect(ls.lastIndex, 2);
  });

  test('should return count of given item', () {
    var ls = [1, 2, 3, 4, 5, 5, 6, 5];
    int result = ls.count((e) => e == 5);
    expect(result, 3);
  });

  test('should return zero when count not found', () {
    var ls = [0, 1, 2, 3, 4];
    int result = ls.count((e) => e == 9);
    expect(result, 0);
  });
}
