/*
Create a function that accepts a list of numbers and returns the largest and smallest 
numbers in the list.
*/

List<int> findLargestAndSmallest(List<int> numbers) {
  int largest = numbers[0];  
  int smallest = numbers[0]; 

  for (int number in numbers) {
    if (number > largest) {
      largest = number; 
    }
    if (number < smallest) {
      smallest = number; 
    }
  }

  return [largest, smallest]; 
}

void main() {
  List<int> numbers = [12, 5, 8, 20, 1, 35, 7];
  
  List<int> result = findLargestAndSmallest(numbers);
  
  print('Largest number: ${result[0]}');
  print('Smallest number: ${result[1]}');
}
