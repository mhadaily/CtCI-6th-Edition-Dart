import 'constants.dart';

class SolutionC {
  /* 
    Assumes no additional data structure is allowed
    O(n²) approach
    We need to compare each charater for remaining characters to find duplicate
   */
  static bool isUniqueChars(String str) {
    for (int i = 0; i < str.length; i++) {
      for (int j = i + 1; j < str.length; j++) {
        if (str[i] == str[j]) {
          return false; // if match, that means a duplicate and it's not unique
        }
      }
    }
    return true;
  }
}

void main() {
  for (final String word in words) {
    print("$word: ${SolutionC.isUniqueChars(word)}");
  }
}
