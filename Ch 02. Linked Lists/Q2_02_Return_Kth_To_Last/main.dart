import '../../utils/linked_list_node.dart';
import '../../utils/stop_watch.dart';

import 'SolutionA.dart';
import 'SolutionB.dart';
import 'SolutionC.dart';

final List<int> array = <int>[0, 1, 2, 3, 4, 5, 6];

LinkedListNode beforeAll() {
  final head = LinkedListNode.createLinkedListFromArray(array);
  return head;
}

void main() {
  print('--------- Q2_02 Return Kth to Last ----------');

  void solutionA() {
    final head = beforeAll();
    for (var i = 0; i <= array.length + 1; i++) {
      SolutionA.printKthToLast(head, i);
    }
  }

  void solutionB() {
    final head = beforeAll();
    for (var i = 0; i <= array.length + 1; i++) {
      final node = SolutionB.kthToLastSimple(head, i);
      final nodeValue = node == null ? 'null' : '${node.data}';
      print('$i : $nodeValue');
    }
  }

  void solutionC() {
    final head = beforeAll();
    for (var i = 0; i <= array.length + 1; i++) {
      final node = SolutionC.nthToLast(head, i);
      final nodeValue = node == null ? 'null' : '${node.data}';
      print('$i : $nodeValue');
    }
  }

  measureExecutionTime(solutionA);
  measureExecutionTime(solutionB);
  measureExecutionTime(solutionC);

  print('--------- Q2_02 Return Kth to Last ----------');
}
