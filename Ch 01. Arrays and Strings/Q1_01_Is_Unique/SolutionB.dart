import 'constants.dart';

class SolutionB {
  /* Assumes only letters a through z. */
  static isUniqueChars(String str) {
    if (str.length > 26) {
      // Only 26 characters
      return false;
    }
    int checker = 0;
    for (int i = 0; i < str.length; i++) {
      int val = str.codeUnitAt(i) - 'a'.codeUnitAt(0);
      // Bitwise operator
      if ((checker & (1 << val)) > 0) {
        return false;
      }
      checker |= (1 << val);
    }
    return true;
  }
}

void main() {
  for (final String word in words) {
    print("$word: ${SolutionB.isUniqueChars(word)}");
  }
}
