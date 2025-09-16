// Write a program in Dart that takes an integer n from the user and prints the
// following number pyramid pattern using nested loops:
// Sample Input: n = 5
// Sample Output:
// 1
// 1 2
// 1 2 3
// 1 2 3 4
// 1 2 3 4 5

import 'dart:io';

void main() {

  print("Enter n: ");
  int n = int.parse(stdin.readLineSync()!);


  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("$j ");
    }
    print("");
  }
}