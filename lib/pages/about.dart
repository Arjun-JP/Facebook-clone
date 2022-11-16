import 'package:faceboook/assets.dart';
import 'package:faceboook/buttons/appbarbuttons.dart';
import 'package:faceboook/buttons/divider.dart';
import 'package:faceboook/buttons/statusbarbutton.dart';
import 'package:faceboook/home.dart';
import 'package:faceboook/pages/findfriend.dart';
import 'package:faceboook/pages/loginpage.dart';
import 'package:faceboook/pages/messenger.dart';
import 'package:faceboook/pages/notification.dart';
import 'package:faceboook/pages/profile.dart';
import 'package:faceboook/pages/videos.dart';
import 'package:faceboook/sections/aboutlist.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

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
                iconcolor: Color.fromARGB(255, 53, 52, 52),
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
                iconcolor: Colors.blueAccent,
              ),
            ],
          ),
          const AboutListProfile(),
          const Dividers(borderThickness: 2),
          AboutList(
            tileicon: Icons.find_replace_outlined,
            tiletext: 'Find friends',
            iconcolor: Colors.black,
            logoutButton: () {},
          ),
          AboutList(
            tileicon: Icons.groups_outlined,
            iconcolor: const Color.fromARGB(255, 6, 30, 103),
            tiletext: 'Groups',
            logoutButton: () {},
          ),
          AboutList(
            tileicon: Icons.live_tv_rounded,
            iconcolor: const Color.fromARGB(255, 103, 26, 197),
            tiletext: 'Video on Watch',
            logoutButton: () {},
          ),
          AboutList(
            tileicon: Icons.timer_rounded,
            iconcolor: const Color.fromARGB(255, 21, 76, 172),
            tiletext: 'On tis day',
            logoutButton: () {},
          ),
          AboutList(
            tileicon: Icons.system_update,
            iconcolor: Colors.deepPurple,
            tiletext: 'Saved',
            logoutButton: () {},
          ),
          AboutList(
            tileicon: Icons.flag_circle,
            iconcolor: Colors.orange,
            tiletext: 'Pages',
            logoutButton: () {},
          ),
          AboutList(
            tileicon: Icons.calendar_month,
            iconcolor: Colors.red,
            tiletext: 'Events',
            logoutButton: () {},
          ),
          AboutList(
            tileicon: Icons.sports_gymnastics,
            iconcolor: Colors.blue,
            tiletext: 'Gaming',
            logoutButton: () {},
          ),
          AboutList(
            tileicon: Icons.moped_rounded,
            iconcolor: const Color.fromARGB(255, 133, 133, 37),
            tiletext: 'See more',
            logoutButton: () {},
          ),
          AboutList(
            tileicon: Icons.help,
            iconcolor: Colors.blueGrey,
            tiletext: 'Help and support',
            logoutButton: () {},
          ),
          AboutList(
            tileicon: Icons.settings,
            iconcolor: Colors.blueGrey,
            tiletext: 'Settings & privacy',
            logoutButton: () {},
          ),
          AboutList(
            tileicon: Icons.logout,
            iconcolor: Colors.blueGrey,
            tiletext: 'Logout',
            logoutButton: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => LoginPage(),
                ),
                (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
