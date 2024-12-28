import 'dart:io';

//defining a list
List<int> numbers = [1, 2, 3, 4, 5];
// making a sortingNumbers function that sorts and returns the least number
int? sortingNumbers() {
  numbers.sort();
  return numbers[0];
}

//printing the output of sortingNumbers inside the main function
void main() {
  print(sortingNumbers());
  print(findMin());
}

//another method that will compare every element in the list till we find the min
int? findMin() {
  var min = numbers[0];
  for (var num in numbers) {
    if (num < min) {
      min = num;
    }
  }
  return min;
}

// if you want the user to add to the list
void addNumbers() {
  var input = stdin.readLineSync()!;
  var num = input.split(" ").map(int.parse).toList();
  numbers.addAll(num);
}
