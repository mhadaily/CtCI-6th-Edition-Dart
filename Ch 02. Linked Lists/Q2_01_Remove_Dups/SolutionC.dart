import '../../utils/linked_list_node.dart';

class SolutionC {
  static void deleteDups(LinkedListNode head) {
    if (head == null) return;
    var previous = head;
    var current = previous.next;
    while (current != null) {
      // Look backwards for dups, and remove any that you see.
      var runner = head;
      while (runner != current) {
        if (runner.data == current.data) {
          final tmp = current.next;
          previous.next = tmp;
          current = tmp;
          /* We know we can't have more than one dup preceding
					 * our element since it would have been removed 
					 * earlier. */
          break;
        }
        runner = runner.next;
      }

      /* If runner == current, then we didn't find any duplicate 
			 * elements in the previous for loop.  We then need to 
			 * increment current.  
			 * If runner != current, then we must have hit the �break� 
			 * condition, in which case we found a dup and current has
			 * already been incremented.*/
      if (runner == current) {
        previous = current;
        current = current.next;
      }
    }
  }
}
