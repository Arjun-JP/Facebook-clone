import 'package:faceboook/assets.dart';
import 'package:faceboook/buttons/divider.dart';
import 'package:faceboook/buttons/namediconbutton.dart';
import 'package:faceboook/sections/likecomment.dart';
import 'package:faceboook/sections/post.dart';
import 'package:faceboook/sections/posttext.dart';
import 'package:faceboook/sections/profilehedder.dart';
import 'package:flutter/material.dart';

class NeymarProfile extends StatelessWidget {
  const NeymarProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.pushAndRemoveUntil(
        //       context,
        //       MaterialPageRoute(
        //         builder: (BuildContext context) => Home(),
        //       ),
        //       (route) => false,
        //     );
        //   },
        //   icon: Icon(Icons.arrow_back),
        // ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 25, 93, 148),
        title: const Text(
          'Neymar Jr.',
          style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
        ),
      ),
      // Profile pic and cover
      body: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 200,
                width: 360,
                padding: const EdgeInsets.all(15),
                child: Image.asset(
                  neymarcover,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: 100.0,
                right: 100.0,
                left: 100.0,
                child: Container(
                  width: 50,
                  height: 160,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(neymar),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: Colors.white,
                      width: 4.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          // Name  below Profile
          const Divider(
            height: 65,
          ),
          const Center(
            child: Text(
              'Neymar Jr.',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
            ),
          ),
          const Center(
            child: Text(
              '@neymar \n',
              style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 14,
                  color: Color.fromARGB(255, 98, 97, 97)),
            ),
          ),
          // Buttons Below profile
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: const [
                  NameIconButton(
                    buttonicon: Icons.remove_red_eye,
                  ),
                  NameSatusProfile(name: ' Story'),
                ],
              ),
              Column(
                children: const [
                  NameIconButton(
                    buttonicon: Icons.view_headline_sharp,
                  ),
                  NameSatusProfile(name: 'Activity Log'),
                ],
              ),
              Column(
                children: const [
                  NameIconButton(
                    buttonicon: Icons.more_horiz,
                  ),
                  NameSatusProfile(name: 'More'),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 30,
            child: ListTile(
              leading: Icon(Icons.work_outlined),
              title: Text(
                'Works at PSG Football Club',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.black),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
            child: ListTile(
              leading: Icon(Icons.work_outlined),
              title: Text(
                'Lives in Paris,France',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.black),
              ),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.work_outlined),
            title: Text(
              'from Mogi das Cruzes, Brazil',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.black),
            ),
          ),
          // edit profile button
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueAccent,
                ),
                height: 30,
                width: 295,
                margin: const EdgeInsets.only(
                    left: 15, right: 5, top: 15, bottom: 15),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Unfollow',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(255, 213, 208, 208),
                ),
                height: 30,
                width: 30,
                margin: const EdgeInsets.only(
                  left: 0,
                  right: 15,
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const NeymarProfile();
                        },
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.more_horiz,
                    size: 18,
                  ),
                ),
              ),
            ],
          ),
          // neymar profile post one
          const Dividers(borderThickness: 8),
          ProfileHeadder(
            avathar: neymar,
            postTime: '9 November at 21:28',
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
            text: "Fala galera, to chegando com as skins mais brabas do"
                " PUBG: BATTLEGROUNDS !Foi incrível poder participar do"
                " processo de criação pra deixar tudo com a minha cara."
                "Espero q vcs curtam, comentem aí o que acharam."
                "\n\n — with PUBG: BATTLEGROUNDS.",
          ),
          Post(posted: neymarposr2),
          const LikeComment(
            like: '  Fadia sha and 19k others   ',
            comment: '\n\n1.2K comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
          // neymar profile post 2

          ProfileHeadder(
            avathar: neymar,
            postTime: '7 nov at 22:55',
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
                " Every squadmate needs an attacker. I’m coming to Call of Duty "
                "! #CoDPartner"
                "\n\n#Warzone2 #ModernWarfare2 #CODMobile — with Call of Duty.",
          ),
          Post(posted: neymarpost),
          const LikeComment(
            like: '  CBS Sports and 180k others',
            comment: '\n\n6.8K comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
          // neymar profile post 3

          ProfileHeadder(
            avathar: neymar,
            postTime: '29 october at 12:26',
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
            text: "Que Deus nos abençoe e nos proteja 🇧🇷💙💚💛",
          ),
          Post(posted: neymarposr3),
          const LikeComment(
            like: '  Hoang van and 465k others   ',
            comment: '\n\n23K comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
          // neymar profile post 4

          ProfileHeadder(
            avathar: neymar,
            postTime: '17 october at 20:24',
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
            text: " ",
          ),
          Post(posted: neymarposr4),
          const LikeComment(
            like: '  Num KALA and 7.1k others   ',
            comment: '\n\n301 comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
          // neymar profile post 5

          ProfileHeadder(
            avathar: neymar,
            postTime: '3 November at 21:28',
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
          const PostText(text: "Ludmilla ❤️"),
          Post(posted: neymarposr5),
          const LikeComment(
            like: '  belos and 664k others          ',
            comment: '\n\n19K comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
        ],
      ),
    );
  }
}
