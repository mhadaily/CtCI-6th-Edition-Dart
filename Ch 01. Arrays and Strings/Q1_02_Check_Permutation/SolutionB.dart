// Assume that it's case sensitive and space is significant.
class SolutionB {
  static bool permutation(String s, String t) {
    // Permutations must be same length
    if (s.length != t.length) {
      return false;
    }

    // Assumption: ASCII
    final letters = List.filled(128, 0);

    for (var i = 0; i < s.length; i++) {
      letters[s.codeUnitAt(i)]++;
    }

    for (var i = 0; i < t.length; i++) {
      letters[t.codeUnitAt(i)]--;
      if (letters[t.codeUnitAt(i)] < 0) {
        return false;
      }
    }

    return true; // letters array has no negative values, and therefore no positive values either
  }
}
