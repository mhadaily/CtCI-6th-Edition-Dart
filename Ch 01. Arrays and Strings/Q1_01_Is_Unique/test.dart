import './SolutionA.dart';
import './SolutionB.dart';
import './SolutionC.dart';
import 'constants.dart';

void main() {
  for (final String word in words) {
    bool wordA = SolutionA.isUniqueChars(word);
    bool wordB = SolutionB.isUniqueChars(word);
    bool wordC = SolutionC.isUniqueChars(word);
    if (wordA == wordB && wordA == wordC) {
      print("$word: $wordA");
    } else {
      print("$word: $wordA VS $wordB VS $wordC");
    }
  }
}
