void main() {
  String a = "Hello World My Friends";
  print(lastWordLength(a));
}

int lastWordLength(String a) {
  List listA = a.split(' ');
  String b = listA.last.toString();
  return b.length;
}
