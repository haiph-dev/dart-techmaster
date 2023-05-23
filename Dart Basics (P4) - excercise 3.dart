//Dart Lesson P4 - excercise 03
//stack

class Stack {
  final int capacity;
  final List<String> list = <String>[];

  Stack(this.capacity);

  bool isFull() {
    return list.length == capacity;
  }

  bool isEmpty() {
    return list.isEmpty;
  }

  String pop() {
    if (isEmpty()) return 'Error, stack is empty';
    String temp = list.last;
    list.removeLast();
    return temp;
  }

  void push(String temp) {
    if (isFull()) {
      print('Error, stack is full');
      return;
    }
    list.add(temp);
  }
}

void main() {
  final queue = Stack(5);
  for (int i = 0; i <= queue.capacity; i++) {
    queue.push('i$i');
  }
  print(queue.list);
  print(queue.pop());
  print(queue.pop());
  print(queue.list);
}
