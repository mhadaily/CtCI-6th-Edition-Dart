import '../../utils/linked_list_node.dart';

class SolutionB {
  static void deleteDups(LinkedListNode head) {
    var current = head;
    while (current != null) {
      /* Remove all future nodes that have the same value */
      var runner = current;
      while (runner.next != null) {
        if (runner.next.data == current.data) {
          runner.next = runner.next.next;
        } else {
          runner = runner.next;
        }
      }
      current = current.next;
    }
  }
}
