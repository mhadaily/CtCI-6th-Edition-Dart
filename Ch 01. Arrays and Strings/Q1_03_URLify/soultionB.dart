class SolutionB {
  static String urlify(String str) {
    // make sure we trim by the end so we get to last character immidiately
    return str.trimRight().split('').map((char) => char == ' ' ? '%20' : char).join('');
  }
}
