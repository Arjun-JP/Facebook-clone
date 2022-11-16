import 'package:faceboook/assets.dart';
import 'package:faceboook/buttons/divider.dart';
import 'package:faceboook/buttons/namediconbutton.dart';
import 'package:faceboook/sections/likecomment.dart';
import 'package:faceboook/sections/post.dart';
import 'package:faceboook/sections/posttext.dart';
import 'package:faceboook/sections/profilehedder.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 25, 93, 148),
        title: const Text(
          'Cristiano Ronaldo',
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
                  ronaldocover,
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
                      image: AssetImage(ronaldo),
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
              'Cristiano Ronaldo',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
            ),
          ),
          const Center(
            child: Text(
              '@Cristiano\n',
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
                    buttonicon: Icons.add,
                  ),
                  NameSatusProfile(name: 'Add Story'),
                ],
              ),
              Column(
                children: const [
                  NameIconButton(
                    buttonicon: Icons.remove_red_eye,
                  ),
                  NameSatusProfile(name: 'View As'),
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
                'Works at Manchester United',
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
                'Lives in Old Trafford Manchester',
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
              'from Madeira Portugal',
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
                child: TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                    color: Colors.white,
                    size: 15,
                  ),
                  label: const Text(
                    'Edit profile',
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
          // ronaldo profile post one
          const Dividers(borderThickness: 8),
          ProfileHeadder(
            avathar: ronaldo,
            postTime: '3 November at 21:28',
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
            text:
                "AD\nWhat I like to cook for dinner? preferably somthing lightthat I dont like! How about a crunchy salad with delicious vegan cevapcici from greenforce.food🍽️😄\n\n#probierspflanzlich #thomasprobiertsvegan",
          ),
          Post(posted: ronaldopost),
          const LikeComment(
            like: '  Fadia sha and 1.5M others   ',
            comment: '\n\n48K comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
          // ronaldo profile post 2

          ProfileHeadder(
            avathar: ronaldo,
            postTime: '30 october at 20:43',
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
            text: " 3 important points 💪#WellDoneLads",
          ),
          Post(posted: cr7post2),
          const LikeComment(
            like: '  CBS Sports and 1.2M others',
            comment: '\n\n38K comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
          // ronaldo profile post 3

          ProfileHeadder(
            avathar: ronaldo,
            postTime: '28 october at 12:26',
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
            text: "Bringing my essence into a fragrance. #CR7ORIGINS",
          ),
          Post(posted: cr7post3),
          const LikeComment(
            like: '  Hoang van and 1.4M others   ',
            comment: '\n\n55K comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
          // ronaldo profile post 4

          ProfileHeadder(
            avathar: ronaldo,
            postTime: '28 october at 22:24',
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
            text:
                " Great team effort and agood victory.we stand together.Lets's go,United!💪🙏🏽",
          ),
          Post(posted: cr7post4),
          const LikeComment(
            like: '  Num KALA and 2.9M others   ',
            comment: '\n\n143K comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
          // ronaldo profile post 5

          ProfileHeadder(
            avathar: ronaldo,
            postTime: '3 November at 21:28',
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
            text:
                "As l've always done throughout my career, I try to live and play "
                "respectfully towards my colleagues, my adversaries and my coaches. "
                "That hasn't changed. Ihaven't changed. I'm the same person and the "
                "same professional that I've been for the last 20 years playing elite "
                "football, and respect has always played a very important role in my "
                "decision making process. started very young, the older and most experienced"
                " players examples were always very important to me. Therefore, later on, l've "
                "always tried to set the example myself for the youngsters that grew in all the "
                "teams that I've represented.Unfortunately that's not always possible and sometimes"
                " the heat of the moment get's the best of us.Right now, I just feel that"
                " I have to keep working hard in Carrington, support my teammates and be ready "
                "for everything in any given game. Giving in to the pressure is not an option. "
                "It never was. This is Manchester United, and united we must stand. Soon we'll be "
                "together again. GA💪🙏🏽",
          ),
          Post(posted: cr7post5),
          const LikeComment(
            like: '  belos and 1.5M others          ',
            comment: '\n\n48K comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
        ],
      ),
    );
  }
}
