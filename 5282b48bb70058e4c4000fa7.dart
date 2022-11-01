//Convert A Hex String To RGB

Map<String, int> hexToRGB(String hex) {
  final int redHex = int.parse('0x' + hex.substring(1, 3));
  final int greenHex = int.parse('0x' + hex.substring(3, 5));
  final int blueHex = int.parse('0x' + hex.substring(5, 7));

  return {
    'r': redHex,
    'g': greenHex,
    'b': blueHex,
  };
}
