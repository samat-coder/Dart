import 'dart:async';

void main() {
  print("Starting operation...");
  print("Loading...");

  Future.delayed(const Duration(seconds: 3), () {
    print("Operation completed!");
  });
}
