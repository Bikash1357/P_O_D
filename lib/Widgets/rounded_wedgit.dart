import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class roundedButton extends StatelessWidget {
  final String buttonName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;   //no argument come and not go

  roundedButton(
      { required this.buttonName, this.icon, this.bgColor=Colors.pink, this.textStyle, this.callback});



  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      callback!();  //!=> null nhi hoga, means hham bhanjange hi
    }, child:Row() );
  }
}
