import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlaceDetails extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(children: [
          CircleAvatar(
            radius: 25,
            backgroundImage:AssetImage('assets/images/map.jpg'),
          ),
          Text('maps')
        ],),
        Column(children: [
          CircleAvatar(
            radius: 25,
            backgroundImage:AssetImage('assets/images/guide.jpg'),
          ),
          Text('guide')
        ],),
        Column(children: [
          CircleAvatar(
            radius: 25,
            backgroundImage:AssetImage('assets/images/days.jpg'),
          ),
          Text('4 days 3 night')
        ],),
        Column(children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/food.jpg'),
          ),
          Text('Dinner')
        ],),
      ],
    );
  }
}
