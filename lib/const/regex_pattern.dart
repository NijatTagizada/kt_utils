class ConstVariable {
  static String kEmailPtrn =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  static String kContainDigitPtrn = r'.*[0-9].*';

  static String kOnlyDigitPtrn = r'^-?[0-9]*$';

  static String kOnlyLettersPtrn = r'^[A-zÀ-ú\s]';
}
