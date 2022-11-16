import 'package:faceboook/assets.dart';
import 'package:faceboook/buttons/appbarbuttons.dart';
import 'package:faceboook/buttons/divider.dart';
import 'package:faceboook/buttons/statusbarbutton.dart';
import 'package:faceboook/home.dart';
import 'package:faceboook/pages/about.dart';
import 'package:faceboook/pages/messenger.dart';
import 'package:faceboook/pages/notification.dart';
import 'package:faceboook/pages/profile.dart';
import 'package:faceboook/pages/videos.dart';
import 'package:flutter/material.dart';

class Findfriend extends StatelessWidget {
  const Findfriend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const Profile();
              },
            ));
          },
          child: Container(
            padding: const EdgeInsets.all(1),
            margin: const EdgeInsets.all(8),
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: const BorderRadius.all(Radius.circular(100)),
            ),
            child: CircleAvatar(
              radius: 5,
              backgroundImage: AssetImage(
                ronaldo,
              ),
            ),
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 25, 93, 148),
        title: const Text(
          'facebook',
          style: TextStyle(
              color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
        ),
        actions: [
          AppBarButton(
            buttonIcon: Icons.search,
            buttonAction: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const Findfriend();
                  },
                ),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          const Dividers(borderThickness: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              StatusBarButton(
                buttonicon: Icons.feed_outlined,
                navigator: Home(),
                iconcolor: Color.fromARGB(255, 53, 52, 52),
              ),
              StatusBarButton(
                buttonicon: Icons.people_rounded,
                navigator: Findfriend(),
                iconcolor: Colors.blueAccent,
              ),
              StatusBarButton(
                buttonicon: Icons.messenger_outline_sharp,
                navigator: Messanger(),
                iconcolor: Color.fromARGB(255, 53, 52, 52),
              ),
              StatusBarButton(
                buttonicon: Icons.live_tv_outlined,
                navigator: Videos(),
                iconcolor: Color.fromARGB(255, 53, 52, 52),
              ),
              StatusBarButton(
                buttonicon: Icons.notifications_none_outlined,
                navigator: Notifications(),
                iconcolor: Color.fromARGB(255, 53, 52, 52),
              ),
              StatusBarButton(
                buttonicon: Icons.menu,
                navigator: About(),
                iconcolor: Color.fromARGB(255, 53, 52, 52),
              ),
            ],
          ),
          const Dividers(borderThickness: 2),
          const Text(
            "People you may know\n",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          FindFriendTab(
            name: 'Dwayne The Rock Johnson',
            subtittle: 'Public figure· 60M followers',
            avathar: friend1,
          ),
          FindFriendTab(
            name: 'Donald J. Trump',
            subtittle: 'Political candidate  · 34M followers',
            avathar: friend2,
          ),
          FindFriendTab(
            name: 'Glenn Maxwell ',
            subtittle: 'Sportsperson  · 7M followers',
            avathar: friend3,
          ),
          FindFriendTab(
            name: 'Hrithik Roshan ',
            subtittle: 'Actor · 29M followers',
            avathar: friend4,
          ),
          FindFriendTab(
            name: 'Johnny Depp',
            subtittle: 'Actor  · 14M followers',
            avathar: friend5,
          ),
          FindFriendTab(
            name: 'Kamal Haasan',
            subtittle: 'Artist  · 3.4M followers',
            avathar: friend6,
          ),
          FindFriendTab(
            name: 'Sachin Tendulkar',
            subtittle: 'Sportsperson  · 38M followers',
            avathar: friend7,
          ),
          FindFriendTab(
            name: 'Shah Rukh Khan ',
            subtittle: 'Public figure  · 42M followers',
            avathar: friend8,
          ),
          FindFriendTab(
            name: 'Suriya Sivakumar',
            subtittle: 'Artist · 6.7M followers',
            avathar: friend9,
          ),
          FindFriendTab(
            name: 'Yash',
            subtittle: 'Artist  · 8.7M followers',
            avathar: friend10,
          ),
          FindFriendTab(
            name: '成龍 Jackie Chan',
            subtittle: 'Actor · 72M followers',
            avathar: friend11,
          ),
          FindFriendTab(
            name: 'Fahadh Faasil',
            subtittle: 'Artist  · 3.4M followers',
            avathar: friend12,
          ),
        ],
      ),
    );
  }
}

class FindFriendTab extends StatelessWidget {
  final String name;
  final String subtittle;
  final String avathar;
  const FindFriendTab(
      {super.key,
      required this.name,
      required this.subtittle,
      required this.avathar});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                avathar,
              ),
              radius: 45,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Text(
                subtittle,
                style: const TextStyle(
                    fontSize: 13, color: Color.fromARGB(255, 127, 128, 130)),
              ),
              Row(
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 68, 118, 204),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('   Add Friend   '),
                  ),
                  const VerticalDivider(
                    width: 8,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 235, 231, 231),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      '     Remove     ',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              )
            ],
          )
        ]),
      ],
    );
  }
}
