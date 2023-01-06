
import 'package:flutter/material.dart';
import 'package:todo_work/common/enums.dart';
import 'package:todo_work/widgets/components/text_field_base.dart';
import 'package:todo_work/common/validate.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class FormClientScreen extends StatelessWidget {
TextEditingController ctrlUserName = TextEditingController();
TextEditingController ctrlPass = TextEditingController();
TextEditingController ctrlNumberPhone = TextEditingController();
TextEditingController ctrlEmail = TextEditingController();

GlobalKey<FormState> keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulario Cliete"),
      ),
      body: Form(
        key: keyForm,
        child: ListView(
        children: [
          TextFieldBase("Product Name", ctrlUserName, validateText: ValidateText.texPlain,maxLength: 100,validator: validateUserName(ctrlUserName.text),),
          TextFieldBase("User Name", ctrlUserName, validateText: ValidateText.userName,),
          TextFieldBase("Email", ctrlEmail, validateText: ValidateText.email,),
          TextFieldBase("Pass", ctrlPass, validateText: ValidateText.pass,),
          TextFieldBase("Number Phone", ctrlNumberPhone, validateText: ValidateText.phoneNumber,),
          TextButton(onPressed: save, child: Text("Guardar"))
        ],
      )),
    );
  }

  save(){
    if (keyForm.currentState!.validate()) {
      
    }
  }
  // separar la logica en otras clases para desacoplarlo

}