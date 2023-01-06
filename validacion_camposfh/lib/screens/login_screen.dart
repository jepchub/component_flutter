import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:todowork/providers/login_form_provider.dart';
import 'package:todowork/ui/input_decorations.dart';
import 'package:todowork/widgets/widgets.dart';
import 'package:todowork/screens/validator_inputs.dart';

extension MyString on String{
  bool get isValidPassword => true;
  bool get isFiveChars => length==5;
}



class LoginSreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:AuthBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 200,),
              CardContainer(
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Text('Login', style: Theme.of(context).textTheme.headline4),
                    SizedBox(height: 10,),

                    ChangeNotifierProvider(
                      create: ( _ ) => LoginFormProvider(),
                      child: _LoginFrom(),
                    )
                  ],
                ),
              ),
              SizedBox(height: 50,),
              Text('Crear una nueva Cuenta', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 50,),
            ],
          )
        )
      )
    );
  }
}

class _LoginFrom extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final loginForm = Provider.of<LoginFormProvider>(context);
    return Container(
      child: Form(
        child: Form(
          key: loginForm.formKey,

          child: Column(
            children: [
              // Name
              TextFormField(
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z]+|\s"))],
                autovalidateMode: AutovalidateMode.onUserInteraction,
                autocorrect: false,
                keyboardType: TextInputType.name,
                decoration: InputDecorations.authInputDecoration(
                  hintText: 'Jose Rick Sanchez Wick',
                  labelText: 'Name',
                  prefixIcon: Icons.person_sharp,
                ),
                onChanged: (value) => loginForm.nombre = value,
                validator: (value)=>Validators.isValidName(value!),
              ),

              SizedBox(height: 24,),

              TextFormField(
                // Email
                autovalidateMode: AutovalidateMode.onUserInteraction,
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecorations.authInputDecoration(
                hintText: 'jori.sawi@gmail.com',
                  labelText: 'Email',
                  prefixIcon: Icons.alternate_email_sharp,
                ),
                onChanged: (value) => loginForm.email = value,
                validator:(value)=> Validators.isValidEmail(value!)
              ),

              SizedBox(height: 24,),

              TextFormField(
                // Password
                autovalidateMode: AutovalidateMode.onUserInteraction,
                autocorrect: false,
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecorations.authInputDecoration(
                hintText: '********',
                  labelText: 'Password',
                  prefixIcon: Icons.lock_outline_sharp,
                ),
                onChanged: (value) => loginForm.password = value,
                validator: (value) => Validators.isValidPassword(value!),
              ),

              SizedBox(height: 24,),

              TextFormField(
                // Number
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r"[0-9]"))],
                autovalidateMode: AutovalidateMode.onUserInteraction,
                autocorrect: false,
                keyboardType: TextInputType.number,
                decoration: InputDecorations.authInputDecoration(
                hintText: '0123456789',
                  labelText: 'Phone number',
                  prefixIcon: Icons.phone_sharp,
                ),
                onChanged: (value) => loginForm.numero = value,
                validator: (value)=> Validators.isValidPhone(value!),
              ),

              SizedBox(height: 24,),

              MaterialButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                disabledColor: Colors.grey,
                elevation: 0,
                color: Color.fromRGBO(63, 172, 152, 1),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 80,vertical: 16),
                  child: Text(
                    'Sign in',
                    style: TextStyle(color:Colors.white),
                  ),
                ),
                onPressed: (){
                  //Login form
                  if (!loginForm.isValidForm()) return;
                  Navigator.pushReplacementNamed(context, 'home');
                }
              )
            ],
          ),
        )
      ),
    );
  }
}
