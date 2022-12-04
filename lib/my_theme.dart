import 'package:flutter/material.dart';

class MyThemeData {
  static const Color colorblack = Color.fromRGBO(36, 36, 36, 1.0);
  static const Color colorgold = Color.fromRGBO(183, 147, 95, 1.0);

  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme:
          AppBarTheme(backgroundColor: Colors.transparent, elevation: 0.0),
      textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: colorblack)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: colorgold,
          selectedItemColor: colorblack,
          unselectedItemColor: Colors.white));
  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent, appBarTheme: AppBarTheme());
}
