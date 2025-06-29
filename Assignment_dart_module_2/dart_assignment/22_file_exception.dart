// import 'dart:io';

// void main() {
//   String filePath = 'example.txt';
//   String content = "Hello, Dart!\nThis is a test file.";

//   try {
//     File(filePath).writeAsStringSync(content);
//     print("File '$filePath' created successfully.");
//   } on FileSystemException catch (e) {
//     print("Error: Unable to create the file. Details: $e");
//   }
// }
import 'dart:io';

void main() {
  String filePath = 'example.txt';

  try {
    String contents = File(filePath).readAsStringSync();
    print("File Contents:\n$contents");
  } on FileSystemException {
    print("Error: The file '$filePath' does not exist or could not be read.");
  }
}
