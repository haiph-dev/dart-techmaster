import 'dart:math';

void main() {
  final numbers = List.generate(10, (index) {
    final random = Random();
    return random.nextInt(100);
  });

  print(numbers);

  var min = 100;
  var max = 0;

  for (var i in numbers) {
    if (i >= max) max = i;
    if (i <= min) min = i;
  }

  print('min $min max $max');
}

int giaithua(int number) {
  if (number < 1) {
    throw Exception('must be > 0');
  }

  int result = 1;
  for (var i = 1; i < number; i++) {
    result *= i;
  }
  return result;
}
