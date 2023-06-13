void main() {
  print(countDigits(7));
  print(countDigits(121));
  print(countDigits(1248));
}

int countDigits(int n) {
  int count = 0;
  String nString = n.toString();
  for (int i = 0; i < nString.length; i++) {
    if (n % int.parse(nString[i]) == 0) count++;
  }
  return count;
}
