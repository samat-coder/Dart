Stream<int> generateStream(int count) async* {
  for (int i = 1; i <= count; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i; 
  }
}

void main() async {
  const int maxCount = 5;

  print("Starting stream...");
  await for (int number in generateStream(maxCount)) {
    print("Received: $number");
  }
  
  print("Stream finished.");
}
