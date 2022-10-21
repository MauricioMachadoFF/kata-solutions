//Help the bookseller !

String stockSummary(List<String> lstOfArt, lstOf1stLetter) {
  if (lstOfArt.isEmpty) {
    return '';
  }
  Map<String, int> booksInCategory = <String, int>{};
  String bookRelatory = '';
  for (final letter in lstOf1stLetter) {
    booksInCategory[letter] = 0;
  }
  for (final bookCode in lstOfArt) {
    final categoryAndAmount = bookCode.split(' ');
    final bookAmount = categoryAndAmount[1];
    final bookCategory = categoryAndAmount[0].substring(0, 1);
    if (booksInCategory.containsKey(bookCategory)) {
      booksInCategory[bookCategory] =
          booksInCategory[bookCategory]! + int.parse(bookAmount);
    }
    ;
  }
  for (int i = 0; i < booksInCategory.length; i++) {
    if (i == 0) {
      final category = lstOf1stLetter[i];
      bookRelatory += '($category : ${booksInCategory[category]})';
    } else if (i == bookRelatory.length - 1) {
      final category = lstOf1stLetter[i];
      bookRelatory += ' - ($category : ${booksInCategory[category]})\n';
    } else {
      final category = lstOf1stLetter[i];
      bookRelatory += ' - ($category : ${booksInCategory[category]})';
    }
  }
  return bookRelatory;
}
