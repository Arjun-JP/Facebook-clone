import 'package:faceboook/assets.dart';
import 'package:faceboook/buttons/appbarbuttons.dart';
import 'package:faceboook/buttons/divider.dart';
import 'package:faceboook/buttons/statusbarbutton.dart';
import 'package:faceboook/home.dart';
import 'package:faceboook/pages/about.dart';
import 'package:faceboook/pages/findfriend.dart';
import 'package:faceboook/pages/messenger.dart';
import 'package:faceboook/pages/profile.dart';
import 'package:faceboook/pages/videos.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

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
                iconcolor: Colors.blueAccent,
              ),
              StatusBarButton(
                buttonicon: Icons.menu,
                navigator: About(),
                iconcolor: Color.fromARGB(255, 53, 52, 52),
              ),
            ],
          ),
          const Dividers(borderThickness: 2),
          NotificationTab(name: 'arjun', subtittle: 'like', avathar: messi)
        ],
      ),
    );
  }
}

class NotificationTab extends StatelessWidget {
  final String name;
  final String subtittle;
  final String avathar;
  const NotificationTab(
      {super.key,
      required this.name,
      required this.subtittle,
      required this.avathar});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(
              avathar,
            ),
            radius: 17,
          ),
          title:
              const Text('Leo Messi and 1.5 M others like your profile photo'),
          subtitle: const Text('2 sec ago'),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(
              notification1,
            ),
            radius: 17,
          ),
          title: const Text(
              'You can now  post and comment in Manchester United F.C.'),
          subtitle: const Text('5 min ago'),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(
              notification3,
            ),
            radius: 17,
          ),
          title: const Text(
              'New version of facebook is available now, click hear to update facebook '),
          subtitle: const Text('10 min ago'),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(
              notification2,
            ),
            radius: 17,
          ),
          title: const Text(
              'A device is requist access to log in (iphone 14 Pro in manchester England) '),
          subtitle: const Text('30 min ago'),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(
              notification3,
            ),
            radius: 17,
          ),
          title: const Text(
              'Donald J. Trump,Dwayne The Rock Johnson and manchester are now in facebook'),
          subtitle: const Text('45 min ago'),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(
              neymar,
            ),
            radius: 17,
          ),
          title: const Text('Neymar Jr. recently like your profile picture.'),
          subtitle: const Text('45 min ago'),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(
              notification2,
            ),
            radius: 17,
          ),
          title: const Text(
              'Security Information, Turn on two factor authentification for increase the account security'),
          subtitle: const Text('55 min ago'),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(
              ronaldopost,
            ),
            radius: 17,
          ),
          title: const Text(
              'Virat Kohli ,Thomas muller and 1.3M people like your photo'),
          subtitle: const Text('1 day ago'),
        ),
      ],
    );
  }
}
