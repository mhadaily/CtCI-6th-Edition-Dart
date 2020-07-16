import 'Common.dart';

//todo(majid): THIS DOESN"T WORK 
class SolutionA {
  static bool _checkMaxOneOdd(List<int> table) {
    var foundOdd = false;
    for (final count in table) {
      if (count % 2 == 1) {
        if (foundOdd) {
          return false;
        }
        foundOdd = true;
      }
    }
    return true;
  }

  static bool isPermutationOfPalindrome(String phrase) {
    final table = Common.buildCharFrequencyTable(phrase);
    return _checkMaxOneOdd(table);
  }
}
