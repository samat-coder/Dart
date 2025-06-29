/*
Task 14: 
Create a program that takes a list of words and removes any duplicates. Use a set to 
eliminate duplicates, then display the unique words in alphabetical order. 
*/
import 'dart:io';

void main() {
  print("Enter a list of words (comma-separated): ");
  String? input = stdin.readLineSync();
  
  List<String> words = input!.split(',').map((e) => e.trim()).toList();
  
  Set<String> uniqueWords = Set.from(words);
  
  List<String> sortedWords = uniqueWords.toList()..sort();

  print("Unique words in alphabetical order: $sortedWords");
}