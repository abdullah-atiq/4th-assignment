import 'dart:io';

void main() {
  List numbers = [];
  for (var i = 0; i < 10; i++) {
    stdout.writeln('Enter your number ${10 - i} remaining');
    String num1 = stdin.readLineSync()!;
    int num2 = int.tryParse(num1) ?? 0;
    numbers.add(num2);
  }
  print('\nyour list of numbers\n$numbers');
  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 != 0) {
      numbers.removeAt(i);
    }
  }
  print('even numbers in the list\n$numbers');
}
