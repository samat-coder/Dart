
List<double> applyOperation(List<int> numbers, double Function(int) operation) {
  return numbers.map(operation).toList();
}

void main() {
  List<int> numbers = [1, 2, 3, 4];

  double square(int x) => x * x.toDouble();
  double half(int x) => x / 2;

  print("Original List: $numbers");
  print("Squares: ${applyOperation(numbers, square)}");
  print("Halves: ${applyOperation(numbers, half)}");
}
