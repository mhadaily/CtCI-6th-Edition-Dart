// Time  : O(N)
class SolutionC {
  static String compressString(String str) {
    final buffer = StringBuffer();
    for (var i = 0; i < str.length; i++) {
      final char = str[i];
      var count = 1;
      while (i + 1 < str.length && char == str[i + 1]) {
        i++;
        count++;
      }
      buffer.write('$char$count');
    }
    final compressedStr = buffer.toString();
    return compressedStr.length < str.length ? compressedStr : str;
  }
}
