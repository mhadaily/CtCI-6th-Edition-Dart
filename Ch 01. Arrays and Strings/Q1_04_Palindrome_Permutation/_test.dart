import 'package:test/test.dart';

import 'SolutionA.dart';
import 'SolutionB.dart';
import 'main.dart';

void main() {
  test('Solution A ...', () {
    final isPalindrome = SolutionA.isPermutationOfPalindrome(strings[0]);

    expect(true, isPalindrome);
  });

  test('Solution B ...', () {
    final isPalindrome = SolutionB.isPermutationOfPalindrome(strings[0]);

    expect(true, isPalindrome);
  });
}
