import 'package:flutter/material.dart';
import 'package:test_app/components/input_decor.dart';

class InputWidget extends StatelessWidget {
  @override
  final Key keyValue;
  final Function validationFunction;
  final TextEditingController controller;

  const InputWidget(
      {Key key, this.keyValue, this.validationFunction, this.controller})
      : super(key: key);
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Form(
      key: key,
      child: Container(
        width: _size.width,
        child: TextFormField(
          validator: validationFunction,
          controller: controller,
          decoration:
              inputDecor("Буквы, скобки, цифры, операторы '()', '+','~"),
          textAlignVertical: TextAlignVertical.center,
        ),
      ),
    );
  }
}
