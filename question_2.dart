import 'dart:io';

void main() {
  stdout.writeln('Enter your number');
  String num1 = stdin.readLineSync()!;
  int num2 = int.tryParse(num1) ?? 0;

  List fibonacciList = [];
  int first = 0;
  int second = 1;

  for (var i = 0; first <= num2; i++) {
    fibonacciList.add(first);
    int next = first + second;
    first = second;
    second = next;
  }
  print('\nFibonacci sequence up to your given number');
  print(fibonacciList);
}
