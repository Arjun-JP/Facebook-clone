import 'package:faceboook/assets.dart';
import 'package:faceboook/buttons/divider.dart';
import 'package:faceboook/buttons/namediconbutton.dart';
import 'package:faceboook/sections/likecomment.dart';
import 'package:faceboook/sections/post.dart';
import 'package:faceboook/sections/posttext.dart';
import 'package:faceboook/sections/profilehedder.dart';
import 'package:flutter/material.dart';

class KohliProfile extends StatelessWidget {
  const KohliProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 25, 93, 148),
        title: const Text(
          'Virat Kohli',
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
                  kohlicover,
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
                      image: AssetImage(kohli),
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
              'Virat Kohli',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
            ),
          ),
          const Center(
            child: Text(
              '@kohli \n',
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
                  NameSatusProfile(name: 'Story'),
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
                'Works at Indian Cricket Team',
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
                'Lives in Delhi,India',
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
              'from Delhi, India',
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
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_horiz,
                    size: 18,
                  ),
                ),
              ),
            ],
          ),
          // profile post one
          const Dividers(borderThickness: 8),
          ProfileHeadder(
            avathar: kohli,
            postTime: 'Today at 21:28',
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
            text:
                "We leave Australian shores short of achieving our dream and with "
                "disappointment in our hearts but we can take back a lot of memorable"
                " moments as a group and aim to get better from here on. Thank you to "
                "all our fans who turned up in huge numbers throughout to support us in "
                "the stadiums. Always feel proud to wear this jersey and represent our country 🇮🇳💙\n",
          ),
          Post(posted: kohlilatest),
          const LikeComment(
            like: '  Fadia sha and 271k others   ',
            comment: '\n\n22K comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
          //  profile post 2

          ProfileHeadder(
            avathar: kohli,
            postTime: '7 nov at 22:55',
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
            text: " Australia bound ✈️. Exciting times ahead. ✌️",
          ),
          Post(posted: kohlipost),
          const LikeComment(
            like: '  CBS Sports and 21k others',
            comment: '\n\n234 comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
          // neymar profile post 3

          ProfileHeadder(
            avathar: kohli,
            postTime: '29 october at 12:26',
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
            text: "Touchdown Adelaide 🇮🇳",
          ),
          Post(posted: kohlipost2),
          const LikeComment(
            like: '  Hoang van and 536k others   ',
            comment: '\n\n18K comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
          // neymar profile post 4

          ProfileHeadder(
            avathar: kohli,
            postTime: '17 october at 20:24',
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
            text: " 📸",
          ),
          Post(posted: kohlipost3),
          const LikeComment(
            like: '  Num KALA and 39k others   ',
            comment: '\n\n854 comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
          //  profile post 5

          ProfileHeadder(
            avathar: kohli,
            postTime: '3 November at 21:28',
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
              text:
                  "Day off with the boys ⭐ \n#HarshalPatel Deepak Hooda Akshar Patel"),
          Post(posted: kohlipost4),
          const LikeComment(
            like: '  belos and 316k others          ',
            comment: '\n\n11K comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),

          //  profile post 6

          ProfileHeadder(
            avathar: kohli,
            postTime: '3 November at 21:28',
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
              text: "Happy birthday Hulk. God bless you. 😎Bunty Sajdeh"),
          Post(posted: kohlipost5),
          const LikeComment(
            like: '  belos and 273k others          ',
            comment: '\n\n5.1K comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
        ],
      ),
    );
  }
}
