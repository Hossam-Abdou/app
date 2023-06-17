import 'package:flutter/material.dart';

import '../components/bottom_navigation_bar.dart';
import '../components/category.dart';
import '../components/container.dart';
import '../components/popular_categories.dart';

class Profile extends StatefulWidget {

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int current = 0;
  Map<int,dynamic> c= {
    0:[ Con(image: 'assets/images/mountain1.jpg',
        rate: '4.9', name: 'Mount Bromo', location: 'Thirland', price: '\$ 890/person'),
      Con(image: 'assets/images/mountain2.jpg',
          rate: '4.8', name: 'kouh Phi Phi', location: 'location', price: '\$ 950/person'),
      Con(image: 'assets/images/mountain2.jpg',
          rate: '4.8', name: 'kouh Phi Phi', location: 'location', price: '\$ 950/person'),
    ],

    1:[Con(image: 'assets/images/beach4.jpg',
      rate: '4.9', name: 'Mount Bromo', location: 'location', price: '\$ 890/person'),
      Con(image: 'assets/images/beach3.jpg',
      rate: '4.8', name: 'kouh Phi Phi', location: 'location', price: '\$ 950/person'),
      Con(image: 'assets/images/beach4.jpg',
          rate: '4.8', name: 'kouh Phi Phi', location: 'location', price: '\$ 950/person'),
    ],
    2:[Con(image: 'assets/images/paris.jpg',
        rate: '4.9', name: 'Eiffel tower', location: 'Paris', price: '\$ 890/person'),
      Con(image: 'assets/images/paris.jpg',
          rate: '4.8', name: 'Eiffel tower', location: 'location', price: '\$ 950/person'),
      Con(image: 'assets/images/paris.jpg',
          rate: '4.8', name: 'Eiffel tower', location: 'location', price: '\$ 950/person'),],

  };

  List<Category> category = [
    Category(containerColor: Colors.brown, image: 'assets/images/mount.jpg',text: 'mountain'),
    Category(containerColor: Colors.white, image: 'assets/images/beach.jpg',text: 'beach'),
    Category(containerColor: Colors.white, image: 'assets/images/paris.jpg',text: 'paris'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xffe0e0e0),
   body: Padding(
     padding: const EdgeInsets.symmetric(horizontal: 18.0),
     child: SingleChildScrollView(
       child: SafeArea(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             const ListTile(
               leading: CircleAvatar(
                 radius: 20,
                 backgroundImage: NetworkImage('https://img.freepik.com/premium-photo/young-arab-man-wearing-typical-arab-clothes-isolated-white-background-smiling-raising-thumb-up_1187-148542.jpg'),),
               title: Text('welcome back'),
               subtitle: Text('Hossam Abdou',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
               trailing: CircleAvatar(backgroundColor: Color(0xffebceae),
                   child: Icon(Icons.notification_important,color: Colors.white,)),
             ),
            // text field
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon:const Icon(Icons.search,color: Colors.orange,),
                  suffixIcon:const Icon(Icons.filter_alt),
                    hintText: 'Discover a city',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),

                    ),),
              ),
            ),
             // listview of categories
             SizedBox(height: 80,
               child: ListView.separated(
                 separatorBuilder:(context,index)=>const SizedBox(width: 8,),
                 scrollDirection: Axis.horizontal,
                 itemCount: category.length,
                 itemBuilder: (context,index) {
                   return GestureDetector(
                     onTap: ()
                     {
                       setState(() {
                         current=index;

                       });
                     },
                     child: category[index],
                   );
                 },
               ),),
             const SizedBox(height: 15,),
             const Text('Explore Cities',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
             const  SizedBox(height: 15,),

             const Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Text('All'),
              Text('Popular',style: TextStyle(fontWeight: FontWeight.bold),),
              Text('Recommended'),
              Text('Most Viewed'),
              Text('Return'),
            ],),
             const  SizedBox(height: 15,),
             SizedBox(height: 190,
               child: ListView.separated(
                 itemCount: c.length,
                 itemBuilder: (context,index)=>c[current][index],
                 separatorBuilder:(context,index)=>const SizedBox(width: 10,),
                 scrollDirection: Axis.horizontal,
               ),
             ),
             const Text('Popular Categries',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
             const SizedBox(height: 15,),
             PopularCategories()
           ],
         ),
       ),
     ),
   ),
      bottomNavigationBar: BottomBar()
    );
  }
}
