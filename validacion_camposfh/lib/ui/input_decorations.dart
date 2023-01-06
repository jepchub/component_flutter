import 'package:flutter/material.dart';

class InputDecorations {

  static InputDecoration authInputDecoration({
    required String hintText,
    required String labelText,
    IconData? prefixIcon
  }) {
    return InputDecoration(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromRGBO(63, 172, 152, 1)
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromRGBO(63, 172, 152, 1),
          width: 2
        )
      ),
      hintText: hintText,
      labelText: labelText,
      labelStyle: TextStyle(
        color: Colors.grey
      ),
      prefixIcon: prefixIcon != null
        ? Icon(prefixIcon, color:Color.fromRGBO(63, 172, 152, 1))
        : null
    );
  }
}