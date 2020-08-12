import 'package:test/test.dart';

import 'SolutionB.dart';
import 'SolutionC.dart';
import 'main.dart';

void main() {
  test('2.2 print Kth to last', () {
    final head = beforeAll();
    for (var i = 0; i <= array.length + 1; i++) {
      final nodeB = SolutionB.kthToLastSimple(head, i);
      final nodeC = SolutionC.nthToLast(head, i);
      print('$nodeC, $nodeB');
      expect(nodeC, nodeB);
    }
  });
}
