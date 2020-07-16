// Time: O(N), where n is time of shorter string

class SolutionA {
  static bool oneEditReplace(String s1, String s2) {
    var foundDifference = false;
    for (var i = 0; i < s1.length; i++) {
      if (s1[i] != s2[i]) {
        // more than one difference
        if (foundDifference) {
          return false;
        }

        foundDifference = true;
      }
    }
    return true;
  }

  /* Check if you can insert a character into s1 to make s2. */
  static bool oneEditInsert(String s1, String s2) {
    var index1 = 0;
    var index2 = 0;
    while (index2 < s2.length && index1 < s1.length) {
      if (s1[index1] != s2[index2]) {
        if (index1 != index2) {
          return false;
        }
        index2++;
      } else {
        index1++;
        index2++;
      }
    }
    return true;
  }

  static bool oneEditAway(String first, String second) {
    if (first.length == second.length) {
      return oneEditReplace(first, second);
    } else if (first.length + 1 == second.length) {
      return oneEditInsert(first, second);
    } else if (first.length - 1 == second.length) {
      return oneEditInsert(second, first);
    }
    return false;
  }
}
