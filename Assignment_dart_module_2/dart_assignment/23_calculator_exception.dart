import 'dart:io';

void main() {
  while (true) {
    try {
      stdout.write("Enter the first number: ");
      double num1 = double.parse(stdin.readLineSync()!);

      stdout.write("Enter the operator (+, -, *, /): ");
      String operator = stdin.readLineSync()!;

      stdout.write("Enter the second number: ");
      double num2 = double.parse(stdin.readLineSync()!);

      double result;

      switch (operator) {
        case '+':
          result = num1 + num2;
          break;
        case '-':
          result = num1 - num2;
          break;
        case '*':
          result = num1 * num2;
          break;
        case '/':
          if (num2 == 0) {
            print("Error: Division by zero is not allowed.");
            continue;
          }
          result = num1 / num2;
          break;
        default:
          print("Invalid operator. Please use +, -, *, or /.");
          continue;
      }

      print("Result: $num1 $operator $num2 = $result");
    } catch (e) {
      print("Invalid input. Please try again.");
    }

    stdout.write("Do you want to calculate again? (yes/no): ");
    String? continueCalc = stdin.readLineSync();
    if (continueCalc=='no') {
      print("Thank you for using the calculator. Goodbye!");
      break;
    }
  }
}
