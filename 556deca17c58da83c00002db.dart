//Tribonacci Sequence

List<num> tribonacci(List<num> signature, int n) {
  if (n == 0) {
    return [];
  }
  List<num> sequence = [];
  for (int i = 0; i < n; i++) {
    switch (i) {
      case 0:
      case 1:
      case 2:
        sequence.add(signature[i]);
        break;
      default:
        final num newNumber =
            sequence[i - 1] + sequence[i - 2] + sequence[i - 3];
        sequence.add(newNumber);
        break;
    }
  }
  return sequence;
}
