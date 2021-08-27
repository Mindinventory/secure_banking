import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'const_value.dart';

// ignore: avoid_classes_with_only_static_members
class AppColors {

  /// Static Colors
  static const Color white = Colors.white;
  static const Color ffFF945E = Color(0xFFFF945E);

  static const Color lightGray = Color(0xFFF7F8FF);
  static const Color grayText = Color(0xFF7F94A7);

  static const Color textColor = Color(0xFF00294F);

  static const Color bgDrawer = Color(0xFF7F8FF);
  static const Color icSelected = Color(0xFF0dc8e9);
  static const Color icNotSelected = Color(0xFF6d87e5);
  static const Color drawerTextSelected = Color(0xFF002A50);
  static const Color drawerTextNotSelected = Color(0xFF6D87E5);

  /// Dynamic colors as per the selected theme.
  static Color get background {
    return isLightMode ? Colors.red : Colors.blue;
  }
  static Color get theme {
    return isLightMode ? Colors.blue : Colors.blue;
  }
}
