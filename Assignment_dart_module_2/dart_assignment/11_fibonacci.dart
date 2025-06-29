/*
Task 11: 
Write a recursive function to generate the Fibonacci series up to a specified number.
*/
import 'dart:io';
int fibonacci(int n) {
  if (n <= 1) {
    return n; 
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2); 
  }
}

void main() {
  print("Enter the number of Fibonacci terms you want: ");
  int n = int.parse(stdin.readLineSync()!);

  print("Fibonacci series up to $n terms: ");
  for (int i = 0; i < n; i++) {
    print(fibonacci(i));
  }
}
