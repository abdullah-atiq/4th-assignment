void main(){
  

  String input = 'RaCecar racecar';
  String cleanText = input.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
  String reversedText = cleanText.split('').reversed.join('');

  if (cleanText == reversedText) {
    print('$input is a palindrome.');
  } else {
    print('$input is not a palindrome.');
  }


}