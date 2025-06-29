import 'dart:io';

void main() {
  print("Enter a list of integers (comma-separated): ");
  String? input = stdin.readLineSync();
  
  List<int> numbers = input!.split(',').map((e) => int.parse(e.trim())).toList();
  for (int i = 0; i < numbers.length - 1; i++) {
    for (int j = i + 1; j < numbers.length; j++) {
      if (numbers[i] > numbers[j]) {
        
        int temp = numbers[i];
        numbers[i] = numbers[j];
        numbers[j] = temp;
      }
    }
  }
  print("Sorted in ascending order: $numbers");
  for (int i = 0; i < numbers.length - 1; i++) {
    for (int j = i + 1; j < numbers.length; j++) {
      if (numbers[i] < numbers[j]) {
        
        int temp = numbers[i];
        numbers[i] = numbers[j];
        numbers[j] = temp;
      }
    }
  }
  print("Sorted in descending order: $numbers");
}
