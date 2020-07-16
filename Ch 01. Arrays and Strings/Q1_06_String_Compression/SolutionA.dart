// Time O[n x k]
// Assumption, String only has Lowercase/Uppercase [a-z]
class SolutionA {
  static String compressBad(String str) {
    var compressedStr = '';
    for (var i = 0; i < str.length; i++) {
      final char = str[i];
      var count = 1;
      while (i + 1 < str.length && char == str[i + 1]) {
        i++;
        count++;
      }
      // ignore: use_string_buffers
      compressedStr = '$compressedStr$char$count';
    }
    return compressedStr.length > str.length ? str : compressedStr;
  }
}
