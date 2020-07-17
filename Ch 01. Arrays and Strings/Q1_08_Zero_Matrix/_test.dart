import 'package:test/test.dart';

import 'SolutionA.dart';
import 'SolutionB.dart';

final List<List<int>> m1 = [
  [1, 1, 1, 1],
  [1, 0, 1, 1],
  [1, 1, 1, 1],
  [1, 1, 1, 0],
];

final List<List<int>> m2 = [
  [1, 1, 1, 1],
  [1, 0, 1, 1],
  [1, 1, 1, 1],
  [1, 1, 1, 0],
];

final List<List<int>> mExpected = [
  [1, 0, 1, 0],
  [0, 0, 0, 0],
  [1, 0, 1, 0],
  [0, 0, 0, 0],
];

void main() {
  test('1.8 zeroMatrix Solution A', () {
    SolutionA.setZeros(m1);
    expect(m1, mExpected);
  });

  test('1.8 zeroMatrix Solution B', () {
    SolutionB.setZeros(m2);
    expect(m2, mExpected);
  });
}
