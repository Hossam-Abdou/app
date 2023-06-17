import 'package:flutter/material.dart';

class PopularCategories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage('https://img.freepik.com/free-photo/top-view-world-tourism-day-with-lettering_23-2148608829.jpg'),
          ),
          Text('Flights')
        ],),
        Column(children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage('https://img.freepik.com/free-photo/3d-rendering-cartoon-house_52683-108579.jpg'),
          ),
          Text('Hotels')
        ],),
        Column(children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage('https://img.freepik.com/premium-photo/3d-logistic-application-service-concept-global-logistics-network_73903-1211.jpg'),
          ),
          Text('Transport')
        ],),
        Column(children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage('https://img.freepik.com/free-photo/3d-illustration-calendar-with-checkmarks-pen_107791-15855.jpg'),
          ),
          Text('Events')
        ],),
      ],
    );
  }
}
