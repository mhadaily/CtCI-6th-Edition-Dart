import 'constants.dart';

// Assumes it is not Case sensitive and space is not significant.
class SolutionA {
  static String sort(String s) {
    List<String> content = s.trim().toLowerCase().split('')..sort();
    return content.join('');
  }

  static bool permutation(String s, String t) {
    return sort(s) == sort(t);
  }
}

void main() {
  for (final List<String> pair in pairs) {
    String word1 = pair[0];
    String word2 = pair[1];
    bool anagram = SolutionA.permutation(word1, word2);
    print('$word1,$word2: $anagram');
  }
}
