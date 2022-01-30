import 'package:flutter_test/flutter_test.dart';
import 'package:kt_utils/kt_utils.dart';

void main() {
  group('List test', () {
    test('list random test 1', () {
      var ls = [1, 423, 423, 42, 34, 234, 2, 3, 4, 5];
      int num = ls.random();
      expect(ls.contains(num), true);
    });
    test('list random test 2', () {
      var ls = [1, 2, 3, 43, 31, 31, 314, 34, 25, 43, 25, 2344, 4234, 5];
      int num = ls.random();
      expect(ls.contains(num), true);
    });

    test('list random test 3', () {
      var ls = [1, 2, 3, 4, 5, 5, 43, 31, 31, 231, 31, 313];
      int num = ls.random();
      expect(ls.contains(num), true);
    });
    test('list random test 4', () {
      var ls = [1, 2, 3, 4, 5];
      int num = ls.random();
      expect(ls.contains(num), true);
    });

    test('list lastindex', () {
      var ls = [1, 2, 3];
      expect(ls.lastIndex, 2);
    });

    test('list count found', () {
      var ls = [1, 2, 3, 4, 5, 5, 6, 5];
      int result = ls.count((e) => e == 5);
      expect(result, 3);
    });

    test('list count not found', () {
      var ls = [0, 1, 2, 3, 4];
      int result = ls.count((e) => e == 9);
      expect(result, 0);
    });
  });
}
