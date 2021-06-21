import 'package:flutter/material.dart';
import 'package:test_app/theme/color_theme.dart';

InputDecoration inputDecor(String hintStr) {
  return InputDecoration(
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: ColorPalette.darkGreyColor,
        width: 1,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: ColorPalette.darkGreyColor),
    ),
    // filled: true,
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
    fillColor: ColorPalette.white,
    hintText: hintStr,
    errorStyle: TextStyle(
      color: ColorPalette.red,
      fontSize: 12,
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: ColorPalette.red, width: 1),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: ColorPalette.red, width: 0.5),
    ),
    hintStyle: TextStyle(
        fontFamily: "roboto",
        fontSize: 15,
        color: const Color(0xFF171717).withOpacity(0.5),
        fontWeight: FontWeight.w400),
    contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
  );
}
