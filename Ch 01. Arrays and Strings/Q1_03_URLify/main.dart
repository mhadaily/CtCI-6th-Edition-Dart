import '../../utils/stop_watch.dart';

import 'soultionA.dart';
import 'soultionB.dart';
import 'soultionC.dart';

const str = 'Mr John Smith    ';
const trueLength = 13;
const expStr = 'Mr%20John%20Smith';

void main() {
  print('--------- Q1_02 URLify ----------');

  void solutionA() {
    final urlified = SolutionA.urlify(str);
    print('"$str" is now convrted to "$urlified"');
  }

  void solutionB() {
    final urlified = SolutionB.urlify(str);
    print('"$str" is now convrted to "$urlified"');
  }

  void solutionC() {
    final urlified = SolutionC.urlify(str, 13);
    print('"$str" is now convrted to "$urlified"');
  }

  measureExecutionTime(solutionA);
  measureExecutionTime(solutionB);
  measureExecutionTime(solutionC);

  print('--------- Q1_02 URLify ----------');
}
