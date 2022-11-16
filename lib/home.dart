import 'package:faceboook/assets.dart';
import 'package:faceboook/buttons/appbarbuttons.dart';
import 'package:faceboook/buttons/divider.dart';
import 'package:faceboook/buttons/roombutton.dart';
import 'package:faceboook/buttons/statusbarbutton.dart';
import 'package:faceboook/pages/about.dart';
import 'package:faceboook/pages/findfriend.dart';
import 'package:faceboook/pages/kohliprofile.dart';
import 'package:faceboook/pages/messenger.dart';
import 'package:faceboook/pages/messiprofile.dart';
import 'package:faceboook/pages/mullerprofile.dart';
import 'package:faceboook/pages/neymarprofile.dart';
import 'package:faceboook/pages/notification.dart';
import 'package:faceboook/pages/profile.dart';
import 'package:faceboook/pages/ramosprofile.dart';
import 'package:faceboook/pages/sehwagprofile.dart';
import 'package:faceboook/pages/videos.dart';
import 'package:faceboook/sections/likecomment.dart';
import 'package:faceboook/sections/post.dart';
import 'package:faceboook/sections/posttext.dart';
import 'package:faceboook/sections/profilehedder.dart';
import 'package:faceboook/sections/statusavathar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const Profile();
                },
              ),
            );
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
        // iconTheme: IconThemeData(color: Colors.black),
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
                iconcolor: Colors.blueAccent,
              ),
              StatusBarButton(
                buttonicon: Icons.people_sharp,
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
                iconcolor: Color.fromARGB(255, 53, 52, 52),
                navigator: About(),
              ),
            ],
          ),
          const Dividers(borderThickness: 2),
          SizedBox(
            height: 70,
            child: ListView(
              padding: const EdgeInsets.all(5),
              scrollDirection: Axis.horizontal,
              children: [
                RoomButton(
                  buttonIcon: Icons.video_call,
                  buttontext: 'Creat\nRoom',
                  iconcolor: Colors.deepPurple,
                  action: () {
                    // print('butten clicked');
                  },
                ),
                StatusAvathar(avathar: messi),
                StatusAvathar(avathar: kohli),
                StatusAvathar(avathar: neymar),
                StatusAvathar(avathar: surya),
                StatusAvathar(avathar: sehwag),
                StatusAvathar(avathar: muller),
                StatusAvathar(avathar: ramos),
              ],
            ),
          ),
          const Dividers(borderThickness: 8),
          // neymar post
          ProfileHeadder(
            avathar: neymar,
            postTime: '15 sec ago',
            profileName: 'Neymar Jr.',
            buttonAction: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const NeymarProfile();
                  },
                ),
              );
            },
          ),
          const PostText(
            text:
                "Every squadmate needs an attacker. I'am coming to call of duty ! #CoDPartner\n\n#Warezone2 #ModernWarfare2 #CODMobile",
          ),
          Post(posted: neymarpost),
          const LikeComment(
            like: '   MC Dino and 178K others',
            comment: '\n\n6.7K comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
          // messi post
          ProfileHeadder(
            avathar: messi,
            postTime: '1 min ago',
            profileName: 'leo Messi',
            buttonAction: (() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const MessiProfile();
                  },
                ),
              );
            }),
          ),
          const PostText(
              text:
                  "#Building!! Happy to celbrate our goals and our win today in front of our fans ⚽💪"),
          Post(posted: messipost),
          const LikeComment(
            like: '  Neymar Jr. and 849k others',
            comment: '\n\n10.6Kcomment',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
          // virat post

          ProfileHeadder(
            avathar: kohli,
            postTime: '2 min ago',
            profileName: 'Virat Kohli',
            buttonAction: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const KohliProfile();
                  },
                ),
              );
            },
          ),
          const PostText(
            text: "➡️#Semifinals🇮🇳",
          ),
          Post(posted: kohlipost),
          const LikeComment(
            like: '   Iram Javed and 555K others',
            comment: '\n\n28K comments',
          ),
          const Divider(
            thickness: 2,
            color: Color.fromARGB(255, 189, 208, 216),
          ),
          const LikeBar(),
          const Dividers(borderThickness: 8),
          // muller post
          ProfileHeadder(
            avathar: muller,
            postTime: '5 min ago',
            profileName: 'Thomas Müller',
            buttonAction: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const MullerProfile();
                  },
                ),
              );
            },
          ),
          const PostText(
            text:
                "AD\nWhat I like to cook for dinner? preferably somthing lightthat I dont like! How about a crunchy salad with delicious vegan cevapcici from greenforce.food🍽️😄\n\n#probierspflanzlich #thomasprobiertsvegan",
          ),
          Post(posted: mullerpost),
          const LikeComment(
            like: '    34K               ',
            comment: '\n\n1.7K comments 188 shares',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
          // sehwag post
          ProfileHeadder(
            avathar: sehwag,
            postTime: '10 min ago',
            profileName: 'Virender Sehwag',
            buttonAction: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SehwagProfile();
                  },
                ),
              );
            },
          ),
          const PostText(
            text:
                "Sky is special.SKY is limitless.Always a treat to watch.\n#suryakumaryadav#indvsZim",
          ),
          Post(posted: sehwagpost),
          const LikeComment(
            like: '  yogesh  and 429K others   ',
            comment: '\n\n4.2K comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),

          // Ramos
          ProfileHeadder(
            avathar: ramos,
            postTime: '11 min ago',
            profileName: 'Sergio Ramos',
            buttonAction: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const RamosProfile();
                  },
                ),
              );
            },
          ),
          const PostText(
            text:
                "➕3️⃣\nVictoria importante fuera de casa.An important away win."
                "Victoire importante à l'extérieur.\n\n#AlezParis",
          ),
          Post(posted: ramospost),
          const LikeComment(
            like: '   Arthur  and 429K others     ',
            comment: '\n\n2.2K comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),

          // Ronaldo
          ProfileHeadder(
            avathar: ronaldo,
            postTime: '14 min ago',
            profileName: 'Cristiano Ronaldo',
            buttonAction: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const Profile();
                  },
                ),
              );
            },
          ),
          const PostText(
            text: " We move on and we keep going after our goals this season!"
                "Thanks to our supporters that never give up on us! 👏",
          ),
          Post(posted: ronaldopost),
          const LikeComment(
            like: 'Fadia shabroz and 1.5M others',
            comment: '\n\n47K comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
        ],
      ),
    );
  }
}
