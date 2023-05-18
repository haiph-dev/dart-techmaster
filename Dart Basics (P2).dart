void main() {
  print(giaithua(5));
}

int giaithua(int number) {
  int result = 1;
  for (var i = 1; i < number; i++) {
    result = result * i;
  }
  return result;
}
