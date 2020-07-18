// time: O(N)

class SolutionA {
  static bool _isSubstring(String big, String small) {
    return big.contains(small);
  }

  static bool isRotation(String s1, String s2) {
    final stringBuffer = StringBuffer();
    final len = s1.length;
    /* check that s1 and s2 are equal length and not empty */
    if (len == s2.length && len > 0) {
      /* concatenate s1 and s1 within new buffer */
      stringBuffer.write('$s1$s1');

      return _isSubstring(stringBuffer.toString(), s2);
    }
    return false;
  }
}
