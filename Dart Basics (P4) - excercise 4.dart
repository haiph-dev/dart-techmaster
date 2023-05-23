//Dart Lesson P4 - excercise 04
//manufactuer and device

class Manufacturer {
  late String name;
  late int manuID;

  Manufacturer()
      : this.name = 'default',
        this.manuID = 0;

  Manufacturer.init(this.name, this.manuID);
}

class Device extends Manufacturer {
  late String devName;
  late String systemName;

  Device(this.devName, this.systemName);
}

void main() {
  final device = Device('dev0', 'linux');
  print(device.name);
  print(device.manuID);
  print(device.devName);
  print(device.systemName);
}
