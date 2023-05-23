//Dart Lesson P4 - excercise 01

class Dog {
  late String name;

  //constructor
  Dog(this.name);

  void walk() => print('$name could walk');
}

class Fish {
  late String name;

  //constructor
  Fish(this.name);

  void swim() => print('$name could swim');
}

class Bird {
  late String name;

  //constructor
  Bird(this.name);

  void fly() => print('$name could fly');
}

class Duck {
  late String name;

  //constructor
  Duck(this.name);

  void walk() => print('$name could walk');
  void fly() => print('$name could fly');
  void swim() => print('$name could swim');
}

void main() {
  final dog = Dog('DOG');
  dog.walk();
  final fish = Fish('FISH');
  fish.swim();
  final bird = Bird('BIRD');
  bird.fly();
  final duck = Duck('DUCK');
  duck.walk();
  duck.swim();
  duck.fly();
}
