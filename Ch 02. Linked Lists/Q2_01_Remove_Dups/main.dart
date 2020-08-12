import '../../utils/linked_list_node.dart';
import '../../utils/stop_watch.dart';

import 'SolutionA.dart';
import 'SolutionB.dart';
import 'SolutionC.dart';

LinkedListNode beforeAll() {
  var first = LinkedListNode(0, null, null); //AssortedMethods.randomLinkedList(1000, 0, 2);
  final head = first;
  var second = first;
  for (var i = 1; i < 8; i++) {
    second = LinkedListNode(i % 2, null, null);
    first.setNext(second);
    second.setPrevious(first);
    first = second;
  }
  print(head.printForward());
  return head;
}

void main() {
  print('--------- Q2_01 Remove Dups ----------');

  void solutionA() {
    final head = beforeAll();
    SolutionA.deleteDups(head);
  }

  void solutionB() {
    final head = beforeAll();
    SolutionB.deleteDups(head);
  }

  void solutionC() {
    final head = beforeAll();
    SolutionC.deleteDups(head);
  }

  measureExecutionTime(solutionA);
  measureExecutionTime(solutionB);
  measureExecutionTime(solutionC);

  print('--------- Q2_01 Remove dups ----------');
}
