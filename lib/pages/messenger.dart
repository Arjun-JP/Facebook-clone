import 'package:faceboook/assets.dart';
import 'package:faceboook/buttons/appbarbuttons.dart';
import 'package:faceboook/buttons/divider.dart';
import 'package:faceboook/buttons/statusbarbutton.dart';
import 'package:faceboook/home.dart';
import 'package:faceboook/pages/about.dart';
import 'package:faceboook/pages/findfriend.dart';
import 'package:faceboook/pages/notification.dart';
import 'package:faceboook/pages/profile.dart';
import 'package:faceboook/pages/videos.dart';
import 'package:flutter/material.dart';

class Messanger extends StatelessWidget {
  const Messanger({super.key});

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
                iconcolor: Colors.blueAccent,
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
          MsgTab(
            name: 'Dwayne The Rock Johnson',
            msgstatus: '5 messages',
            avathar: friend1,
            status: 'Active now',
          ),
          MsgTab(
            name: 'Donald J. Trump',
            msgstatus: 'Good game',
            avathar: friend2,
            status: 'Active 20 min ago',
          ),
          MsgTab(
            name: 'Thomas Muller',
            msgstatus: '2 Messages',
            avathar: muller,
            status: 'Active 29 min ago',
          ),
          MsgTab(
            name: 'Neymar Jr.',
            msgstatus: '15 messages',
            avathar: neymar,
            status: 'Active 38 min ago',
          ),
          MsgTab(
            name: 'Sergio Ramos',
            msgstatus: '22 Messages',
            avathar: ramos,
            status: 'Active 1 hour ago',
          ),
          MsgTab(
            name: 'Virat Kohli',
            msgstatus: '1 messages',
            avathar: kohli,
            status: 'Active 1hr 14 min ago',
          ),
          MsgTab(
            name: 'Leo Messi',
            msgstatus: '6 messages',
            avathar: messi,
            status: 'Active 2hr 37 min ago',
          ),
          MsgTab(
            name: 'Johnny Depp',
            msgstatus: '2 messages',
            avathar: friend5,
            status: 'Active 4hr 37 min ago',
          )
        ],
      ),
    );
  }
}

class MsgTab extends StatelessWidget {
  final String name;

  final String avathar;

  final String msgstatus;
  final String status;
  const MsgTab(
      {super.key,
      required this.name,
      required this.avathar,
      required this.msgstatus,
      required this.status});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(avathar),
        radius: 30,
      ),
      title: Text(name),
      subtitle: Text(msgstatus),
      trailing: Text(status),
    );
  }
}
