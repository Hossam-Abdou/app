import 'package:flutter/material.dart';

import '../components/button.dart';
import '../components/container.dart';
import '../components/place_details.dart';

class DetalisScreen extends StatelessWidget {
 String image;
 String rate;
 String name;
 String location;
 String price;

DetalisScreen({required this.image,required this.rate, required this.name, required this.location,required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Scaffold(

        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.circular(15)
            ),
      child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(width: 100,
              child: IconButton(onPressed: ()
              {
                Navigator.pop(context);
              },
                  icon:const Row(
                    children: [
                Icon(Icons.arrow_back_ios),
                      Text('Back')
                     ],),
              ),
            ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(borderRadius: BorderRadius.circular(15),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Image(image:AssetImage(image),
                        ),
                        const Column(
                          children: [
                          Image(image:AssetImage('assets/images/beach4.jpg'),width: 50,),
                          Image(image:AssetImage('assets/images/mountain2.jpg'),width: 50,),
                          Image(image:AssetImage('assets/images/paris.jpg'),width: 50,),
                          Image(image:AssetImage('assets/images/beach.jpg'),width: 50,),
                        ],)
                      ],
                    )
                ),
              ),
              const  SizedBox(height: 15,),
              PlaceDetails(),
              const Divider(),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text(name,style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 27),),
                Text('$rate(reviews)'),
              ],),
              const  SizedBox(height: 15,),
              Row(
                children: [
                  const Icon(Icons.pin_drop,size: 15,color: Colors.grey,),
                  Text(location,style:const TextStyle(fontWeight: FontWeight.normal,color: Colors.grey),),
                  const Spacer(),
                  const Icon(Icons.pin_drop,size: 15,color: Colors.orange,),
                  const Text('Map Direction',style: TextStyle(fontWeight: FontWeight.normal,color: Colors.orange),),
                ],),
              const  SizedBox(height: 15,),
              const Text('Description',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
              const  SizedBox(height: 15,),
              const Text('The Rolle Pass is a high mountain pass in Trentino \n'
                         'in Italy. It connects the Fiemme and Primiero valleys \n'
                         'and the communities of Predazzo San Martino di ',
                style: TextStyle(fontWeight: FontWeight.normal,color: Colors.grey),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(button: price,buttonColor: Colors.white,textColor: const Color(0xffc0602c),borderColor:  Color(0xffc0602c)),
                    Button(button: 'Book now',buttonColor: const Color(0xffc0602c),textColor: Colors.white,borderColor:  Color(0xffc0602c)),
                  ],
                ),
              ),

            ],),
      ) ,
          ),
        ),
      ),
    );
  }
}
