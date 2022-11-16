import 'package:faceboook/assets.dart';
import 'package:faceboook/buttons/divider.dart';
import 'package:faceboook/buttons/namediconbutton.dart';
import 'package:faceboook/sections/likecomment.dart';
import 'package:faceboook/sections/post.dart';
import 'package:faceboook/sections/posttext.dart';
import 'package:faceboook/sections/profilehedder.dart';
import 'package:flutter/material.dart';

class SehwagProfile extends StatelessWidget {
  const SehwagProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 25, 93, 148),
        title: const Text(
          'Virender Sehwag',
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
                  sehwagcover,
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
                      image: AssetImage(sehwag),
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
              'Virender Sehwag',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
            ),
          ),
          const Center(
            child: Text(
              '@sehwag \n',
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
            avathar: sehwag,
            postTime: 'Today at 21:28',
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
                "Sky is special.SKY is limitless.Always a treat to watch.\n#suryakumaryadav#indvsZim\n",
          ),
          Post(posted: sehwagpost),
          const LikeComment(
            like: '  Fadia sha and 271k others   ',
            comment: '\n\n22K comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
          //  profile post 2

          ProfileHeadder(
            avathar: sehwag,
            postTime: '7 nov at 22:55',
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
                "Nothing you wear is more important than your smile. #smilemore #smilealways",
          ),
          Post(posted: sehwagpost2),
          const LikeComment(
            like: '  CBS Sports and 14k others',
            comment: '\n\n234 comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
          // neymar profile post 3

          ProfileHeadder(
            avathar: sehwag,
            postTime: '29 october at 12:26',
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
                "Sirf field pe hi nahi, general life mei bhi tashan chahiye.#n#n"
                "Asian Footwears ka style, comfort and long life hai meri everyday "
                "life ka tashan.\n\n"
                "Shop your pair of most stylish shoes in town now from your nearest"
                " footwear store or leading ecommerce platforms. Link in bio @asianfootwears"
                "\n\n#asianfootwears #asian #meratashanmeraasian #sportsshoes",
          ),
          Post(posted: sehwagpost3),
          const LikeComment(
            like: '  Hoang van and 5k others   ',
            comment: '\n\n263 comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
          // neymar profile post 4

          ProfileHeadder(
            avathar: sehwag,
            postTime: '17 october at 20:24',
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
                "In Success all depends on the second letter #cricketchallenge",
          ),
          Post(posted: sehwagpost4),
          const LikeComment(
            like: '  Num KALA and 161k others   ',
            comment: '\n\n803 comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
          //  profile post 5

          ProfileHeadder(
            avathar: sehwag,
            postTime: '3 November at 21:28',
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
              text: "DMissing your morning exercise?\n\n"
                  "#Uncompromise\n\n"
                  "Afternoon me karlo 😛\n\n"
                  "vsshop.in @vsbysehwag\n\n"
                  "#vsbysehwag #fitness #yoga See less"),
          Post(posted: sehwagpost5),
          const LikeComment(
            like: '  belos and 316k others          ',
            comment: '\n\n11K comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
        ],
      ),
    );
  }
}
