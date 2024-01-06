import 'dart:io';

void main() {
  stdout.writeln('Enter your number');
  String str1 = stdin.readLineSync()!;
  int num1 = int.tryParse(str1) ?? 0;
  for (int i = 1; i <= num1; i++) {
    for (int j = 1; j <= i; j++) {
      print(i);
    }
    print('');
  }
}
