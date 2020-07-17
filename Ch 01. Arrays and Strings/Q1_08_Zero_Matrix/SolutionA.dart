// Time: O(N*M)
// Space: O(nM)

class SolutionA {
  static void setZeros(List<List<int>> matrix) {
    final row = List<bool>.filled(matrix.length, false);
    final column = List<bool>.filled(matrix.first.length, false);

    // Store the row and column index with value 0
    for (var i = 0; i < matrix.length; i++) {
      for (var j = 0; j < matrix[0].length; j++) {
        if (matrix[i][j] == 0) {
          row[i] = true;
          column[j] = true;
        }
      }
    }

    // Nullify rows
    for (var i = 0; i < row.length; i++) {
      if (row[i]) {
        for (var j = 0; j < matrix.first.length; j++) {
          matrix[i][j] = 0;
        }
      }
    }

    // Nullify columns
    for (var j = 0; j < column.length; j++) {
      if (column[j]) {
        for (var i = 0; i < matrix.length; i++) {
          matrix[i][j] = 0;
        }
      }
    }
  }
}
