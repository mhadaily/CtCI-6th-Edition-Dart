import '../../utils/linked_list_node.dart';

class SolutionA {
  static int printKthToLast(LinkedListNode head, int k) {
    if (head == null) {
      return 0;
    }
    final index = printKthToLast(head.next, k) + 1;
    if (index == k) {
      print('$k th to last node is  ${head.data}');
    }
    return index;
  }
}
