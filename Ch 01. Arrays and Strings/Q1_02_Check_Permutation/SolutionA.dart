// Assumes Case sensitive and space is significant.
class SolutionA {
  static String sort(String s) {
    final content = s.split('')..sort();
    return content.join('');
  }

  static bool permutation(String s, String t) {
    if (s.length != t.length) {
      return false;
    }
    return sort(s) == sort(t);
  }
}
