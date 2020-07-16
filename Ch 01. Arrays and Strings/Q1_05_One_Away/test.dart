import 'package:test/test.dart';

import 'SolutionA.dart';
import 'SolutionB.dart';
import 'main.dart';

void main() {
  test('Solution A must return correct value...', () {
    for (var i = 0; i < tests.length; i++) {
      final tester = tests[i];
      final a = tester[0];
      final b = tester[1];
      final resultA = SolutionA.oneEditAway(a, b);
      expect(tester[2], resultA ? 'true' : 'false');
    }
  });

  test('Solution B must return correct value... ', () {
    for (var i = 0; i < tests.length; i++) {
      final tester = tests[i];
      final a = tester[0];
      final b = tester[1];
      final resultA = SolutionB.oneEditAway(a, b);
      expect(tester[2], resultA ? 'true' : 'false');
    }
  });
}
