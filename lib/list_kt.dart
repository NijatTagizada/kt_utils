part of kt_utils;

extension ListKt<T> on Iterable<T> {
  /// forEach with index
  void forEachIndexed(void action(int index, T element)) {
    int index = 0;

    for (T element in this) action(index++, element);
  }

  int get lastIndex {
    return this.length - 1;
  }

  T random() {
    return this.elementAt(Random().nextInt(this.length));
  }
}
