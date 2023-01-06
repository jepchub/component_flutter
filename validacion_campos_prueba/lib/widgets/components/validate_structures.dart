import '../../common/enums.dart';
import '../../common/validate.dart';

class ValidateStructures {

  validateStructure({String text, String? value, bool notRequire}){

    if (!notRequire && value!.isEmpty) {
      return "El campo $text es requerido";
    } else {
      switch (validateText) {
        case ValidateText.userName:
          return validateUserName(value!) ? null : 'Introduzca un nombre válido';

        case ValidateText.pass:
          return validatePass(value!) ? null : 'La contraseña debe tener como minimo 6 letras o numeros como minimo';

        case ValidateText.email:
          return validateEmail(value!) ? null : 'Introduzca un email válido';

        case ValidateText.phoneNumber:
          return validateNumberPhone(value!) ? null : 'Introduzca un numero telefonico válido';

        default:
          return null;
      }
    }
  }

}