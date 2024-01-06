void main() {
  List mylist = [3, 9, 17, 643, 23, 8, 5];
  int max1 = mylist[0];
  for (var i = 0; i < mylist.length; i++) {
    if (max1 < mylist[i]) {
      max1 = mylist[i];
    }
  }
  print('Largest Element: $max1');
}
