void main() {
  final phones = <String>['Nokia', 'Xiaomi', 'iPhone'];

  print(phones);
  print(
      '${identityHashCode(phones[0])} - ${identityHashCode(phones[1])} - ${identityHashCode(phones[2])}');

  // viết code ở đây, đổi vị trí Xiaomi và iPhone
  phones.add(phones[1]);
  phones.removeAt(1);

  print(phones);
  print(
      '${identityHashCode(phones[0])} - ${identityHashCode(phones[1])} - ${identityHashCode(phones[2])}');
}
