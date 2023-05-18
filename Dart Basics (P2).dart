void main() {
  print(giaithua(5));
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
