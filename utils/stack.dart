class NoSuchElementException implements Exception {}

class StackNode<T> {
  StackNode(this.data);
  T data;
  StackNode<T> next;

  @override
  String toString() {
    return '{ Data: $data, Next: $next }';
  }
}

class Stack<T> {
  StackNode<T> top;

  void push(T item) {
    final t = StackNode<T>(item);
    t.next = top;
    top = t;
  }

  T pop() {
    if (top == null) {
      throw NoSuchElementException();
    }

    final data = top.data;
    top = top.next;
    return data;
  }

  T peek() {
    if (top == null) {
      throw NoSuchElementException();
    }

    return top.data;
  }

  bool isEmpty() {
    return top == null;
  }

  @override
  String toString() {
    return 'top: $top';
  }
}

// Examples
void main() {
  final Stack q1 = Stack<int>()..push(2)..push(3)..push(4)..push(5);
  print('Stack: $q1');
  print('Peek: ${q1.peek()}');
  print('pop: ${q1.pop()}');
  print('Stack: $q1');
}
