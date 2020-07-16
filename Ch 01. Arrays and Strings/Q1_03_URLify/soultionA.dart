class SolutionA {
  // Assume string has sufficient free space at the end
  static String _replaceSpaces(List<String> str, int trueLength) {
    var spaceCount = 0;
    var index = 0;
    var i = 0;

    for (i = 0; i < trueLength; i++) {
      if (str[i] == ' ') {
        spaceCount++;
      }
    }

    index = trueLength + spaceCount * 2;

    if (trueLength < str.length) {
      str[trueLength] = '';
    }

    for (i = trueLength - 1; i >= 0; i--) {
      if (str[i] == ' ') {
        str[index - 1] = '0';
        str[index - 2] = '2';
        str[index - 3] = '%';
        index = index - 3;
      } else {
        str[index - 1] = str[i];
        index--;
      }
    }

    return str.join('');
  }

  static int _findLastCharacter(List<String> str) {
    for (var i = str.length - 1; i >= 0; i--) {
      if (str[i] != ' ') {
        return i;
      }
    }
    return -1;
  }

  static String urlify(String str) {
    final arr = str.split('');
    final trueLength = _findLastCharacter(arr) + 1;
    return _replaceSpaces(arr, trueLength);
  }
}
