class SolutionC {
  /* 
    Assumes no additional data structure is allowed
    Time: O(n²) 
    We need to compare each charater for remaining characters to find duplicate
   */
  static bool isUniqueChars(String str) {
    for (var i = 0; i < str.length; i++) {
      for (var j = i + 1; j < str.length; j++) {
        if (str[i] == str[j]) {
          return false; // if match, that means a duplicate and it's not unique
        }
      }
    }
    return true;
  }
}
