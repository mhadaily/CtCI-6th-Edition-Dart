// Time: O(N), where n is time of shorter string

class SolutionB {
  static bool oneEditAway(String first, String second) {
    /* Length checks. */
    if ((first.length - second.length).abs() > 1) {
      return false;
    }

    /* Get shorter and longer string.*/
    final s1 = first.length < second.length ? first : second;
    final s2 = first.length < second.length ? second : first;

    var index1 = 0;
    var index2 = 0;
    var foundDifference = false;
    while (index2 < s2.length && index1 < s1.length) {
      if (s1[index1] != s2[index2]) {
        /* Ensure that this is the first difference found.*/
        if (foundDifference) return false;
        foundDifference = true;
        if (s1.length == s2.length) {
          // On replace, move shorter pointer
          index1++;
        }
      } else {
        index1++; // If matching, move shorter pointer
      }
      index2++; // Always move pointer for longer string
    }
    return true;
  }
}
