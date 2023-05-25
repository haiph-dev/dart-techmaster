import 'dart:async';

import 'package:flutter/material.dart';

class ScreenSize {
  final Size _designScreenSize = const Size(375, 812);
  late Size _deviceScreenSize;

  ScreenSize(double width, double height) {
    _deviceScreenSize = Size(width, height);
  }

  double scaleWidth(num designNumber) {
    try {
      return _deviceScreenSize.width / _designScreenSize.width;
    } catch (e) {
      return designNumber.toDouble();
    }
  }
}

void main() {
  var a = ScreenSize(375, 812);
  print(a.scaleWidth(3.5));
}
