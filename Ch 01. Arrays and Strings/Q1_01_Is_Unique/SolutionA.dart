import 'constants.dart';

class SolutionA {
  /* 
    Assumes character set is ASCII (128 characters). 
    O(n) approach
  */
  static bool isUniqueChars(String str) {
    if (str.length > 128) {
      return false;
    }
    List<bool> char_set = List.filled(128, false);
    for (int i = 0; i < str.length; i++) {
      int val = str.codeUnitAt(i);
      if (char_set[val]) {
        return false;
      }
      char_set[val] = true;
    }
    return true;
  }
}

void main() {
  for (final String word in words) {
    print("$word: ${SolutionA.isUniqueChars(word)}");
  }
}
