import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/main.dart';

class splashScreen extends StatefulWidget{
  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3),(){

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyHomePage(title: 'homepage'),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text('Welcome to Print on demand',style: Theme.of(context).textTheme.displayLarge,),
        ),
      ),

    );

  }
}

class TextBorel extends StatelessWidget{
  TextBorel(TextTheme textTheme);

  @override
  Widget build(BuildContext context) {
    return TextBorel(
         TextTheme(
        displayLarge: TextStyle(fontSize:20,fontFamily: 'Borel Font'),
         ) );
  }

}