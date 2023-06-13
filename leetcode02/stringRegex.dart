void main() {
  String string = 'asdf1234!@#%';

  String extract = string.replaceAll(RegExp('[^A-Za-z0-9\d]'), '');

  print(extract);
}
