import 'package:test/test.dart';
import 'SolutionA.dart';
import 'SolutionB.dart';
import 'SolutionC.dart';
import 'SolutionD.dart';
import 'constants.dart';

void main() {
  const wordsToTest = [
    ['abcde', true],
    ['hello', false],
    ['apple', false],
    ['kite', true],
    ['padle', true],
    ['majid', true],
    ['mmajid', false],
  ];

  test('SolutionA each word is unique ..', () {
    for (final wordToTest in wordsToTest) {
      final expected = SolutionA.isUniqueChars(wordToTest[0] as String);
      expect(expected, equals(wordToTest[1]));
    }
  });

  test('SolutionB each word is unique ...', () {
    for (final wordToTest in wordsToTest) {
      final expected = SolutionB.isUniqueChars(wordToTest[0] as String);
      expect(expected, equals(wordToTest[1]));
    }
  });

  test('SolutionC each word is unique ...', () {
    for (final wordToTest in wordsToTest) {
      final expected = SolutionC.isUniqueChars(wordToTest[0] as String);
      expect(expected, equals(wordToTest[1]));
    }
  });

  test('SolutionD each word is unique ...', () {
    for (final wordToTest in wordsToTest) {
      final expected = SolutionD.isUniqueChars(wordToTest[0] as String);
      expect(expected, equals(wordToTest[1]));
    }
  });

  test('Solutions must return is unique all of them ...', () {
    for (final word in words) {
      final wordA = SolutionA.isUniqueChars(word);
      final wordB = SolutionB.isUniqueChars(word);
      final wordC = SolutionC.isUniqueChars(word);
      final wordD = SolutionD.isUniqueChars(word);

      expect(wordA, equals(wordB));
      expect(wordA, equals(wordC));
      expect(wordA, equals(wordD));
    }
  });
}
