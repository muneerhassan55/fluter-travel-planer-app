import 'package:flutter/material.dart';

class ReusablePlaceRow extends StatelessWidget {
  String image1, image2;
  String text1, text2;
  ReusablePlaceRow(
      {required this.image1,
      required this.image2,
      required this.text1,
      required this.text2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 5),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage(image1),
                  width: 190,
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.01,
                ),
                Text(
                  text1,
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.01,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage(image2),
                width: 190,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.01,
              ),
              Text(
                text2,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
