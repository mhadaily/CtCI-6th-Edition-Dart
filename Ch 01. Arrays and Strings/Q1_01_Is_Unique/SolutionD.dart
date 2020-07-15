class SolutionD {
  /* 
    Simple Approach by Set
    Assumes character set is ASCII (256 characters)
    Time: O(n) 
    Space: O(n)
   */
  static bool isUniqueChars(String str) {
    if (str.length > 256) return false;
    return Set<int>.of(str.codeUnits).length == str.length;
  }
}
