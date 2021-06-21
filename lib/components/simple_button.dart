import 'package:flutter/material.dart';
import 'package:test_app/theme/color_theme.dart';
import 'package:test_app/theme/text_theme.dart';

class SimpleButton extends StatelessWidget {
  final String name;
  final Function function;

  const SimpleButton({Key key, this.name, this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: function,
      child: Container(
        width: _size.width,
        height: 44,
        decoration: BoxDecoration(
            color: ColorPalette.white,
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: ColorPalette.mainColor,
              width: 2.0,
            )),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            name,
            style: TextThemes.headline2.copyWith(color: ColorPalette.mainColor),
          ),
        ),
      ),
    );
    ;
  }
}
