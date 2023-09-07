import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 241, 193, 189),
        title: Text('Profile'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 28, left: 28),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 40.0,
                  child: ClipRRect(
                    child: Image(image: AssetImage('assets/pr2.jpeg')),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.05,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Muneer Hasan',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text('Hey there! I am using travel planeer app')
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.03,
          ),
          Container(
            height: 0.2,
            color: Color.fromARGB(255, 135, 128, 128),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 28, left: 32),
            child: Row(
              children: [
                Icon(
                  Icons.memory_outlined,
                  size: 40,
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.05,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Gallary',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                    Text('Beautiful Places Photos and videos')
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 28, left: 32),
            child: Row(
              children: [
                Icon(
                  Icons.phone_android_outlined,
                  size: 40,
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.05,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Phone Number',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                    Text('03449005529')
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 28, left: 32),
            child: Row(
              children: [
                Icon(
                  Icons.email_outlined,
                  size: 40,
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.05,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                    Text('hasanmunner1122@gmail.com')
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 28, left: 32),
            child: Row(
              children: [
                Icon(
                  Icons.photo_album_outlined,
                  size: 40,
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.05,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Photes',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                    Text('My Photes')
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 28, left: 32),
            child: Row(
              children: [
                Icon(
                  Icons.contact_mail_outlined,
                  size: 40,
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.05,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Contacts',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                    Text('Contact numbers of  different hotels')
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 28, left: 32),
            child: Row(
              children: [
                Icon(
                  Icons.money,
                  size: 40,
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.05,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Expenses',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                    Text('Rate list of different hotel rooms')
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
