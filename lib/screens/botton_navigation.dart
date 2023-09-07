import 'package:flutter/material.dart';
import 'package:flutter_travel_planner/screens/places.dart';
import 'package:flutter_travel_planner/screens/profile.dart';

import 'faviourte.dart';
import 'main_screen.dart';
import 'music.dart';
//import 'package:travel_planner_app/screens/faviourte.dart';
//import 'package:travel_planner_app/screens/main_screen.dart';
//import 'package:travel_planner_app/screens/music.dart';
//import 'package:travel_planner_app/screens/places.dart';
//import 'package:travel_planner_app/screens/profile.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedTab = 0;

  List _pages = [
    MainScreen(),
    Music(),
    Places(),
    Faviourite(),
    Profile()

    // Center(
    //   child: Text("Products"),
    // ),
    // Center(
    //   child: Text("Contact"),
    // ),
    // Center(
    //   child: Text("Settings"),
    // ),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        // selectedItemColor: Colors.red,
        // unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 241, 193, 189),
        selectedItemColor: const Color.fromARGB(255, 181, 57, 57),
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                size: 30,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.music_note,
                size: 30,
              ),
              label: "Music"),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on), label: "Places"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border_outlined,
                size: 30,
              ),
              label: "Faviourte"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_2_outlined,
                size: 30,
              ),
              label: "Profile"),
        ],
      ),
    );
  }
}
 //       BottomNavigationBarItem(
            //         label: 'Home',
            //         backgroundColor: Colors.red,
            //         icon: GestureDetector(
            //           onTap: () {
            //             setState(() {
            //               isSelected = !isSelected;
            //             });
            //           },
            //           child: Container(
            //             height: 40,
            //             width: 40,
            //             decoration: BoxDecoration(
            //                 color: isSelected == true
            //                     ? Colors.pink
            //                     : Color.fromARGB(255, 221, 192, 190),
            //                 borderRadius: BorderRadius.circular(20)),
            //             child: Icon(
            //               Icons.home_filled,
            //               size: 30,
            //               color:
            //                   isSelected == true ? Colors.black : Colors.white,
            //             ),
            //           ),
            //         ),
            //       ),
