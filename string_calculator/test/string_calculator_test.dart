import 'package:string_calculator/string_calculator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('StringCalculator', () {
    test('should return 0 for an empty string', () {
      expect(StringCalculator.add(''), equals(0));
    });

    test('should return the number itself for a single number', () {
      expect(StringCalculator.add('1'), equals(1));
    });

    test('should handle newlines as delimiters', () {
      expect(StringCalculator.add('1\n2,3'), equals(6));
    });

    test('should throw an exception for negative numbers', () {
      expect(
        () => StringCalculator.add('-1,2,-3,4'),
        throwsA(
          predicate(
            (e) => e.toString().contains('negative numbers not allowed -1, -3'),
          ),
        ),
      );
    });
  });
}
