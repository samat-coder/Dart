import 'dart:io';

void main() async {

  String filePath = "example.txt";


  String dataToWrite = "This is a basic file writing and reading example.";

  try {
    File file = File(filePath);
    await file.writeAsString(dataToWrite);
    print("Data written to file successfully.");

    String readData = await file.readAsString();
    print("Data read from file: $readData");
  } catch (e) {
    print("An error occurred: $e");
  }
}
