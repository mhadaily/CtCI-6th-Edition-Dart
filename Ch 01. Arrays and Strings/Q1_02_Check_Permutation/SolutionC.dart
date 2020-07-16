// Assumes it is not Case sensitive and space is not significant.
class SolutionC {
  static String sort(String s) {
    final content = s.trim().toLowerCase().split('')..sort();
    return content.join('');
  }

  static bool permutation(String s, String t) {
    if (s.length != t.length) {
      return false;
    }
    return sort(s) == sort(t);
  }
}
