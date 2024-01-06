import 'dart:math';

void main() {
  List mylist = [321, 32, 21, 22, 3231, 3, 432];
  for (var i = 0; i < mylist.length; i++) {
    if (mylist[i] > 0) {
      double sqrnum = sqrt(mylist[i]);
      print('the square root of ${mylist[i]} is $sqrnum');
    }
  }
}
