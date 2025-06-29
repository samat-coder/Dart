import 'dart:io';

void main() {
  List<int> numbers = [];
  print("Enter integers. To stop, press Enter on an empty line:");

  while (true) {
    stdout.write("Enter a number: ");
    String? input = stdin.readLineSync();

    if (input == null || input.isEmpty) {
      break; 
    }

    try {
      int number = int.parse(input);
      numbers.add(number);
    } catch (e) {
      print("Invalid input. Please enter an integer.");
    }
  }

  print("You entered the following list of integers: $numbers");
}
