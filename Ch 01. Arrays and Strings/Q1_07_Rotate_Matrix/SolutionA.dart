// time : O(n^2)

class SolutionA {
  static List<List<int>> rotate(List<List<int>> matrix) {
    if (matrix.isEmpty || matrix.length != matrix.first.length) {
      throw Exception('Not a square');
    }

    final n = matrix.length;

    for (var layer = 0; layer < n / 2; layer++) {
      final first = layer;
      final last = n - 1 - layer;
      for (var i = first; i < last; i++) {
        final offset = i - first;
        final top = matrix[first][i]; // save top

        // left -> top
        matrix[first][i] = matrix[last - offset][first];

        // bottom -> left
        matrix[last - offset][first] = matrix[last][last - offset];

        // right -> bottom
        matrix[last][last - offset] = matrix[i][last];

        // top -> right
        matrix[i][last] = top; // right <- saved top
      }
    }

    return matrix;
  }
}
