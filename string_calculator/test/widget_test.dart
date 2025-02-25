import 'package:string_calculator/string_calculator.dart';

void main() {
  print(StringCalculator.add('')); // Output: 0
  print(StringCalculator.add('1')); // Output: 1
  print(StringCalculator.add('1,2')); // Output: 3
  print(StringCalculator.add('1\n2,3')); // Output: 6

  try {
    print(StringCalculator.add('-1,2,-3,4'));
  } catch (e) {
    print(e); // Output: FormatException: negative numbers not allowed -1, -3
  }
}
