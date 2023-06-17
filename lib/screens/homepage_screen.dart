import 'package:flutter/material.dart';
import 'package:slide_action/slide_action.dart';
import 'package:travel_app/screens/profile_screen.dart';

import '../components/navigate.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration:const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage('https://img.freepik.com/free-photo/beautiful-collage-travel-concept_23-2149232170.jpg'),
                fit: BoxFit.cover
            )
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const Text('Explore Beauty \nof journey',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 45),),
               const Text('everything you can imagine, is here',style: TextStyle(color: Color(0xffad9075),fontWeight: FontWeight.bold),),
                const    Spacer(),
                SlideAction(
                  trackBuilder: (context, state) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color:const Color(0xff7a6561).withOpacity(0.5),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 8,
                          ),
                        ],
                      ),
                      child:const Center(
                        child:Text(
                          "Swipe to explore now",style: TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  },
                  thumbBuilder: (context, state) {
                    return Container(
                      margin: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Center(
                        child: Row(
                          children: [
                            Icon(
                              Icons.chevron_right,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.chevron_right,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  action: () {
                    navigateTo( context, Profile());
                  },),
                Center(child: const Text('Privacy and Policy',style: TextStyle(color: Colors.white),)),

              ],
            ),
          ),
        ),
      ),

    );
  }
}
