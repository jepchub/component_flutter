import 'package:flutter/material.dart';

class LoginFormProvider extends ChangeNotifier {

  GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  String nombre ='';
  String email ='';
  String password = '';
  String numero ='';

  bool isValidForm(){
    print(formKey.currentState?.validate());
    return formKey.currentState?.validate() ?? false;
  }
}