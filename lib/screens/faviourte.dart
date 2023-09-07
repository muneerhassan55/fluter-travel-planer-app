import 'package:flutter/material.dart';

class Faviourite extends StatelessWidget {
  const Faviourite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 241, 193, 189),
        title: Text("Faviourite"),
      ),
    );
  }
}
