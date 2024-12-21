
void main() {
  // Grocery items with name and price as key-value pairs
  List<Map<String, dynamic>> grocery = [
    {'name': 'Milk', 'price': 5},
    {'name': 'Eggs', 'price': 160},
    {'name': 'Sugar', 'price': 50}
  ];

  // Constant tax rate of 10%
  const double taxes = 0.1;

  // Calculate the total price
  double totalPrice = 0;

  for (var item in grocery) {
    totalPrice += item['price'];
  }

  // Calculate the price after adding taxes
  double priceAfterTaxes = totalPrice + (totalPrice * taxes);

  // Print the results
  print('Total Price: \$${totalPrice.toStringAsFixed(2)}');
  print('Total Price after Taxes: \$${priceAfterTaxes.toStringAsFixed(2)}');
}

// import 'dart:io';
//
// void main() {
//   // List of grocery items
//   List<String> grocery = ["milk", "eggs", "sugar"];
//
//   // Dynamic map to store grocery items and their prices
//   Map<String, int> mapOfgrocery = {};
//
//   // Prompt user to enter prices for each item
//   for (var item in grocery) {
//     print('Enter the price for $item:');
//     int? price = int.tryParse(stdin.readLineSync()!); // Read and parse user input
//     mapOfgrocery[item] = price ?? 0; // Assign the price or default to 0
//   }
//
//   // Tax constant
//   const double taxes = 0.1;
//
//   // Calculate the total sum
//   int sum = 0;
//   for (var item in grocery) {
//     sum += mapOfgrocery[item] ?? 0;
//   }
//
//   // Print the total cost with taxes
//   print('Total cost: \$${(sum + (sum * taxes)).toStringAsFixed(2)}');
// }

