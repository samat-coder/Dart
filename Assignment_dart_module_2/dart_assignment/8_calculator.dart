/*
Task 8: 
Implement a basic calculator that performs addition, subtraction, multiplication, or division 
based on the user’s choice.
*/

import 'dart:io';

void main() {
  print("Choose an operation:");
  print("1: Addition");
  print("2: Subtraction");
  print("3: Multiplication");
  print("4: Division");

  print("Enter the number of your choice: ");
  int choice = int.parse(stdin.readLineSync()!);

  print("Enter the first number: ");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter the second number: ");
  double num2 = double.parse(stdin.readLineSync()!);

  double result;

  switch (choice) {
    case 1:
      result = num1 + num2;
      print("Result: $result");
      break;
    case 2:
      result = num1 - num2;
      print("Result: $result");
      break;
    case 3:
      result = num1 * num2;
      print("Result: $result");
      break;
    case 4:
      if (num2 != 0) {
        result = num1 / num2;
        print("Result: $result");
      } else {
        print("Division by zero is not allowed.");
      }
      break;
    default:
      print("Invalid choice.");
  }
}
