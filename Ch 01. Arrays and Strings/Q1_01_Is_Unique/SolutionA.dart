class SolutionA {
  /* 
    Assumes character set is ASCII (128 characters). 
    Time: O(n) 
  */
  static bool isUniqueChars(String str) {
    if (str.length > 128) {
      return false;
    }
    final charSet = List.filled(128, false);
    for (var i = 0; i < str.length; i++) {
      final val = str.codeUnitAt(i);
      if (charSet[val]) {
        return false;
      }
      charSet[val] = true;
    }
    return true;
  }
}
