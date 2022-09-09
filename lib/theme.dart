import 'package:flutter/material.dart';

class AppTheme {

  static Map<int, Color> color = const {
    50: Color.fromRGBO(0, 173, 241, .1),
    100: Color.fromRGBO(0, 173, 241, .2),
    200: Color.fromRGBO(0, 173, 241, .3),
    300: Color.fromRGBO(0, 173, 241, .4),
    400: Color.fromRGBO(0, 173, 241, .5),
    500: Color.fromRGBO(0, 173, 241, .6),
    600: Color.fromRGBO(0, 173, 241, .7),
    700: Color.fromRGBO(0, 173, 241, .8),
    800: Color.fromRGBO(0, 173, 241, .9),
    900: Color.fromRGBO(0, 173, 241, 1),
  };

  static MaterialColor materialColor = MaterialColor(0xFF00acf1, color);

  static ThemeData mainTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: materialColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        backgroundColor: AppTheme.materialColor
      )
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(width: 2,color: Colors.black),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(width: 2,color: Colors.black),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(width: 2,)
      ),
    ),
    scaffoldBackgroundColor: Colors.white,
  );
}