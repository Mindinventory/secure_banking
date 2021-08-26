import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


// This class will have all the color constant which are using in the App.
class AppFontStyle {


  static TextStyle textFiledNormal({Color color = Colors.black}) {
    return TextStyle(
        color: color,
        fontFamily: 'Poppins',
        fontSize: 22.0,
        fontWeight: FontWeight.w600
    );
  }

  static TextStyle fontStyles({Color color = Colors.black,double fontSize = 22.0,FontWeight fontWeight = FontWeight.w600}) {
    return TextStyle(
        color: color,
        fontFamily: 'Poppins',
        fontSize: fontSize,
        fontWeight: fontWeight
    );
  }



  static const customAlertTitle = TextStyle(
      color: Colors.black,
      fontFamily: 'Rubik',
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.none,
  );
}