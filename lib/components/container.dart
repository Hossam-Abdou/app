import 'package:flutter/material.dart';
import 'package:travel_app/components/navigate.dart';

import '../screens/details_screen.dart';

class Con extends StatelessWidget {
String image;
String rate;
String name;
String location;
String price;

Con({required this.image, required this.rate, required this.name, required this.location,required this.price});

@override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ()
      {
        navigateTo(context, DetalisScreen(image:image,location: location,name: name,price: price,rate: rate));
      },
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xfff8f8f8),
            borderRadius: BorderRadius.circular(15)
        ),
        width: 230,
        child:  Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Stack(alignment: Alignment.topRight,
                children: [
                ClipRRect(borderRadius: BorderRadius.circular(10),
                    child: Image(image: AssetImage(image),width: 180,)),
                const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child:  CircleAvatar(
                    radius: 15,
                    backgroundColor: Color(0xffc0612c),
                      child: Icon(Icons.favorite_border,color: Colors.grey,)
                  ),
                ),
              ],),
              Row(
                children: [
                  Text(name),
                  const  Spacer(),
                  const Icon(Icons.star_border),
                  Text(rate),
                ],),
              Row(
                children: [
                  const Icon(Icons.pin_drop,size: 15,),
                  Text(location),
                 const Spacer(),
                  Text(price),
                ],),
            ],),
        ),
      ),
    );
  }
}
