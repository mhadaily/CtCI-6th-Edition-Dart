class LinkedListNode {
  LinkedListNode(this.data, LinkedListNode n, LinkedListNode p) {
    setNext(n);
    setPrevious(p);
  }

  factory LinkedListNode.createLinkedListFromArray(List<int> vals) {
    final head = LinkedListNode(vals[0], null, null);
    var current = head;
    for (var i = 1; i < vals.length; i++) {
      current = LinkedListNode(vals[i], null, current);
    }
    return head;
  }

  LinkedListNode next;
  LinkedListNode prev;
  LinkedListNode last;
  int data;

  void setNext(LinkedListNode n) {
    next = n;
    if (this == last) {
      last = n;
    }
    if (n != null && n.prev != this) {
      n.setPrevious(this);
    }
  }

  void setPrevious(LinkedListNode p) {
    prev = p;
    if (p != null && p.next != this) {
      p.setNext(this);
    }
  }

  String printForward() {
    if (next != null) {
      return '$data + "->" + ${next.printForward()}';
    } else {
      return data.toString();
    }
  }

  LinkedListNode clone() {
    LinkedListNode next2;
    if (next != null) {
      next2 = next.clone();
    }
    final head2 = LinkedListNode(data, next2, null);
    return head2;
  }
}
