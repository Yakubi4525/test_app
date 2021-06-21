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
    appBarTheme: AppBarTheme(
      shadowColor: ColorPalette.darkGreyColor,
      iconTheme: IconThemeData(
        
        color: ColorPalette.black,
      ),
      color: ColorPalette.black,
    ),
    textTheme: TextTheme(
      headline1: TextThemes.tittlTextStyle,
      headline2: TextThemes.headline2,
      bodyText1: TextThemes.simpleTextStyle,
    ),
  );

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: ColorPalette.white,
    primaryColor: ColorPalette.mainColor,
    colorScheme: ColorScheme.light(),
    backgroundColor: ColorPalette.white,
    appBarTheme: AppBarTheme(
      shadowColor: ColorPalette.darkGreyColor,
      iconTheme: IconThemeData(
        color: ColorPalette.black,
      ),
      color: ColorPalette.black,
    ),
    textTheme: TextTheme(
      headline1: TextThemes.tittlTextStyle,
      headline2: TextThemes.headline2,
      bodyText1: TextThemes.simpleTextStyle,
    ),
  );
}
