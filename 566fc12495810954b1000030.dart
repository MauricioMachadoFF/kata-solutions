//Count The Digit

import 'dart:math';

int nbDig(int n, int d) {
  List<String> squaredNumbers = [];
  int dAmountDigits = 0;
  final RegExp matcher = RegExp('$d');
  for (int i = 0; i <= n; i++) {
    final squaredNumber = pow(i, 2).toString();
    squaredNumbers.add(squaredNumber);
  }
  for (final squaredNumber in squaredNumbers) {
    final matchesPerWord = matcher.allMatches(squaredNumber).length;
    dAmountDigits += matchesPerWord;
  }
  return dAmountDigits;
}
