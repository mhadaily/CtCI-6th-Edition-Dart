import '../../utils/linked_list_node.dart';

class SolutionC {
  static LinkedListNode nthToLast(LinkedListNode head, int k) {
    var p1 = head;
    var p2 = head;

    /* Move p1 k nodes into the list.*/
    for (var i = 0; i < k; i++) {
      if (p1 == null) return null; // Out of bounds
      p1 = p1.next;
    }

    /* Move them at the same pace. When p1 hits the end, 
		 * p2 will be at the right element. */
    while (p1 != null) {
      p1 = p1.next;
      p2 = p2.next;
    }
    return p2;
  }
}
