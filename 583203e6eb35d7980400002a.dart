//Count the smiley faces!

int countSmileys(List<String> arr) {
  final RegExp pattern1 = RegExp('[:;][D)]');
  final RegExp pattern2 = RegExp('[:;][-~][D)]');
  int smilesCount = 0;
  for (final smile in arr) {
    if (pattern1.hasMatch(smile) || pattern2.hasMatch(smile)) {
      smilesCount++;
    }
  }
  return smilesCount;
}
