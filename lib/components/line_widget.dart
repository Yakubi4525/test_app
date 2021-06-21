import 'package:flutter/material.dart';
import 'package:test_app/theme/color_theme.dart';

class LineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      margin: EdgeInsets.only(top: 10, bottom: 10),
      color: ColorPalette.darkGreyColor
    );
  }
}
