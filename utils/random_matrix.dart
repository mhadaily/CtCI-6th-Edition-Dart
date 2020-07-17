import 'dart:math';

int randomInt(int n) {
  return Random().nextInt(n);
}

int randomIntInRange(int min, int max) {
  return randomInt(max + 1 - min) + min;
}

List<List<int>> randomMatrix(int M, int N, int min, int max) {
  final matrix = List.generate(M, (index) => List<int>(N));
  for (var i = 0; i < M; i++) {
    for (var j = 0; j < N; j++) {
      matrix[i][j] = randomIntInRange(min, max);
    }
  }
  return matrix;
}
