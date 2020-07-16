import 'package:test/test.dart';

import 'main.dart';
import 'soultionA.dart';
import 'soultionB.dart';
import 'soultionC.dart';

void main() {
  test('Expected to urlify solutionA ', () {
    final exp = SolutionA.urlify(str);

    expect(expStr, exp);
  });

  test('Expected to urlify solutionB ', () {
    final exp = SolutionB.urlify(str);

    expect(expStr, exp);
  });

  test('Expected to urlify solutionC ', () {
    final exp = SolutionC.urlify(str, trueLength);

    expect(expStr, exp);
  });
}
