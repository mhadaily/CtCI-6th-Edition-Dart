import 'package:test/test.dart';

import 'SolutionA.dart';
import 'SolutionB.dart';
import 'main.dart';

void main() {
  test('1.9 string rotation Solution A', () {
    for (final pair in pairs) {
      final word1 = pair[0];
      final word2 = pair[1];
      final isRotation = SolutionA.isRotation(word1, word2);
      expect(isRotation, pair[2] == 'true');
    }
  });

  test('1.9 string rotation Solution B', () {
    for (final pair in pairs) {
      final word1 = pair[0];
      final word2 = pair[1];
      final isRotation = SolutionB.isRotation(word1, word2);
      expect(isRotation, pair[2] == 'true');
    }
  });
}
