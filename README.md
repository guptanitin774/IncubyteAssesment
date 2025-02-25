# IncubyteAssesment

# String Calculator TDD

This is a Flutter implementation of the **String Calculator TDD Kata**, following **Test-Driven Development (TDD)** best practices. The goal is to create a simple string calculator that can handle various input formats and edge cases.

---

## **Features**
The `StringCalculator` class provides a static method `add` that:
1. Takes a string of comma-separated numbers and returns their sum.
2. Handles empty strings by returning `0`.
3. Handles newlines as delimiters (e.g., `1\n2,3`).
4. Throws an exception for negative numbers, listing all negatives in the error message.

---

## **Getting Started**

### Prerequisites
- Dart SDK installed on your machine. You can download it from [dart.dev](https://dart.dev/get-dart).

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/string-calculator-dart.git
