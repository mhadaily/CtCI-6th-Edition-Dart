import 'package:test/test.dart';

import 'SolutionA.dart';

void main() {
  test('Q1 P7 rotateMatrix Solution A...', () {
    expect(
      SolutionA.rotate(
        [
          [1, 2, 3, 4],
          [5, 6, 7, 8],
          [9, 10, 11, 12],
          [13, 14, 15, 16],
        ],
      ),
      [
        [13, 9, 5, 1],
        [14, 10, 6, 2],
        [15, 11, 7, 3],
        [16, 12, 8, 4]
      ],
    );
  });
}
