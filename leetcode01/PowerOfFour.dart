void main() {
  print(powerOfFour(16));
  print(powerOfFour(1));
  print(powerOfFour(50));
}

bool powerOfFour(int n) {
  if (n == 1) return true;
  if (n % 4 != 0) return false;
  int i = 1;
  while (i < n) {
    i = i * 4;
  }
  if (n == i)
    return true;
  else
    return false;
}
