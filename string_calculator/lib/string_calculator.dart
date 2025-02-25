class StringCalculator {
  static int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }

    String delimiter = ',';
    if (numbers.startsWith('//')) {
      var delimiterEndIndex = numbers.indexOf('\n');
      delimiter = numbers.substring(2, delimiterEndIndex);
      numbers = numbers.substring(delimiterEndIndex + 1);
    }

    var numberList =
        numbers
            .split(RegExp(r'[,\n' + delimiter + ']'))
            .map((n) => int.parse(n))
            .toList();

    var negatives = numberList.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw FormatException(
        'negative numbers not allowed ${negatives.join(', ')}',
      );
    }

    return numberList.reduce((sum, n) => sum + n);
  }
}
