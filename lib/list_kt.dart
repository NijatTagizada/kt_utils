part of kt_utils;

extension ListKt<T> on Iterable<T> {
  void forEachIndexed(void action(int index, T element)) {
    int index = 0;

    for (T element in this) action(index++, element);
  }
}
