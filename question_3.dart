import 'dart:io';

void main() {
  stdout.writeln('enter your number');
  String? num1 = stdin.readLineSync();
  int num2 = int.tryParse(num1!) ?? 0;
  bool isprime = true;
  if (num2 <= 1) {
    isprime = false;
    print('$num2 is not a prime number');
  } else {
    for (var i = 2; i <= num2 / 2; i++) {
      if (num2 % i == 0) {
        isprime = false;
        break;
      }
    }
  }
  if (isprime) {
    print('$num2 is a prime number');
  } else {
    print('$num2 is not a prime number');
  }
}
