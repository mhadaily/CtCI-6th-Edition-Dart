import '../../utils/stop_watch.dart';

import 'SolutionA.dart';
import 'SolutionB.dart';
import 'SolutionC.dart';

const str = 'aaaaabbbbaaaabbddc';
const expectedCompress = 'a5b4a4b2d2c1';
void main() {
  print('--------- Q1_06 compress String ----------');

  void solutionA() {
    print(SolutionA.compressBad(str));
  }

  void solutionB() {
    print(SolutionB.compressBad(str));
  }

  void solutionC() {
    print(SolutionC.compressString(str));
  }

  measureExecutionTime(solutionA);
  measureExecutionTime(solutionB);
  measureExecutionTime(solutionC);

  print('--------- Q1_06 compress String ----------');
}
