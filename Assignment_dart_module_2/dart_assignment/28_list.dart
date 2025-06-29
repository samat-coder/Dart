void main() {

  List<int> list1 = [3, 5, 7, 9];
  List<int> list2 = [2, 3, 5, 8];
  List<int> list3 = [1, 4, 6, 7];

  List<int> combinedList = [...list1, ...list2, ...list3];
  List<int> uniqueList = combinedList.toSet().toList();
  uniqueList.sort();
  print("Combined and sorted list without duplicates: $uniqueList");
}
