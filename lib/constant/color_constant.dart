import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'const_value.dart';

// ignore: avoid_classes_with_only_static_members
class AppColors {

  /// Static Colors
  static const Color white = Colors.white;
  static const Color ffFF945E = Color(0xFFFF945E);

  static const Color lightGray = Color(0XF7F8FF);

  /// Dynamic colors as per the selected theme.
  static Color get background {
    return isLightMode ? Colors.red : Colors.blue;
  }
  static Color get theme {
    return isLightMode ? Colors.blue : Colors.blue;
  }
}
