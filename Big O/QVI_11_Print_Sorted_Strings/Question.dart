class Question {
  static int numChars = 26;

  static void printSortedStrings(int remaining, [String prefix = '']) {
    if (remaining == 0) {
      if (isInOrder(prefix)) {
        print(prefix);
      }
    } else {
      for (int i = 0; i < numChars; i++) {
        String c = ithLetter(i);
        printSortedStrings(remaining - 1, '$prefix$c');
      }
    }
  }

  static bool isInOrder(String s) {
    bool isInOrder = true;
    for (int i = 1; i < s.length; i++) {
      int prev = (ithLetter((s[i - 1]).codeUnitAt(0))).codeUnitAt(0);
      int curr = (ithLetter((s[i]).codeUnitAt(0))).codeUnitAt(0);
      if (prev > curr) {
        isInOrder = false;
      }
    }
    return isInOrder;
  }

  static String ithLetter(int i) {
    return String.fromCharCode(((('a').codeUnitAt(0)) + i));
  }
}

void main() {
  final stopwatch = Stopwatch()..start();
  Question.printSortedStrings(5);
  stopwatch.stop();
  print('Question.printSortedStrings(5) executed in ${stopwatch.elapsed}');
}
