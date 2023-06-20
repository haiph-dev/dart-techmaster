void main() {
  String s = 'abcde';
  String t = 'abcd';
  print(findDiff(s, t));
}

String findDiff(String a, String b) {
  List<int> listA = a.codeUnits.toList();
  List<int> listB = b.codeUnits.toList();
  if (listA.length == 0) return b;
  if (listB.length == 0) return a;
  if (listB.length > listA.length) {
    for (int i = 0; i < listA.length; i++) {
      listB.remove(listA[i]);
    }
    return String.fromCharCodes(listB);
  }
  if (listA.length > listB.length) {
    for (int i = 0; i < listB.length; i++) {
      listA.remove(listB[i]);
    }
    return String.fromCharCodes(listA);
  }
  return '';
}
