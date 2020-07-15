import '../../utils/stop_watch.dart';
import 'SolutionA.dart';
import 'SolutionB.dart';
import 'SolutionC.dart';
import 'constants.dart';

void main() {
  print('--------- Q1_02 Check Premutation ----------');
  void solutionA() {
    for (final pair in pairs) {
      final word1 = pair[0];
      final word2 = pair[1];
      final anagram = SolutionA.permutation(word1, word2);
      print('$word1,$word2: $anagram');
    }
  }

  void solutionB() {
    for (final pair in pairs) {
      final word1 = pair[0];
      final word2 = pair[1];
      final anagram = SolutionB.permutation(word1, word2);
      print('$word1,$word2: $anagram');
    }
  }

  void solutionC() {
    for (final pair in pairs) {
      final word1 = pair[0];
      final word2 = pair[1];
      final anagram = SolutionC.permutation(word1, word2);
      print('$word1,$word2: $anagram');
    }
  }

  measureExecutionTime(solutionA);
  measureExecutionTime(solutionB);
  measureExecutionTime(solutionC);

  print('--------- Q1_02 Check Premutation ----------');
}
