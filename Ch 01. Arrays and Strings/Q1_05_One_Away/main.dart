import '../../utils/stop_watch.dart';
import 'SolutionA.dart';
import 'SolutionB.dart';

final List<List<String>> tests = <List<String>>[
  ['a', 'b', 'true'],
  ['', 'd', 'true'],
  ['d', 'de', 'true'],
  ['pale', 'pse', 'false'],
  ['acdsfdsfadsf', 'acdsgdsfadsf', 'true'],
  ['acdsfdsfadsf', 'acdsfdfadsf', 'true'],
  ['acdsfdsfadsf', 'acdsfdsfads', 'true'],
  ['acdsfdsfadsf', 'cdsfdsfadsf', 'true'],
  ['adfdsfadsf', 'acdfdsfdsf', 'false'],
  ['adfdsfadsf', 'bdfdsfadsg', 'false'],
  ['adfdsfadsf', 'affdsfads', 'false'],
  ['pale', 'pkle', 'true'],
  ['pkle', 'pable', 'false']
];
void main() {
  print('--------- Q1_05 One Away ----------');

  void solutionA() {
    for (final test in tests) {
      print(SolutionA.oneEditAway(test[0], test[1]));
    }
  }

  void solutionB() {
    for (final test in tests) {
      print(SolutionB.oneEditAway(test[0], test[1]));
    }
  }

  measureExecutionTime(solutionA);
  measureExecutionTime(solutionB);

  print('--------- Q1_05 One Away ----------');
}
