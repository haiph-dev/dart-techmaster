//Dart Lesson P4 - excercise 02
//queue

class Queue {
  final int capacity;
  final List<String> list = <String>[];

  Queue(this.capacity);

  bool isFull() {
    return list.length == capacity;
  }

  bool isEmpty() {
    return list.isEmpty;
  }

  String dequeue() {
    if (isEmpty()) return 'Error, queue is empty';
    String temp = list.first;
    list.removeAt(0);
    return temp;
  }

  void enqueue(String temp) {
    if (isFull()) {
      print('Error, queue is full');
      return;
    }
    list.add(temp);
  }
}

void main() {
  final queue = Queue(5);
  for (int i = 0; i <= queue.capacity; i++) {
    queue.enqueue('i$i');
  }
  print(queue.list);
  print(queue.dequeue());
  print(queue.dequeue());
  print(queue.list);
}
