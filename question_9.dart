void main() {
  List mylist = [321, 32, 21, 22, 3231, 3, 432];
  var max1 = mylist[0];
  var min1 = mylist[0];
  for (var i = 0; i < mylist.length; i++) {
    if (max1 < mylist[i]) {
      max1 = mylist[i];
    }
  }
  for (var i = 0; i < mylist.length; i++) {
    if (min1 > mylist[i]) {
      min1 = mylist[i];
    }
  }
  print(max1);
  print(min1);
}
