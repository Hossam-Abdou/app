import 'package:flutter/material.dart';

class Button extends StatelessWidget {
String button;
Color buttonColor;
Color textColor;
Color borderColor;

Button({required this.button,required this.buttonColor,required this.textColor,required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 50,
      decoration: BoxDecoration(
        color: buttonColor,
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(5)
      ),
      child: Center(
          child: Text(button,style: TextStyle(color: textColor,fontWeight: FontWeight.bold),)
      ),
    );
  }
}
