import '../../utils//random_matrix.dart';
import '../../utils/stop_watch.dart';

import 'SolutionA.dart';
import 'SolutionB.dart';

void main() {
  print('--------- Q1_08 Zero Matrix ----------');
  const nrows = 10;
  const ncols = 15;
  final matrix = randomMatrix(nrows, ncols, -10, 10);

  void solutionA() {
    print(matrix);
    SolutionA.setZeros(matrix);
    print(matrix);
  }

  void solutionB() {
    print(matrix);
    SolutionB.setZeros(matrix);
    print(matrix);
  }

  measureExecutionTime(solutionA);
  measureExecutionTime(solutionB);

  print('--------- Q1_08 Zero Matrix ----------');
}
