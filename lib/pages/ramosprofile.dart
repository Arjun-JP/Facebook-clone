import 'package:faceboook/assets.dart';
import 'package:faceboook/buttons/divider.dart';
import 'package:faceboook/buttons/namediconbutton.dart';
import 'package:faceboook/sections/likecomment.dart';
import 'package:faceboook/sections/post.dart';
import 'package:faceboook/sections/posttext.dart';
import 'package:faceboook/sections/profilehedder.dart';
import 'package:flutter/material.dart';

class RamosProfile extends StatelessWidget {
  const RamosProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 25, 93, 148),
        title: const Text(
          'Sergio Ramos',
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
                  ramoscover,
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
                      image: AssetImage(ramos),
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
              'Sergio Ramos',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
            ),
          ),
          const Center(
            child: Text(
              '@ramos \n',
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
            avathar: ramos,
            postTime: '9 November at 21:28',
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
            like: '  Fadia sha and 155k others   ',
            comment: '\n\n2.2K comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
          // neymar profile post 2

          ProfileHeadder(
            avathar: ramos,
            postTime: '7 nov at 22:55',
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
                "Satisfaction with the victory in Turin, even though we couldn't"
                " achieve the first place.\n#ChampionsLeague see you in February!"
                "\n\nSatisfied with the victory in Turin, even though we couldn't win first place."
                "#UCL, see you in February!"
                "\n\nSatisfied with the win in Turin, even if we couldn't secure first place."
                "#UCL see you in February! #AllezParis 🔴🔵",
          ),
          Post(posted: ramospost2),
          const LikeComment(
            like: '  CBS Sports and 221k others',
            comment: '\n\n6.8K comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
          // neymar profile post 3

          ProfileHeadder(
            avathar: ramos,
            postTime: '29 october at 12:26',
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
            text: "Bonne nuit ! 💫",
          ),
          Post(posted: ramospost3),
          const LikeComment(
            like: '  Hoang van and 508k others   ',
            comment: '\n\n11K comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
          // neymar profile post 4

          ProfileHeadder(
            avathar: ramos,
            postTime: '17 october at 20:24',
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
              text: " 😀 Jugamos mañana.\n"
                  "😀 Tomorrow, it’s matchday.\n"
                  "😀 On joue demain."
                  "#AllezParis"),
          Post(posted: ramospost4),
          const LikeComment(
            like: '  Num KALA and 168k others   ',
            comment: '\n\n4.2K comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
          //  profile post 5

          ProfileHeadder(
            avathar: ramos,
            postTime: '3 November at 21:28',
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
          const PostText(text: "King in the North 🐺"),
          Post(posted: ramospost5),
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
