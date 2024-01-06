void main() {
  String str1 = 'abcdefghijklmnopqrstuvwxyz';
  var str2 = str1.split('');
  int numOfvowels = 0;
  for (var i = 0; i < str2.length; i++) {
    if (str2[i] == 'a' ||
        str2[i] == 'e' ||
        str2[i] == 'i' ||
        str2[i] == 'o' ||
        str2[i] == 'u') {
      numOfvowels++;
    }
  }
  print(numOfvowels);
}
