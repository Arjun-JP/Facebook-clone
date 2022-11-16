import 'package:faceboook/assets.dart';
import 'package:faceboook/buttons/divider.dart';
import 'package:faceboook/buttons/namediconbutton.dart';
import 'package:faceboook/sections/likecomment.dart';
import 'package:faceboook/sections/post.dart';
import 'package:faceboook/sections/posttext.dart';
import 'package:faceboook/sections/profilehedder.dart';
import 'package:flutter/material.dart';

class MullerProfile extends StatelessWidget {
  const MullerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 25, 93, 148),
        title: const Text(
          'Thomas Müller',
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
                  mullercover,
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
                      image: AssetImage(muller),
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
              'Thomas Müller',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
            ),
          ),
          const Center(
            child: Text(
              '@muller \n',
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
                'Works at PSG football club',
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
                'Lives in Paris,france',
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
              'from Spain',
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
            avathar: muller,
            postTime: '9 November at 21:28',
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
                "AD\n What I like to cook for dinner? Preferably something light that I "
                "don’t like! How about a crunchy salad with delicious vegan cevapcici from"
                " greenforce.food 🍽😊",
          ),
          Post(posted: mullerpost),
          const LikeComment(
            like: '  Fadia sha and 155k others   ',
            comment: '\n\n2.2K comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
          // neymar profile post 2

          ProfileHeadder(
            avathar: muller,
            postTime: '7 nov at 22:55',
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
                "The sporting anticipation, the responsibility and honor of representing"
                " our German colors at a World Cup is incomparable to anything. 🤝🇩🇪⚽️"
                "\n\n#nominierung #bisindiehaarspitzen #zusammen #packmas",
          ),
          Post(posted: mullerpost2),
          const LikeComment(
            like: '  CBS Sports and 101k others',
            comment: '\n\n4K comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
          // neymar profile post 3

          ProfileHeadder(
            avathar: muller,
            postTime: '29 october at 12:26',
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
                "Family ❤️ \n\n#homesweethome #tsvpähl #gutestimmung #gutenacht",
          ),
          Post(posted: mullerpost3),
          const LikeComment(
            like: '  Hoang van and 131k others   ',
            comment: '\n\n4.8K comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
          // neymar profile post 4

          ProfileHeadder(
            avathar: muller,
            postTime: '17 october at 20:24',
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
              text: " Waking up with a smile on the face 🤩⚽️\n"
                  "\nA very good performance from us yesterday night. These games are always special."
                  "\n\n#zauberergnabrinho #gibdenballzuchoupounderhautihnrein #unsersadio #zunullreich #zweikämpfe #spielfreude #teamperformance #miasanmia"),
          Post(posted: mullerpost4),
          const LikeComment(
            like: '  Num KALA and 168k others   ',
            comment: '\n\n4.2K comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
          //  profile post 5

          ProfileHeadder(
            avathar: muller,
            postTime: '3 November at 21:28',
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
              text: "There's that thing! 🏆\n\n"
                  "It's a great honor for me, by @markus. to have just been awarded the Bavarian Sports Prize 2022.\n\n"
                  "Bavaria is my home. Up"
                  "related to football as if my whole life. Therefore, I am of"
                  " course very happy about this award in my home country. Thanks to all my"
                  "@fcbayern Colleagues with whom I have been able to celebrate the numerous "
                  "successes in recent years. 👍🏼 I hope this title of prime minister won't be the last one this season. 😉"
                  "\n\n #teamwork #fcbayern #esmuellert #bavaria #inspiredfornewsuccess"),
          Post(posted: mullerpost5),
          const LikeComment(
            like: '  belos and 309k others          ',
            comment: '\n\n5.8K comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
        ],
      ),
    );
  }
}
