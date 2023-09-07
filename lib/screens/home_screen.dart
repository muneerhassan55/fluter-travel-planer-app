import 'package:flutter/material.dart';

import 'botton_navigation.dart';
//import 'package:travel_planner_app/screens/botton_navigation.dart';

//import 'package:travel_planner_app/screens/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 218, 213, 175),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.09,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Explore Beauty\n Of journey',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text('Everthing you can imagine is here'),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.01,
          ),
          Center(
              child: Image(
            fit: BoxFit.fill,
            image: AssetImage('assets/p6.jpeg'),
            height: MediaQuery.sizeOf(context).height * 0.5,
            width: MediaQuery.sizeOf(context).width * 0.9,
          )),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.05,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BottomBar()));
              },
              child: Container(
                height: MediaQuery.sizeOf(context).height * 0.08,
                width: MediaQuery.sizeOf(context).width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 136, 134, 134).withOpacity(0.5)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                          height: MediaQuery.sizeOf(context).height * 0.05,
                          width: MediaQuery.sizeOf(context).width * 0.09,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.backpack,
                            color: Colors.white,
                          )),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.05,
                    ),
                    Text(
                      'Swipe to Explore now',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
