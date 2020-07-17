// time O(n*m)
// space o(1)

class SolutionB {
  static void nullifyRow(List<List<int>> matrix, int row) {
    for (var j = 0; j < matrix[0].length; j++) {
      matrix[row][j] = 0;
    }
  }

  static void nullifyColumn(List<List<int>> matrix, int col) {
    for (var i = 0; i < matrix.length; i++) {
      matrix[i][col] = 0;
    }
  }

  static void setZeros(List<List<int>> matrix) {
    var rowHasZero = false;
    var colHasZero = false;

    // Check if first row has a zero
    for (var j = 0; j < matrix[0].length; j++) {
      if (matrix[0][j] == 0) {
        rowHasZero = true;
        break;
      }
    }

    // Check if first column has a zero
    for (var i = 0; i < matrix.length; i++) {
      if (matrix[i][0] == 0) {
        colHasZero = true;
        break;
      }
    }

    // Check for zeros in the rest of the array
    for (var i = 1; i < matrix.length; i++) {
      for (var j = 1; j < matrix[0].length; j++) {
        if (matrix[i][j] == 0) {
          matrix[i][0] = 0;
          matrix[0][j] = 0;
        }
      }
    }

    // Nullify rows based on values in first column
    for (var i = 1; i < matrix.length; i++) {
      if (matrix[i][0] == 0) {
        nullifyRow(matrix, i);
      }
    }

    // Nullify columns based on values in first row
    for (var j = 1; j < matrix[0].length; j++) {
      if (matrix[0][j] == 0) {
        nullifyColumn(matrix, j);
      }
    }

    // Nullify first row
    if (rowHasZero) {
      nullifyRow(matrix, 0);
    }

    // Nullify first column
    if (colHasZero) {
      nullifyColumn(matrix, 0);
    }
  }
}
