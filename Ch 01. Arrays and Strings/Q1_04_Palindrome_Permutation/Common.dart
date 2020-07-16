import 'dart:core';

final int a = 'a'.codeUnits.first;
final int z = 'z'.codeUnits.first;

class Common {
  static int getCharNumber(String c) {
    final val = c.toLowerCase().codeUnits.first;
    if (a <= val && val <= z) {
      return val - a;
    }
    return -1;
  }

  static List<int> buildCharFrequencyTable(String phrase) {
    final table = List<int>.filled(z - a + 1, 0);

    for (final c in phrase.split('')) {
      final x = getCharNumber(c);
      if (x != -1) {
        table[x]++;
      }
    }

    return table;
  }
}
