import 'package:flutter/material.dart';
import 'package:todowork/screens/screens.dart';

void main() => runApp( MyApp());
// mateapp
class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo App Inputs',
      initialRoute: 'login',
      routes: {
        'login': ( _ ) => LoginSreen(),
        'home': ( _ ) => HomeSreen(),
      },
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.grey[300]
      ),
    );
  }
}