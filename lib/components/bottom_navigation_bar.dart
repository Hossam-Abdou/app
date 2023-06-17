import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    showSelectedLabels: false,
    showUnselectedLabels: false,
    backgroundColor:const Color(0xffeadacb),
    selectedItemColor:const Color(0xffb3592a),
    items: const [
    BottomNavigationBarItem(
    icon: Icon(Icons.home_outlined),
    label: "Home",
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.compass_calibration_outlined),
    label: "compas",
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.category_rounded),
    label: "category",
    ),
      BottomNavigationBarItem(
        icon: Icon(Icons.favorite_border),
        label: "favorite",
      ),
    BottomNavigationBarItem(
    icon: Icon(Icons.person_outline),
    label: "Profile",
    )
    ],
    );
  }
}
