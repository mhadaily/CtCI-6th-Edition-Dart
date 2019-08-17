import 'constants.dart';

// Assume that it's case sensitive and space is significant.
class SolutionB {
  static bool permutation(String s, String t) {
    // Permutations must be same length
    if (s.length != t.length) {
      return false;
    }

    // Assumption: ASCII
    List<int> letters = List.filled(128, 0);

    for (int i = 0; i < s.length; i++) {
      letters[s.codeUnitAt(i)]++;
    }

    for (int i = 0; i < t.length; i++) {
      letters[t.codeUnitAt(i)]--;
      if (letters[t.codeUnitAt(i)] < 0) {
        return false;
      }
    }

    return true; // letters array has no negative values, and therefore no positive values either
  }
}

void main() {
  for (List<String> pair in pairs) {
    String word1 = pair[0];
    String word2 = pair[1];
    bool anagram = SolutionB.permutation(word1, word2);
    print('$word1,$word2: $anagram');
  }
}
