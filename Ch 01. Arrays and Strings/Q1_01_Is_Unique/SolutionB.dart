class SolutionB {
  /* 
    Assumes only letters a through z and lowercase;
    O(n) approach and reducing space
    Read more for Bitwise and shift operatos 
    https://dart.dev/guides/language/language-tour#bitwise-and-shift-operators
   */
  static bool isUniqueChars(String str) {
    if (str.length > 26) {
      // Only 26 characters
      return false;
    }
    final indexOffset = 'a'.codeUnitAt(0);
    var checker = 0;

    for (var i = 0; i < str.length; i++) {
      final val = str.codeUnitAt(i) - indexOffset;
      // Left shift
      final mask = 1 << val;
      // Binary AND
      if ((checker & mask) > 0) {
        return false;
      }
      // Bitwise inclusive OR and assign; a|=5 is equivalent to a=a|5
      checker |= mask;
    }

    return true;
  }
}
