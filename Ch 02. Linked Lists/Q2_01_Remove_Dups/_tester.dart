import 'package:test/test.dart';

import 'SolutionA.dart';
import 'SolutionB.dart';
import 'SolutionC.dart';
import 'main.dart';

void main() {
  test('2.1 remove dups all soltuions same result', () {
    final head = beforeAll();
    final cloneA = head.clone();
    final cloneB = head.clone();
    final cloneC = head.clone();
    SolutionA.deleteDups(cloneA);
    SolutionB.deleteDups(cloneB);
    SolutionC.deleteDups(cloneC);
    expect(cloneA, cloneB);
    expect(cloneA, cloneC);
  });
}
