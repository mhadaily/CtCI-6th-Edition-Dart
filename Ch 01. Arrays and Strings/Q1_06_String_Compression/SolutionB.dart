// Time O(n power 2)

class SolutionB {
  static String compressBad(String str) {
    var compressedString = '';
    var countConsecutive = 0;
    for (var i = 0; i < str.length; i++) {
      countConsecutive++;

      /* If next character is different than current, append this char to result.*/
      if (i + 1 >= str.length || str[i] != str[i + 1]) {
        compressedString += '${str[i]}$countConsecutive';
        countConsecutive = 0;
      }
    }
    return compressedString.length < str.length ? compressedString : str;
  }
}
