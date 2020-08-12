import '../../utils/linked_list_node.dart';

class SolutionA {
  static void deleteDups(LinkedListNode n) {
    final setInt = <int>{};
    LinkedListNode previous;
    while (n != null) {
      if (setInt.contains(n.data)) {
        previous.next = n.next;
      } else {
        setInt.add(n.data);
        previous = n;
      }
      // ignore: parameter_assignments
      n = n.next;
    }
  }
}
