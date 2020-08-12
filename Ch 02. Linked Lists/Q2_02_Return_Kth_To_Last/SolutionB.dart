import '../../utils/linked_list_node.dart';

class Index {
  int value = 0;
}

class SolutionB {
  static LinkedListNode kthToLastSimple(LinkedListNode head, int k) {
    final idx = Index();
    return kthToLast(head, k, idx);
  }

  static LinkedListNode kthToLast(LinkedListNode head, int k, Index idx) {
    if (head == null) {
      return null;
    }
    final node = kthToLast(head.next, k, idx);
    idx.value = idx.value + 1;
    if (idx.value == k) {
      return head;
    }
    return node;
  }
}
