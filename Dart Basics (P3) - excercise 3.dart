//Dart Lesson P3 - exercise 03
//viết sự kiện onPressed

void main() {
  var number = 0;
  buttonCount(number, callback: (p0) => {number = p0, print(number)});
}

void buttonCount(int number, {required Function(int) callback}) {
  callback(number += 1);
}
