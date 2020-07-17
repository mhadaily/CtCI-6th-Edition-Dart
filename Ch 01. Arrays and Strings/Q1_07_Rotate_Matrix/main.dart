import '../../utils//random_matrix.dart';
import '../../utils/stop_watch.dart';

import 'SolutionA.dart';

void main() {
  print('--------- Q1_07 Rotate Matrix ----------');

  void solutionA() {
    final matrix = randomMatrix(3, 3, 0, 9);
    print(matrix);
    SolutionA.rotate(matrix);
    print(matrix);
  }

  measureExecutionTime(solutionA);

  print('--------- Q1_07 Rotate Matrix ----------');
}
