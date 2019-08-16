import 'constants.dart';

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
    final int indexOffset = 'a'.codeUnitAt(0);
    int checker = 0;

    for (int i = 0; i < str.length; i++) {
      int val = str.codeUnitAt(i) - indexOffset;
      // Left shift
      final int mask = 1 << val;
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

void main() {
  for (final String word in words) {
    print("$word: ${SolutionB.isUniqueChars(word)}");
  }
}
