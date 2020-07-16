import '../../utils/stop_watch.dart';
import 'SolutionA.dart';
import 'SolutionB.dart';

const strings = [
  'Tact Coa',
  'Tact boa',
  'Rats live on no evil star',
  'A man, a plan, a canal, panama',
  'Zeus was deified, saw Suez',
  'Lleve',
  'Tacotac',
  'asda'
];

void main() {
  print('--------- Q1_04 Palindrome Permutation ----------');

  void solutionA() {
    for (final str in strings) {
      print(SolutionA.isPermutationOfPalindrome(str));
    }
  }

  void solutionB() {
    for (final str in strings) {
      print(SolutionB.isPermutationOfPalindrome(str));
    }
  }

  measureExecutionTime(solutionA);
  measureExecutionTime(solutionB);

  print('--------- Q1_04 Palindrome Permutation ----------');
}
