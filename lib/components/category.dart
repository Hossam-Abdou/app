import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
String image;
Color containerColor;
String text;

Category({required this.image, required this.containerColor, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(10),
      width: 150,
     decoration: BoxDecoration(
         color: containerColor,
       borderRadius: BorderRadius.circular(9)
     ),
    child: Row(
      children: [
        Image(
            image: AssetImage(image),
          height: 50,width: 50,
        ),
        const SizedBox(width: 8,),
        Text(text)
      ],
    ),);
  }
}
