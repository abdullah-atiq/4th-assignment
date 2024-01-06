import 'dart:io';

void main() {
  List<Map<String, dynamic>> studentDetails = [
    {
      'name': 'ALI',
      'marks': [80, 75, 90],
      'section': 'A',
      'rollNumber': 101
    },
    {
      'name': 'AYESHA',
      'marks': [95, 92, 88],
      'section': 'B',
      'rollNumber': 102
    },
    {
      'name': 'SAAD',
      'marks': [3, 15, 75],
      'section': 'A',
      'rollNumber': 103
    },
  ];

  stdout.writeln('Enter the name of the student');
  String name1 = stdin.readLineSync()!;
  stdout.writeln('Enter the section of the student');
  String section1 = stdin.readLineSync()!;
  stdout.writeln('Enter the rollNumber of the student');
  String num1 = stdin.readLineSync()!;
  int rollnumber1 = int.tryParse(num1) ?? 0;

  bool detailsCorrect = false;

  for (var student in studentDetails) {
    if (name1 == student['name'] &&
        section1 == student['section'] &&
        rollnumber1 == student['rollNumber']) {
      detailsCorrect = true;
      double grade = calculateAverage(List<int>.from(student['marks']));
      if (grade >= 90) {
        print(student['name']);
        print('Grade: A+ marks $grade');
      } else if (grade >= 80 && grade < 90) {
        print(student['name']);
        print('Grade: A marks $grade');
      } else if (grade >= 70 && grade < 80) {
        print(student['name']);
        print('Grade: B marks $grade');
      } else if (grade >= 60 && grade < 70) {
        print(student['name']);
        print('Grade: C marks $grade');
      } else if (grade >= 50 && grade < 60) {
        print(student['name']);
        print('Grade: D marks $grade');
      } else if (grade < 50) {
        print(student['name']);
        print('Fail $grade');
      }
      break;
    }
  }

  if (!detailsCorrect) {
    print("You've entered wrong details");
  }
}

double calculateAverage(List<int> marks) {
  return marks.reduce((a, b) => a + b) / marks.length;
}
