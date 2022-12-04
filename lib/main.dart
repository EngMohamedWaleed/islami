import 'package:flutter/material.dart';
import 'package:islami/home/home_screen.dart';
import 'package:islami/my_theme.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: HomeScreen.routeName,
      routes: {HomeScreen.routeName: (c) => HomeScreen()},
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.light,
    ),
  );
}
