// Task 2: Dart Basics (Input, Loops, Conditionals & Lists)
// Write a Dart console program that:
// 1. Takes input from the user for their name and age.
// o If the age is less than 18, print:
// "Sorry [Name], you are not eligible to register." and stop
// execution.
// o Otherwise, continue.
// 2. Ask the user to enter N numbers (the program should first ask how many numbers
// the user wants to enter).
// 3. Store all numbers in a list and calculate:
// o The sum of even numbers.
// o The sum of odd numbers.
// o The largest number entered.
// o The smallest number entered.
// 4. Print the results clearly.

import 'dart:io';
void main(){
  print("Enter your name : ");
  String? name = stdin.readLineSync();

  print("Enter your Age: ");
  String? v1 = stdin.readLineSync();
  int age = int.parse(v1!);

  if (age <18 ){
    print("Sorry $name, you are not eligible to register.");
    exit(0);
  }

  print("How many numbers do you want to enter: ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> numbers = [];

  for (int i = 0; i < n; i++) {
    print("Enter ${i + 1}th number : ");
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }

  int evenSum = 0, oddSum = 0;
  for (var num in numbers) {
    if (num % 2 == 0) {
      evenSum += num;
    } else {
      evenSum += num;
    }
  }

  int largest = numbers[0];
  for (var num in numbers) {
    if (num > largest) {
      largest = num;
    }
  }
  int smallest = numbers[0];
  for (var num in numbers) {
    if (num < smallest) {
      smallest = num;
    }
  }
  int small = numbers.reduce((a, b) => a < b ? a : b);

  print("\nResults:");
  print("Sum of even numbers: $evenSum");
  print("Sum of odd numbers: $oddSum");
  print("Largest number: $largest");
  print("Smallest number: $smallest");
}