import '../../utils/stop_watch.dart';
import 'SolutionA.dart';
import 'SolutionB.dart';
import 'SolutionC.dart';
import 'SolutionD.dart';
import 'constants.dart';

void main() {
  print('--------- Q1_01 Array and String ----------');
  void solutionA() {
    for (final word in words) {
      print('$word: ${SolutionA.isUniqueChars(word)}');
    }
  }

  void solutionB() {
    for (final word in words) {
      print('$word: ${SolutionB.isUniqueChars(word)}');
    }
  }

  void solutionC() {
    for (final word in words) {
      print('$word: ${SolutionC.isUniqueChars(word)}');
    }
  }

  void solutionD() {
    for (final word in words) {
      print('$word: ${SolutionD.isUniqueChars(word)}');
    }
  }

  measureExecutionTime(solutionA);
  measureExecutionTime(solutionB);
  measureExecutionTime(solutionC);
  measureExecutionTime(solutionD);

  print('--------- Q1_01 Array and String ----------');
}
