//Pyramid Array

List<List<int>> pyramid(int n) {
  List<List<int>> arrayPyramid = [];
  for (int i = 1; i < n + 1; i++) {
    List<int> arrayRow = [];
    for (int j = 0; j < i; j++) {
      arrayRow.add(1);
    }
    arrayPyramid.add(arrayRow);
  }
  return arrayPyramid;
}
