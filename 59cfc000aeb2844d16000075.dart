//Alternative Capitalization

List<String> capitalize(String stringToCapitalize) {
  StringBuffer sbEven = StringBuffer();
  StringBuffer sbOdd = StringBuffer();
  for (int i = 0; i < stringToCapitalize.length; i++) {
    if (i % 2 == 0) {
      sbEven.write(stringToCapitalize[i].toUpperCase());
      sbOdd.write(stringToCapitalize[i]);
    }
    if (i % 2 != 0) {
      sbOdd.write(stringToCapitalize[i].toUpperCase());
      sbEven.write(stringToCapitalize[i]);
    }
  }
  return [sbEven.toString(), sbOdd.toString()];
}
