import 'package:test/test.dart';

import 'SolutionA.dart';
import 'SolutionB.dart';
import 'SolutionC.dart';
import 'main.dart';

void main() {
  test('Solution A must return correct compress string...', () {
    final matcher = SolutionA.compressBad(str);
    expect(expectedCompress, matcher);
  });

  test('Solution B must return correct compress string...', () {
    final matcher = SolutionB.compressBad(str);
    expect(expectedCompress, matcher);
  });

  test('Solution C must return correct compress string...', () {
    final matcher = SolutionC.compressString(str);
    expect(expectedCompress, matcher);
  });
}
