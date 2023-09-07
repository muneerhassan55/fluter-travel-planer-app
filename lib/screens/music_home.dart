import 'package:flutter/material.dart';
import 'package:flutter_travel_planner/componenets/music_library_row.dart';

class MusicHome extends StatefulWidget {
  const MusicHome({super.key});

  @override
  State<MusicHome> createState() => _MusicHomeState();
}

class _MusicHomeState extends State<MusicHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Music Library"),
        backgroundColor: Color.fromARGB(255, 241, 193, 189),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Text(
                'Library',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Center(
                child: Image(
                  image: AssetImage('assets/aimage.png'),
                  //width: double.infinity,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MusicLibraryRow(),
                SizedBox(
                  height: 5,
                ),
                MusicLibraryRow(),
                SizedBox(
                  height: 5,
                ),
                MusicLibraryRow(),
                SizedBox(
                  height: 5,
                ),
                MusicLibraryRow(),
                SizedBox(
                  height: 5,
                ),
                MusicLibraryRow(),
                SizedBox(
                  height: 5,
                ),
                MusicLibraryRow(),
                SizedBox(
                  height: 5,
                ),
                MusicLibraryRow(),
                SizedBox(
                  height: 5,
                ),
                MusicLibraryRow(),
                SizedBox(
                  height: 5,
                ),
                MusicLibraryRow(),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
