import 'package:flutter/material.dart';
import 'package:s_store/utils/theme/custom_theme/s_elevated_theme.dart';
import 'package:s_store/utils/theme/custom_theme/text_theme.dart';

class SAppTheme {
  SAppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'pop',
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.lightBlue,
    textTheme: STextTheme.lightTextTheme,
    elevatedButtonTheme: SElevatedButtonTheme.lightElevatedButtonTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'pop',
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Colors.lightBlue,
    textTheme: STextTheme.darkTextTheme,
    elevatedButtonTheme: SElevatedButtonTheme.darkElevatedButtonTheme,
  );
}
