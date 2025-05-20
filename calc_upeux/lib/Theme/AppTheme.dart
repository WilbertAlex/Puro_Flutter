import 'package:calc_upeux/Theme/theme-blue.dart';
import 'package:calc_upeux/Theme/theme-green.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static Color colorX = const Color(0xff99ff05);

  static List<Color> colorOptions = [
    Colors.purple,
    Colors.green,
    Colors.teal,
    Colors.yellow,
    Colors.orange,
    Colors.pink,
    colorX,
  ];

  AppTheme._();

  static List<String> colorText = <String>[
    "Purple",
    "Green",
    "Teal",
    "Yellow",
    "Orange",
    "Pink",
    "Personalizado",
  ];

  static bool useMaterial3 = false;
  static bool useLightMode = true;
  static int colorSelected = 1;

  static ThemeData themeData = ThemeData(
    colorSchemeSeed: AppTheme.colorOptions[AppTheme.colorSelected],
    useMaterial3: AppTheme.useMaterial3,
    brightness: AppTheme.useLightMode ? Brightness.light : Brightness.dark,
  );

  static TextTheme textTheme = const TextTheme(
    displayLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    displayMedium: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
  );

  static List<ColorScheme> colorOptionsShemeL = [
    MaterialThemeBlue(textTheme).light().colorScheme,
    MaterialThemeBlue(textTheme).lightMediumContrast().colorScheme,
    MaterialThemeBlue(textTheme).lightHighContrast().colorScheme,
    MaterialThemeGreen(textTheme).light().colorScheme,
  ];

  static List<ColorScheme> colorOptionsShemeD = [
    MaterialThemeBlue(textTheme).dark().colorScheme,
    MaterialThemeBlue(textTheme).darkMediumContrast().colorScheme,
    MaterialThemeBlue(textTheme).darkHighContrast().colorScheme,
    MaterialThemeGreen(textTheme).dark().colorScheme,
  ];

  static List<Color> colorOptionsLD = <Color>[
    Colors.blue,
    Colors.lightBlue,
    Colors.lightBlueAccent,
    Colors.green,
  ];

  static List<String> colorTextLD = <String>[
    "Blue",
    "BlueL",
    "BlueLI",
    "Green",
  ];

  static ThemeData themeDataLight = ThemeData(
    useMaterial3: useMaterial3,
    colorScheme: AppTheme.colorOptionsShemeL[AppTheme.colorSelected],
  );

  static ThemeData themeDataDark = ThemeData(
    useMaterial3: useMaterial3,
    colorScheme: AppTheme.colorOptionsShemeD[AppTheme.colorSelected],
  );
}
