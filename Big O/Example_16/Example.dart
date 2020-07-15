/// package Example_16;
class Example {
  static int powersOf2(int n) {
    if (n < 1) {
      return 0;
    } else if (n == 1) {
      print(1);
      return 1;
    } else {
      final prev = powersOf2(n ~/ 2);
      final curr = prev * 2;
      print(curr);
      return curr;
    }
  }
}

void main() {
  Example.powersOf2(4);
}
