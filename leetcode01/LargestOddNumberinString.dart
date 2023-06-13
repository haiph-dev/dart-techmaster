void main() {
  print(largestOdd('35427'));
  print(largestOdd('35472'));
}

String? largestOdd(String n) {
  try {
    for (int i = n.length - 1; i > 0; i--) {
      if (int.parse(n[i]) % 2 != 0) return n.substring(0, i + 1);
    }
  } catch (e) {
    print(e);
  }
}
