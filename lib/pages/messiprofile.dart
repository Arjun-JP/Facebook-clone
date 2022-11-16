import 'package:faceboook/assets.dart';
import 'package:faceboook/buttons/divider.dart';
import 'package:faceboook/buttons/namediconbutton.dart';
import 'package:faceboook/sections/likecomment.dart';
import 'package:faceboook/sections/post.dart';
import 'package:faceboook/sections/posttext.dart';
import 'package:faceboook/sections/profilehedder.dart';
import 'package:flutter/material.dart';

class MessiProfile extends StatelessWidget {
  const MessiProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 25, 93, 148),
        title: const Text(
          'Leo Messi',
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
                  messicover,
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
                      image: AssetImage(messi),
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
              'Leo Messi',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
            ),
          ),
          const Center(
            child: Text(
              '@messi\n',
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
              'from Rosario,Argentina',
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
          // messi profile post one
          const Dividers(borderThickness: 8),
          ProfileHeadder(
            avathar: messi,
            postTime: '5 November at 21:28',
            profileName: 'Leo Messi',
            buttonAction: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const MessiProfile();
                  },
                ),
              );
            },
          ),
          const PostText(
            text:
                "Probando mis habilidades en un nuevo campo. ¿Qué opinan? Call of Duty,"
                " ¡acá estoy!Testing my skills on a new field. What do you think? Call of "
                "Duty here I come!"
                "\n\n#Warzone2 #ModernWarfare2 #CODMobile",
          ),
          Post(posted: messipost2),
          const LikeComment(
            like: '  Fadia sha and 326k others   ',
            comment: '\n\n20K comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
          // mesi profile post 2

          ProfileHeadder(
            avathar: messi,
            postTime: '29 october at 22:55',
            profileName: 'Leo Messi',
            buttonAction: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const MessiProfile();
                  },
                ),
              );
            },
          ),
          const PostText(
            text: " ",
          ),
          Post(posted: messipost),
          const LikeComment(
            like: '  CBS Sports and 853k others',
            comment: '\n\n56K comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
          // Messi profile post 3

          ProfileHeadder(
            avathar: messi,
            postTime: '26 october at 12:26',
            profileName: 'Leo Messi',
            buttonAction: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const MessiProfile();
                  },
                ),
              );
            },
          ),
          const PostText(
            text: "#Buuuuuud!! Feliz de poder festejar nuestros goles y nuestro"
                " triunfo de hoy frente a nuestros hinchas. ⚽💪🏻 I'll never get tired "
                "of scoring #Buuuuud’s in front of our fans. Great win today. ⚽💪🏻",
          ),
          Post(posted: messipost3),
          const LikeComment(
            like: '  Hoang van and 755k others   ',
            comment: '\n\n47K comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
          // messi profile post 4

          ProfileHeadder(
            avathar: messi,
            postTime: '22 october at 22:24',
            profileName: 'Leo Messi',
            buttonAction: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const MessiProfile();
                  },
                ),
              );
            },
          ),
          const PostText(
            text: " — at Stade François-Coty",
          ),
          Post(posted: messipost4),
          const LikeComment(
            like: '  Num KALA and 24K others   ',
            comment: '\n\n398 comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
          // messi profile post 5

          ProfileHeadder(
            avathar: messi,
            postTime: '3 November at 21:28',
            profileName: 'Lio Messi',
            buttonAction: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const MessiProfile();
                  },
                ),
              );
            },
          ),
          const PostText(text: "— at Estádio da Luz (Benfica Stadium)"),
          Post(posted: messipost5),
          const LikeComment(
            like: '  belos and 23k others          ',
            comment: '\n\n515 comments',
          ),
          const Dividers(borderThickness: 2),
          const LikeBar(),
          const Dividers(borderThickness: 8),
        ],
      ),
    );
  }
}
