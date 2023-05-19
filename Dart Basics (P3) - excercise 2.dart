//Dart Lesson P3 - exercise 02
//sửa và gọi function trong main

void main() {
  textField(
    'text 01',
    onChanged: (p0) => print(p0),
  );
}

textField(
  String text, {
  Function(String)? onChanged,
}) {
  if (onChanged != null) {
    final result = 'Hello $text';
    onChanged(result);
  }
}
