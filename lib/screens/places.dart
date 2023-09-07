import 'package:flutter/material.dart';
import 'package:flutter_travel_planner/componenets/reusable_place_row.dart';

class Places extends StatelessWidget {
  const Places({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 241, 193, 189),
        title: Text("Places"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReusablePlaceRow(
                image1: 'assets/n7.jpeg',
                image2: 'assets/n6.jpeg',
                text1: 'Karachi',
                text2: 'Isalmabad'),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.02,
            ),
            ReusablePlaceRow(
                image1: 'assets/n1.jpeg',
                image2: 'assets/n2.jpeg',
                text1: 'Swat',
                text2: 'Kalam'),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.02,
            ),
            ReusablePlaceRow(
                image1: 'assets/n3.jpeg',
                image2: 'assets/n4.jpeg',
                text1: 'Sindh',
                text2: 'Naran'),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.02,
            ),
            ReusablePlaceRow(
                image1: 'assets/n5.jpeg',
                image2: 'assets/n6.jpeg',
                text1: 'Lahore',
                text2: 'Isalmabad'),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.02,
            ),
            ReusablePlaceRow(
                image1: 'assets/n5.jpeg',
                image2: 'assets/n6.jpeg',
                text1: 'Lahore',
                text2: 'Isalmabad'),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.02,
            ),
            ReusablePlaceRow(
                image1: 'assets/e.jpeg',
                image2: 'assets/e.jpeg',
                text1: 'Peshewar',
                text2: 'Karachi'),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
