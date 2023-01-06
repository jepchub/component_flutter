import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_work/widgets/components/validate_input_formatters.dart';
// import 'package:todo_work/common/validate.dart';

import '../../common/enums.dart';


class TextFieldBase extends StatelessWidget {
  String text;
  TextEditingController controller;
  ValidateText? validateText;
  bool notRequire;
  int? maxLength;
  String? Function(String?)? validator;

  TextFieldBase(this.text, this.controller,
      {this.validateText, this.notRequire = false, this.maxLength, this.validator});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(text),
        TextFormField(
          controller: controller,
          maxLength: validateText!.long?? maxLength,
          inputFormatters: [ValidateInputFormatters().validateInputFormatter(validateText: validateText)],
          validator: validator,
        )
      ],
    );
  }


  // validateStructure(String? value) {
  //   if (!notRequire && value!.isEmpty) {
  //     return "El campo $text es requerido";
  //   } else {
  //     switch (validateText) {
  //       case ValidateText.userName:
  //         return validateUserName(value!) ? null : message(text);

  //       case ValidateText.pass:
  //         return validatePass(value!) ? null : message(text);

  //       case ValidateText.email:
  //         return validateEmail(value!) ? null : message(text);

  //       case ValidateText.phoneNumber:
  //         return validateNumberPhone(value!) ? null : message(text);

  //       default:
  //         return null;
  //     }
  //   }
  // }

  // message(String type) => "La estructura del $type es incorrecta";

  // validateInputFormatters() {
  //   switch (validateText) {
  //     case ValidateText.phoneNumber:
  //       return FilteringTextInputFormatter.digitsOnly;

  //     default:
  //       return FilteringTextInputFormatter.singleLineFormatter;
  //   }
  // }
}
