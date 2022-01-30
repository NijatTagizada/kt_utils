part of kt_utils;

extension ListKt<T> on Iterable<T> {
  ///forEach with index
  void forEachIndexed(void action(int index, T element)) {
    int index = 0;

    for (T element in this) action(index++, element);
  }

  ///Last index of list
  int get lastIndex {
    return this.length - 1;
  }

  ///Return random object
  T random() {
    return this.elementAt(Random().nextInt(this.length));
  }

  ///Return number times that any given item appears in a list
  int count(bool Function(T e) func) {
    return this.where((element) => func(element)).length;
  }
}
