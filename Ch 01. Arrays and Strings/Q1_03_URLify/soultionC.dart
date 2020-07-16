class SolutionC {
  static String _replaceSpaces(List<String> str, int trueLength) {
    var pointer = 0;

    if (trueLength < str.length) {
      str[trueLength] = '';
    }

    while (pointer < str.length) {
      if (str[pointer] == ' ') {
        for (var i = str.length - 1; i > pointer + 2; i--) {
          str[i] = str[i - 2];
        }
        str[pointer] = '%';
        str[pointer + 1] = '2';
        str[pointer + 2] = '0';
      }

      pointer++;
    }

    return str.join('');
  }

  static String urlify(String str, int trueLength) {
    return _replaceSpaces(str.split(''), trueLength);
  }
}
