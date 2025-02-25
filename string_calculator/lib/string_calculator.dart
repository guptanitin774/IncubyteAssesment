class StringCalculator {
  static int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }
    var numberList = numbers.split(',').map((n) => int.parse(n)).toList();
    return numberList.reduce((sum, n) => sum + n);
  }
}
