// Assumes Case sensitive and space is significant.
class SolutionA {
  static String sort(String s) {
    final content = s.split('')..sort();
    return content.join('');
  }

  static bool permutation(String s, String t) {
    return sort(s) == sort(t);
  }
}
