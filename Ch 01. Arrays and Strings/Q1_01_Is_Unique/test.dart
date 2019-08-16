import './SolutionA.dart';
import './SolutionB.dart';
import 'constants.dart';

void main() {
  for (final String word in words) {
    bool wordA = SolutionA.isUniqueChars(word);
    bool wordB = SolutionB.isUniqueChars(word);
    if (wordA == wordB) {
      print("$word: $wordA");
    } else {
      print("$word: $wordA VS $wordB");
    }
  }
}
