/// Singly linked list
///
/// This one is simple but has reference issue, however, if we wrap this
/// another class for example look at the second implementaiton , it will work
/// BTW, dart has LinkedList class constructor to create double-linked list
/// look at [dart:collection]
class Node {
  Node(this.data);

  Node next;
  int data;

  void addToTail(int d) {
    final end = Node(d);
    var n = this;
    while (n.next != null) {
      n = n.next;
    }
    n.next = end;
  }

  @override
  String toString() => 'node $data, next: $next';
}

/// Double-linked list
///
/// A node class for doubly linked list
class NodeDoubly {
  NodeDoubly(this.data);

  int data;
  NodeDoubly previous;
  NodeDoubly next;

  @override
  String toString() => 'prev: $previous, node $data, next: $next';
}

class DoublyLinkedList {
  //Initially, heade and tail is set to null
  NodeDoubly head;
  NodeDoubly tail;

  //add a node to the list
  void addNode(int item) {
    //Create a new node
    final newNode = NodeDoubly(item);

    //if list is empty, head and tail points to newNode
    if (head == null) {
      head = tail = newNode;
      //head's previous will be null
      head.previous = null;
      //tail's next will be null
      tail.next = null;
    } else {
      //add newNode to the end of list. tail->next set to newNode
      tail.next = newNode;
      //newNode->previous set to tail
      newNode.previous = tail;
      //newNode becomes new tail
      tail = newNode;
      //tail's next point to null
      tail.next = null;
    }
  }

  void printNodes() {
    //Node current will point to head
    var current = head;
    if (head == null) {
      print('Doubly linked list is empty');
      return;
    }
    print('Nodes of doubly linked list: ');
    while (current != null) {
      //Print each node and then go to next.
      print('${current?.previous?.data} ${current.data} ${current?.next?.data}');
      current = current.next;
    }
  }

  @override
  String toString() => 'head: $head; tail: $tail';
}

void main() {
  final test = Node(1)..addToTail(10)..addToTail(3)..addToTail(7)..addToTail(6);
  final test2 = DoublyLinkedList()..addNode(10)..addNode(3)..addNode(7)..addNode(6);
  print(test);
  test2.printNodes();
}
