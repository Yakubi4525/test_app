import 'package:flutter/material.dart';
import 'package:test_app/theme/color_theme.dart';

class InputWidget extends StatelessWidget {
  final Key keyValue;
  final Function validationFunction;
  final TextEditingController controller;
  final String hintText;

  const InputWidget(
      {Key key,
      this.keyValue,
      this.validationFunction,
      this.controller,
      this.hintText})
      : super(key: key);
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Form(
      key: keyValue,
      child: Container(
        width: _size.width,
        child: TextFormField(
          validator: validationFunction,
          controller: controller,
          decoration: InputDecoration(
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
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none),
            fillColor: ColorPalette.white,
            hintText: hintText,
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
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          ),
          textAlignVertical: TextAlignVertical.center,
        ),
      ),
    );
  }
}
