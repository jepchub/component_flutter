
import 'package:flutter/widgets.dart';
import 'package:todowork/screens/extensions.dart';

class Validators {
  static isValidEmail(String value) {
    // String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    // RegExp regExp =  RegExp(pattern);
    if (value.isEmpty) return 'El campo correo no puede estar vacio';
    debugPrint(value);
    return value.isValidEmail
      ? null
      : 'Ingrese una dirección de correo electrónico válida';
  }


  static isValidName(String value) {
    if (value.isEmpty) return 'El campo correo no puede estar vacio';

    return value.isValidName
      ? null
      : 'Ingrese un nombre válido';
  }

  static isValidPassword(String value) {
    String error = '';

    if (value.isEmpty) return 'El campo correo no puede estar vacio';

    if (!value.isUpperCase) error = '$error - No contiene almenos 1 mayúscula \n';
    if (!value.isLowerCase) error = '$error - No contiene almenos 1 minúscula \n';
    if (!value.isCharacterEspecialCase) error = '$error - No contiene almenos 1 simbolo \n';
    if (!value.isNumberCase) error = '$error - No contiene almenos 1 número \n';

    if (value.length <= 8) error = '$error - La contraeña debe contener al menos 8 elementos \n';


    return error.isEmpty
      ? null
      : error.replaceRange(error.length-1, error.length-1, '');

  }

  static isValidPhone(String value) {
    if (value.isEmpty) return 'El campo correo no puede estar vacio';
    return value.isValidPhone
      ? null
      : 'Ingrese un número telefónico válido';
  }
}

