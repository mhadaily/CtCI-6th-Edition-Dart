import './SolutionA.dart';
import './SolutionB.dart';
import './constants.dart';

void main() {
  for (final List<String> pair in pairs) {
    bool resultA = SolutionA.permutation(pair[0], pair[1]);
    bool resultB = SolutionB.permutation(pair[0], pair[1]);
    if (resultA == resultB) {
      print("${pair[0]}: ${pair[1]} => $resultA = $resultB");
    } else {
      print("word: ${pair[0]} VS ${pair[1]}  => $resultA != $resultB");
    }
  }
}
