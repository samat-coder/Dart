/*
Create a program that accepts a number from the user and performs division by another 
number. Use exception handling to manage division by zero errors
*/
import 'dart:io';

double divide(double num1, double num2) {
  if (num2 == 0) {
    throw Exception("Cannot divide by zero");
  }
  else
  {
  return num1 / num2;
  }
}

void main() {
  try 
  {
    print("Enter the num1:");
    double num1 = double.parse(stdin.readLineSync()!);
    print("Enter the num2:");
    double num2 = double.parse(stdin.readLineSync()!);

    double result = divide(num1, num2);
    print("Result: $result");
  } 
  on FormatException 
  {
    print("Error: Please enter valid numbers.");
  } 
  on IntegerDivisionByZeroException
  {
    print("Error: Division by zero is not allowed.");
  }
  catch (e)
  {
    print("An unexpected error occurred: ${e.toString()}");
  }
}

