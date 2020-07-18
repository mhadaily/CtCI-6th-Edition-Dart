// time: O(N)

class SolutionB {
  static bool _isSubstring(String big, String small) {
    return big.contains(small);
  }

  static bool isRotation(String s1, String s2) {
    final len = s1.length;
    /* check that s1 and s2 are equal length and not empty */
    if (len == s2.length && len > 0) {
      final s1s1 = '$s1$s1';
      return _isSubstring(s1s1, s2);
    }
    return false;
  }
}
