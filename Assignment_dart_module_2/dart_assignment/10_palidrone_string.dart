/*
Task 10: 
Create a function that checks if a string is a palindrome (reads the same backward as 
forward)
*/

import 'dart:io';

void main() {
  print("Enter a string to check if it is a palindrome: ");
  String input = stdin.readLineSync()!;
  input = input.toLowerCase();
  String reversed = input.split('').reversed.join('');

  if (input == reversed) {
    print("The string '$input' is a palindrome.");
  } else {
    print("The string '$input' is not a palindrome.");
  }
}
