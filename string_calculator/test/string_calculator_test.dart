import 'package:string_calculator/string_calculator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('StringCalculator', () {
    test('should return 0 for an empty string', () {
      expect(StringCalculator.add(''), equals(0));
    });
  });
}
