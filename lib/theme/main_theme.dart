import 'package:flutter/material.dart';
import 'package:test_app/theme/color_theme.dart';
import 'package:test_app/theme/text_theme.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: ColorPalette.white,
    primaryColor: ColorPalette.mainColor,
    colorScheme: ColorScheme.light(),
    backgroundColor: ColorPalette.white,
    accentColor: ColorPalette.white,
    textTheme: TextTheme(
      headline1: TextThemes.tittlTextStyle,
      headline2: TextThemes.h2textStyle,
      bodyText1: TextThemes.simpleTextStyle,
      bodyText2: TextThemes.h3textStyle,
    ),
  );

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: ColorPalette.white,
    primaryColor: ColorPalette.mainColor,
    colorScheme: ColorScheme.light(),
    backgroundColor: ColorPalette.white,
    textTheme: TextTheme(
      headline1: TextThemes.tittlTextStyle,
      headline2: TextThemes.h2textStyle,
      bodyText1: TextThemes.simpleTextStyle,
      bodyText2: TextThemes.h3textStyle,
    ),
  );
}
