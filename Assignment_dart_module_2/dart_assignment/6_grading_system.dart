/*Create a simple grading system that takes a student’s score as input and prints their grade: 
• A: 90–100 
• B: 80–89 
• C: 70–79 
• D: 60–69 
• F: Below 60
*/
import 'dart:io';

void main() {

  print("Enter the score: ");
  int score = int.parse(stdin.readLineSync()!);

  String grade;
  if (score >= 90 && score <= 100) {
    grade = 'A';
  } else if (score >= 80 && score <= 89) {
    grade = 'B';
  } else if (score >= 70 && score <= 79) {
    grade = 'C';
  } else if (score >= 60 && score <= 69) {
    grade = 'D';
  } else if (score < 60 && score >= 0) {
    grade = 'F';
  } else {
    print("Invalid score entered.");
    return;
  }

  print("The student grade is: $grade");
}