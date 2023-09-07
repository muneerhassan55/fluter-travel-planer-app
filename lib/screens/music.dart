import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Music extends StatefulWidget {
  const Music({super.key});

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  bool isPlaying = false;
  late final AudioPlayer player;
  late final AssetSource path;
  Duration _duration = const Duration();
  Duration _postion = const Duration();
  @override
  void initState() {
    initPlayer();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    player.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  Future initPlayer() async {
    player = AudioPlayer();
    path = AssetSource('audio1.mp3');
    player.onDurationChanged.listen((Duration d) {
      setState(() {
        _duration = d;
      });
    });
    player.onPositionChanged.listen((Duration p) {
      setState(() {
        _postion = p;
      });
    });
    player.onPlayerComplete.listen((_) {
      setState(() {
        _postion = _duration;
      });
    });
  }

  void playPause() async {
    if (isPlaying) {
      player.pause();
      isPlaying = false;
    } else {
      player.play(path);
      isPlaying = true;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Music Player'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(
                'assets/aimage.png',
              ),
              width: double.infinity,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Song',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            Text('hhhhh'),
            Slider(
              min: 0,
              max: _duration.inSeconds.toDouble(),
              inactiveColor: Colors.grey,
              activeColor: Colors.red,
              value: _postion.inSeconds.toDouble(),
              onChanged: (value) async {
                await player.seek(Duration(seconds: value.toInt()));
                setState(() {});
              },
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [Text(_duration.format())],
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    player.seek(Duration(seconds: _postion.inSeconds - 10));
                    setState(() {});
                  },
                  child: Image(
                    image: AssetImage('assets/h.jpeg'),
                    width: 50,
                    height: 70,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: playPause,
                  child: Icon(
                    isPlaying ? Icons.pause_circle : Icons.play_circle,
                    size: 100,
                    color: Colors.red,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    player.seek(Duration(seconds: _postion.inSeconds + 10));
                    setState(() {});
                  },
                  child: Image(
                    image: AssetImage('assets/h.jpeg'),
                    width: 50,
                    height: 80,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}




// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';

// class Music extends StatefulWidget {
//   const Music({super.key});

//   @override
//   State<Music> createState() => _MusicState();
// }

// class _MusicState extends State<Music> {
//   final audioplayer = AudioPlayer();
//   bool isplaying = false;
//   Duration duration = Duration.zero;
//   Duration postion = Duration.zero;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     setAudio();
//     audioplayer.onPlayerStateChanged.listen((state) {
//       setState(() {
//         isplaying = state == PlayerState.playing;
//       });
//     });
//     audioplayer.onDurationChanged.listen((newDuration) {
//       setState(() {
//         duration = newDuration;
//       });
//     });
//     audioplayer.onPositionChanged.listen((newPostion) {
//       setState(() {
//         postion = newPostion;
//       });
//     });
//   }

//   Future setAudio() async {
//     audioplayer.setReleaseMode(ReleaseMode.loop);
//     String url =
//         'https://gaana.com/playlist/rosidathokchom-gbabd-audiohindisong';
//     audioplayer.setSourceUrl(url);
//   }

//   @override
//   void dispose() {
//     audioplayer.dispose();
//     // TODO: implement dispose
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(20),
//               child: Image.asset(
//                 'assets/e.jpeg',
//                 width: double.infinity,
//                 height: 350,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             SizedBox(height: 32),
//             Text(
//               '💙   The Flutter Song',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(
//               height: 4,
//             ),
//             Text(
//               'Sarah abs',
//               style: TextStyle(fontSize: 20),
//             ),
//             Slider(
//                 thumbColor: Colors.blue.shade300,
//                 min: 0,
//                 max: duration.inSeconds.toDouble(),
//                 value: postion.inSeconds.toDouble(),
//                 onChanged: (value) async {
//                   final postion = Duration(seconds: value.toInt());
//                   await audioplayer.seek(postion);
//                   await audioplayer.resume();
//                 }),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(postion.inSeconds.toString()),
//                   Text((duration - postion).inSeconds.toString())
//                 ],
//               ),
//             ),
//             CircleAvatar(
//               backgroundColor: Colors.blue,
//               radius: 35,
//               child: IconButton(
//                 icon: Icon(
//                   isplaying ? Icons.pause : Icons.play_arrow,
//                   color: Colors.white,
//                 ),
//                 iconSize: 50,
//                 onPressed: () async {
//                   int i = 0;
//                   i++;
//                   print('fff' + i.toString());
//                   if (isplaying) {
//                     await audioplayer.pause();
//                   } else {
//                     await audioplayer.resume();
//                   }
//                 },
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
