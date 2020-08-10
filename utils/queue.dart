class NoSuchElementException implements Exception {}

class QueueNode<T> {
  QueueNode(this.data);
  T data;
  QueueNode<T> next;

  @override
  String toString() {
    return '{ Data: $data, Next: $next }';
  }
}

class Queue<T> {
  QueueNode<T> first;
  QueueNode<T> last;

  void add(T item) {
    final t = QueueNode<T>(item);
    if (last != null) {
      last.next = t;
    }
    last = t;
    first ??= last;
  }

  T remove() {
    if (first == null) {
      throw NoSuchElementException();
    }

    final data = first.data;
    first = first.next;
    return data;
  }

  T peek() {
    if (first == null) {
      throw NoSuchElementException();
    }

    return first.data;
  }

  bool isEmpty() {
    return first == null;
  }

  @override
  String toString() {
    return 'First: $first, Last: $last';
  }
}

// Examples
void main() {
  final Queue q1 = Queue<int>()..add(2)..add(3)..add(4)..add(5);
  print('Queue: $q1');
  print('Peek: ${q1.peek()}');
  print('Remove: ${q1.remove()}');
  print('Queue: $q1');
}
