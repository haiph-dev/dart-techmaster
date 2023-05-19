//Dart Lesson P3 - exercise 04
//Sắp xếp mảng tăng dần

import 'dart:math';

void main() {
  final numbers = List.generate(10, (index) {
    final random = Random();
    return random.nextInt(100);
  });
  print(numbers);
  sortMinToMax(
    numbers,
    done: (p0) => print(p0),
    fail: (p0) => print(p0),
  );
}

List<int> result = [];

List testSort(List numbers) {
  if (numbers.length == 1) return numbers;

  var min = numbers.first;
  var index = 0;
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] <= min) min = numbers[i];
  }
  result.add(min);
  return (numbers.removeAt(index));
}

void sortMinToMax(List numbers,
    {required Function(List) done, Function(String)? fail}) {
  try {
    if (numbers.length <= 1) throw ('Must have at least 2 numbers');
    for (int i = 1; i < numbers.length; i++) {
      if (numbers[i] < numbers[i - 1]) swap(numbers[i], numbers[i - 1]);
      if (numbers[i] > numbers[i + 1]) swap(numbers[i], numbers[i + 1]);
      print(numbers);
    }
    done(numbers);
  } catch (e) {
    fail!(e.toString());
  }
}

void swap(int a, int b) {
  int temp = a;
  a = b;
  b = temp;
}
