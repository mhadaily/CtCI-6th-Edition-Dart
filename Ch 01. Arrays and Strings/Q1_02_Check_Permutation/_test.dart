import 'package:test/test.dart';

import 'SolutionA.dart';
import 'SolutionB.dart';
import 'constants.dart';

void main() {
  test('Q1 P02 SolutionA', () {
    for (final pair in pairs) {
      final result = SolutionA.permutation(pair[0], pair[1]);
      final isTrue = pair[2] == 'true';
      expect(isTrue, result);
    }
  });

  test('Q1 P02 SolutionA', () {
    for (final pair in pairs) {
      final result = SolutionB.permutation(pair[0], pair[1]);
      final isTrue = pair[2] == 'true';
      expect(isTrue, result);
    }
  });
}
