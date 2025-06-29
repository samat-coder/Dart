/*
Task 9: 
Write a function to calculate the factorial of a number entered by the user.
*/
import 'dart:io';

void main() {
  print("Enter a number to calculate its factorial: ");
  int num = int.parse(stdin.readLineSync()!);

  if (num < 0) {
    print("enter only positive number.");
  } else {
    int factorial = 1;

    for (int i = 1; i <= num; i++) {
      factorial *= i;
    }

    print("The factorial of $num is: $factorial");
  }
}
