import 'package:flutter/material.dart';
import 'package:flutter_travel_planner/screens/music.dart';

class MusicLibraryRow extends StatelessWidget {
  const MusicLibraryRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Music()));
        },
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.08,
          decoration: BoxDecoration(
            color: Colors.red.shade100.withOpacity(0.5),
            //border: Border.all(width: 1, color: Colors.black)
          ),
          child: Row(
            children: [
              SizedBox(
                width: 20,
              ),
              InkWell(
                // onTap: playPause,
                child: Icon(
                  Icons.play_circle,
                  size: 60,
                  color: Colors.red.shade400,
                ),
              ),
              Slider(
                label: 'music',
                min: 0,
                max: 100,
                thumbColor: Colors.red.shade200,
                inactiveColor: Colors.grey,
                activeColor: Colors.red,
                value: 5.0,
                onChanged: (value) {
                  // await player.seek(Duration(seconds: value.toInt()));
                  // setState(() {});
                },
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                height: MediaQuery.sizeOf(context).height * 0.06,
                width: MediaQuery.sizeOf(context).width * 0.12,
                decoration: BoxDecoration(
                    color: Colors.red.shade300,
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(Icons.music_note_rounded),
              )
            ],
          ),
        ),
      ),
    );
  }
}
