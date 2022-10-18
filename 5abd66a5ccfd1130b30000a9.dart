//Row Weights

void main(List<String> args) {
  rowWeights([13, 27, 49]);
}

List<int> rowWeights(List<int> arr) {
  List<int> teamsWeight = [0, 0];
  for (int i = 0; i < arr.length; i++) {
    if (i % 2 == 0) {
      teamsWeight[0] += arr[i];
    } else {
      teamsWeight[1] += arr[i];
    }
  }
  return teamsWeight;
}
