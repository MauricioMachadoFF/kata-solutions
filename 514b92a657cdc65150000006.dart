//Multiples of 3 and 5

int solution(int n) {
  if (n <= 0) {
    return 0;
  }
  List<int> multiples = [];
  int multiplesSum = 0;
  for (int i = 5; i < n; i += 5) {
    multiples.add(i);
  }
  for (int i = 3; i < n; i += 3) {
    if (i % 5 != 0) {
      multiples.add(i);
    }
  }
  multiples.forEach((multiple) {
    multiplesSum += multiple;
  });

  return multiplesSum;
}
