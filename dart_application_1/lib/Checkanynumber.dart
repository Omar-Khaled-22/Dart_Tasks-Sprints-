import 'dart:io';

void main() {
  print("Enter a Number:");

  String? input = stdin.readLineSync();

  if (input != null) {
    try {
      int number = int.parse(input);

      if (number >= 0) {
        print("The number is positive.");
      } else {
        print("The number is negative.");
      }

      if (number % 2 == 0) {
        print("The number is even.");
      } else {
        print("The number is odd.");
      }
    } catch (e) {
      print("Invalid input! Please enter a valid integer.");
    }
  } else {
    print('No input received!');
  }
}

// void main() {
//   print("Enter a Number");
//   String? input = stdin.readLineSync();
//   if (input != null) {
//     int number = int.parse(input);
//     if (number >= 0) {
//       print("positive");
//     } else {
//       print("negative");
//     }
//     if (number % 2 == 0) {
//       print("even");
//     } else {
//       print("odd");
//     }
//   } else {
//     print('No input received!');
//   }
// }