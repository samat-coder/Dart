import 'dart:io';
import 'dart:math';

void main() {
  // Generate a random number between 1 and 100
  int targetNumber = Random().nextInt(100) + 1;

  print("Guess the number (between 1 and 100):");

  while (true) {

    stdout.write("Your guess: ");
    int? guess = int.tryParse(stdin.readLineSync() ?? '');

    if (guess == null) {
      print("Please enter a valid number.");
      continue;
    }
    if (guess > targetNumber) {
      print("Too high!");
    } else if (guess < targetNumber) {
      print("Too low!");
    } else {
      print("Correct! You guessed the number!");
      break;
    }
  }
}
