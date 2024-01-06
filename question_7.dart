import 'dart:io';

void main() {
  List<int> mylist = [];
  List<int> numbers = [];
  for (var i = 0; i < 5; i++) {
    stdout.writeln('Enter your number ${5 - i} remaining');
    String? num1 = stdin.readLineSync();
    int num2 = int.tryParse(num1!) ?? 0;
    mylist.add(num2);
  }
  for (var i = 0; i < mylist.length; i++) {
    if (mylist[i] > 5) {
      numbers.add(mylist[i]);
    }
  }
  print('\nnumbers greater than 5 in your list:\n');
  print(numbers);
}
