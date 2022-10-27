//Bowling Pins

String bowling_pins(List<int> pins) {
  Map<int, String> defaultPins = {
    1: '   I   ',
    2: '  I ',
    3: 'I  \n',
    4: ' I ',
    5: 'I ',
    6: 'I \n',
    7: 'I ',
    8: 'I ',
    9: 'I ',
    10: 'I\n',
  };
  for (final pin in pins) {
    defaultPins.containsKey(pin);
    defaultPins.update(
      pin,
      (value) => value.replaceAll('I', ' '),
    );
  }
  String remainingPills = '';
  for (int i = 7; i < 11; i++) {
    remainingPills += defaultPins[i]!;
  }
  for (int i = 4; i < 7; i++) {
    remainingPills += defaultPins[i]!;
  }
  for (int i = 2; i < 4; i++) {
    remainingPills += defaultPins[i]!;
  }
  remainingPills += defaultPins[1]!;
  return remainingPills;
}
