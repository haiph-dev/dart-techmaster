//Dart Lesson P3 - exercise 04
//Sắp xếp mảng tăng dần dùng đệ quy và callback
//mình đang bí vụ callback fail trả về String qua đệ quy thì ntn?

import 'dart:math';

void main() {
  final numbers = List.generate(10, (index) {
    final random = Random();
    return random.nextInt(100);
  });
  print(numbers);

  List<int> result = [];
  extractMin(
    numbers,
    done: (p0) => result.add(p0),
    // fail: (p0) => print(p0),
  );
  print('sort: $result');
}

void extractMin(List<int> numbers,
    {required Function(int) done, Function(String)? fail}) {
  if (numbers.length < 1) {
    // fail!('must have at least 2 number to sort');
    return;
  }

  var min = numbers.first;
  var index = 0;
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] < min) {
      min = numbers[i];
      index = i;
    }
  }
  done(numbers[index]); //extract min to main function
  numbers.removeAt(index);
  return extractMin(numbers, done: done);
}
