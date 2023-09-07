import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'package:travel_planner_app/componenets/pic_reusable_row.dart';
//import 'package:travel_planner_app/componenets/reusabe_row.dart';
//import 'package:travel_planner_app/componenets/round_reusable_Row.dart';
//import 'package:travel_planner_app/componenets/text_row.dart';
//import 'package:travel_planner_app/screens/faviourte.dart';
//import 'package:travel_planner_app/screens/music.dart';
//import 'package:travel_planner_app/screens/places.dart';
//import 'package:travel_planner_app/screens/profile.dart';

import '../componenets/pic_reusable_row.dart';
import '../componenets/reusabe_row.dart';
import '../componenets/round_reusable_Row.dart';
import '../componenets/text_row.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool isSelected = false;
  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isSelected3 = false;
  bool isSelected4 = false;

  //int _selectedIndex = 0;
  // static const List<Widget> _widgetOptions = <Widget>[
  //   // Text('Home Page',
  //   //     style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  //   // Text('Search Page',
  //   //     style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  //   // Text('Profile Page',
  //   //     style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  //   MainScreen(),
  //   Profile(),
  //   Music(),
  //   // Places()
  // ];
  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            CircleAvatar(
              radius: 30.0,
              child: ClipRRect(
                child: Image(image: AssetImage('assets/pr2.jpeg')),
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.05,
            ),
            Column(
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
                Text(
                  'Muneer Hasan',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.2,
            ),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color.fromARGB(255, 241, 193, 189)),
              child: Icon(
                Icons.notifications_active_outlined,
                color: Colors.white,
                size: 25,
              ),
            ),
            // Container(
            //   width: 50,
            //   height: 50,
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(25), color: Colors.green),
            //   child: CircleAvatar(
            //     radius: 25,

            //     child: Image(
            //       image: AssetImage('assets/pr5.jpeg'),
            //       height: 50,
            //       width: 50,

            //     ),
            //   ),
            // ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(
            //   height: 45,
            //   width: 360,
            //   child: TextField(
            //     style: GoogleFonts.poppins(
            //       color: const Color(0xff020202),
            //       fontSize: 20,
            //       fontWeight: FontWeight.w400,
            //       letterSpacing: 0.5,
            //     ),
            //     decoration: InputDecoration(
            //       filled: true,
            //       fillColor: const Color(0xfff1f1f1),
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(8),
            //         borderSide: BorderSide.none,
            //       ),
            //       hintText: "Search for Items",
            //       hintStyle: GoogleFonts.poppins(
            //           color: const Color(0xffb2b2b2),
            //           fontSize: 20,
            //           fontWeight: FontWeight.w400,
            //           letterSpacing: 0.5,
            //           decorationThickness: 6),
            //       prefixIcon: const Icon(Icons.search),
            //       prefixIconColor: Colors.black,
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: SearchBar(
                hintText: "Search",
                // controller: controller,
                padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.symmetric(horizontal: 15)),
                leading: const Icon(Icons.search),

                trailing: const [Icon(Icons.qr_code)],
              ),
            ),
            SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.06,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    // itemCount: 15,

                    children: [
                      ReusableRow(
                        image1: 'assets/p5.jpeg',
                        text: 'Mountain',
                      ),
                      ReusableRow(
                        image1: 'assets/p4.jpeg',
                        text: 'Sky',
                      ),
                      ReusableRow(
                        image1: 'assets/p3.jpeg',
                        text: 'Mountain',
                      ),
                      ReusableRow(
                        image1: 'assets/p2.jpeg',
                        text: 'Waterfalls',
                      ),
                      // ReusableRow(
                      //   image1: 'assets/p1.jpeg',
                      //   text: 'Rivers',
                      // ),
                      ReusableRow(
                        image1: 'assets/p9.jpeg',
                        text: 'Hotels',
                      ),
                      ReusableRow(
                        image1: 'assets/p5.jpeg',
                        text: 'Mountain',
                      ),
                      ReusableRow(
                        image1: 'assets/p4.jpeg',
                        text: 'Sky',
                      ),
                      ReusableRow(
                        image1: 'assets/p3.jpeg',
                        text: 'Mountain',
                      ),
                      ReusableRow(
                        image1: 'assets/p2.jpeg',
                        text: 'Waterfalls',
                      ),
                    ],
                  ),
                )),

            Padding(
              padding: const EdgeInsets.only(left: 15, top: 20, bottom: 20),
              child: Text(
                'Explore Cities',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.06,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.01,
                    ),
                    TextRow(
                      text: 'All',
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.01,
                    ),
                    TextRow(
                      text: 'Recomended',
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.01,
                    ),
                    TextRow(
                      text: 'Most Viewed',
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.01,
                    ),
                    TextRow(
                      text: 'Recording',
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.01,
                    ),
                    TextRow(
                      text: 'All',
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.01,
                    ),
                    TextRow(
                      text: 'Recomended',
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.01,
                    ),
                    TextRow(
                      text: 'Most Viewed',
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.01,
                    ),
                    TextRow(
                      text: 'Recording',
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.01,
                    ),
                    TextRow(
                      text: 'All',
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.01,
                    ),
                    TextRow(
                      text: 'Recomended',
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.01,
                    ),
                    TextRow(
                      text: 'Most Viewed',
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.01,
                    ),
                    TextRow(
                      text: 'Recording',
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.22,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  PicReusableRow(image: 'assets/n4.jpeg', text: 'Rivers'),
                  PicReusableRow(image: 'assets/n6.jpeg', text: 'Bulidings'),
                  PicReusableRow(image: 'assets/n2.jpeg', text: 'Nature'),
                  PicReusableRow(image: 'assets/n5.jpeg', text: 'Mountains'),
                  PicReusableRow(image: 'assets/n1.jpeg', text: 'Waterfalls'),
                  PicReusableRow(image: 'assets/n3.jpeg', text: 'Forests'),
                  PicReusableRow(image: 'assets/n3.jpeg', text: 'Mountains'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15),
              child: Text(
                'Popular Categries',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).width * 0.06,
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.2,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  RoundReusableRow(image: 'assets/f.jpeg', text: 'Flights'),
                  RoundReusableRow(image: 'assets/h.jpeg', text: 'Hotels'),
                  RoundReusableRow(image: 'assets/tt.jpeg', text: 'Transport'),
                  RoundReusableRow(image: 'assets/e.jpeg', text: 'Events'),
                  RoundReusableRow(image: 'assets/f.jpeg', text: 'Flights'),
                  RoundReusableRow(image: 'assets/h.jpeg', text: 'Hotels'),
                  RoundReusableRow(image: 'assets/tt.jpeg', text: 'Transport'),
                  RoundReusableRow(image: 'assets/e.jpeg', text: 'Events'),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.001,
            ),
            // SizedBox(
            //   height: MediaQuery.sizeOf(context).height * 0.1,
            //   child: BottomNavigationBar(
            //     type: BottomNavigationBarType.fixed,
            //     backgroundColor: Color.fromARGB(255, 221, 192, 190),
            //     selectedItemColor: Colors.white,
            //     unselectedItemColor: Colors.white.withOpacity(.60),
            //     selectedFontSize: 14,
            //     unselectedFontSize: 14,
            //     onTap: (value) {
            //       // Respond to item press.
            //     },
            //     items: [
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
            //       BottomNavigationBarItem(
            //         label: 'Music',
            //         backgroundColor: Colors.red,
            //         icon: GestureDetector(
            //           onTap: () {
            //             Navigator.push(context,
            //                 MaterialPageRoute(builder: (context) => Music()));
            //             setState(() {
            //               isSelected1 = !isSelected1;
            //             });
            //           },
            //           child: Container(
            //             height: 40,
            //             width: 40,
            //             decoration: BoxDecoration(
            //                 color: isSelected1 == true
            //                     ? Colors.pink
            //                     : Color.fromARGB(255, 221, 192, 190),
            //                 borderRadius: BorderRadius.circular(20)),
            //             child: Icon(
            //               Icons.music_note,
            //               size: 30,
            //               color:
            //                   isSelected1 == true ? Colors.black : Colors.white,
            //             ),
            //           ),
            //         ),
            //       ),
            //       BottomNavigationBarItem(
            //         label: 'Places',
            //         backgroundColor: Colors.red,
            //         icon: GestureDetector(
            //           onTap: () {
            //             Navigator.push(context,
            //                 MaterialPageRoute(builder: (context) => Places()));
            //             setState(() {
            //               isSelected2 = !isSelected2;
            //             });
            //           },
            //           child: Container(
            //             height: 40,
            //             width: 40,
            //             decoration: BoxDecoration(
            //                 color: isSelected2 == true
            //                     ? Colors.pink
            //                     : Color.fromARGB(255, 221, 192, 190),
            //                 borderRadius: BorderRadius.circular(20)),
            //             child: Icon(
            //               Icons.location_on,
            //               size: 30,
            //               color:
            //                   isSelected2 == true ? Colors.black : Colors.white,
            //             ),
            //           ),
            //         ),
            //       ),
            //       BottomNavigationBarItem(
            //         label: 'Favorites',
            //         backgroundColor: Colors.red,
            //         icon: GestureDetector(
            //           onTap: () {
            //             Navigator.push(
            //                 context,
            //                 MaterialPageRoute(
            //                     builder: (context) => Faviourite()));
            //             setState(() {
            //               isSelected3 = !isSelected3;
            //             });
            //           },
            //           child: Container(
            //             height: 40,
            //             width: 40,
            //             decoration: BoxDecoration(
            //                 color: isSelected3 == true
            //                     ? Colors.pink
            //                     : Color.fromARGB(255, 221, 192, 190),
            //                 borderRadius: BorderRadius.circular(20)),
            //             child: Icon(
            //               Icons.favorite_border_outlined,
            //               size: 30,
            //               color:
            //                   isSelected3 == true ? Colors.black : Colors.white,
            //             ),
            //           ),
            //         ),
            //       ),
            //       BottomNavigationBarItem(
            //         label: 'Profile',
            //         backgroundColor: Colors.red,
            //         icon: GestureDetector(
            //           onTap: () {
            //             Navigator.push(context,
            //                 MaterialPageRoute(builder: (context) => Profile()));
            //             setState(() {
            //               isSelected4 = !isSelected4;
            //             });
            //           },
            //           child: Container(
            //             height: 40,
            //             width: 40,
            //             decoration: BoxDecoration(
            //                 color: isSelected4 == true
            //                     ? Colors.pink
            //                     : Color.fromARGB(255, 221, 192, 190),
            //                 borderRadius: BorderRadius.circular(20)),
            //             child: Icon(
            //               Icons.person_2_outlined,
            //               size: 30,
            //               color:
            //                   isSelected4 == true ? Colors.black : Colors.white,
            //             ),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // )
            // Center(
            //   child: _widgetOptions.elementAt(_selectedIndex),
            // ),
            // SizedBox(
            //   height: MediaQuery.sizeOf(context).height * 0.1,
            //   child: BottomNavigationBar(
            //     type: BottomNavigationBarType.shifting,
            //     currentIndex: _selectedIndex,
            //     selectedItemColor: Colors.black,
            //     iconSize: 40,
            //     onTap: _onItemTapped,
            //     elevation: 5,
            //     items: <BottomNavigationBarItem>[
            //       BottomNavigationBarItem(
            //           icon: Icon(Icons.home),
            //           label: 'Home',
            //           backgroundColor: Colors.green),
            //       BottomNavigationBarItem(
            //           icon: Icon(Icons.search),
            //           label: 'Search',
            //           backgroundColor: Colors.yellow),
            //       BottomNavigationBarItem(
            //         icon: Icon(Icons.person),
            //         label: 'Profile',
            //         backgroundColor: Colors.blue,
            //       ),
            //     ],
            //   ),
            // ),
            // _pages[_selectedTab],
            // BottomNavigationBar(
            //   currentIndex: _selectedTab,
            //   onTap: (index) => _changeTab(index),
            //   selectedItemColor: Colors.red,
            //   unselectedItemColor: Colors.grey,
            //   items: [
            //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            //     BottomNavigationBarItem(
            //         icon: Icon(Icons.person), label: "About"),
            //     BottomNavigationBarItem(
            //         icon: Icon(Icons.grid_3x3_outlined), label: "MainScreen"),
            //     BottomNavigationBarItem(
            //         icon: Icon(Icons.contact_mail), label: "Contact"),
            //     BottomNavigationBarItem(
            //         icon: Icon(Icons.settings), label: "Settings"),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
