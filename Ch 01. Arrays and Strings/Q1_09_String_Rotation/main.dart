import '../../utils/stop_watch.dart';

import 'SolutionA.dart';

final List<List<String>> pairs = [
  ['apple', 'pleap', 'true'],
  ['waterbottle', 'erbottlewat', 'true'],
  ['camera', 'macera', 'false']
];

void main() {
  print('--------- Q1_09 String rotation ----------');

  void solutionA() {
    for (final pair in pairs) {
      final word1 = pair[0];
      final word2 = pair[1];
      final isRotation = SolutionA.isRotation(word1, word2);
      print('$word1, $word2:  $isRotation');
    }
  }

  void solutionB() {
    for (final pair in pairs) {
      final word1 = pair[0];
      final word2 = pair[1];
      final isRotation = SolutionA.isRotation(word1, word2);
      print('$word1, $word2:  $isRotation');
    }
  }

  measureExecutionTime(solutionA);
  measureExecutionTime(solutionB);

  print('--------- Q1_09 String rotation ----------');
}
