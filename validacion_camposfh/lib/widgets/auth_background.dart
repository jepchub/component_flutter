import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;
  const AuthBackground({Key? key, required this.child}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.indigo,
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          _PurpleBox(),
          _HeaderIcon(),
          this.child,
        ],
      ),
    );
  }
}

class _HeaderIcon extends StatelessWidget {
  // const _HeaderIcon({
  //   Key? key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top:30),
        child: Icon(Icons.person_pin, color: Colors.white,size: 100,),
      )
    );
  }
}

//_PurpleBox
class _PurpleBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.4,
      decoration: _purpleBackground(),
      child: Stack(
        children: [

        ],
      ),
    );
  }

  BoxDecoration _purpleBackground() => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topRight,
      colors: [
        Color.fromRGBO(46, 147, 128,0.8),
        Color.fromRGBO(63, 172, 152, 1),
      ]
    )
  );

}