//Dart Lesson P3 - exercise 01
//vòng lặp vô tận
import 'dart:io';

void main() {
  timePeriodic(
    second: 5,
    callback: (p0) => print(p0),
  );
}

timePeriodic({
  required int second,
  required Function(int) callback,
}) {
  int time = 0;
  while (time < second) {
    sleep(Duration(seconds: 1));
    time++;
    callback(time);
  }
}
