import 'package:faceboook/buttons/divider.dart';
import 'package:faceboook/buttons/namediconbutton.dart';
import 'package:flutter/material.dart';

class Profiles extends StatelessWidget {
  final String profilename;
  final String coverpic;
  final String profilepic;
  final String work;
  final String livein;
  final String from;
  final String posttime;
  const Profiles({
    super.key,
    required this.profilename,
    required this.coverpic,
    required this.profilepic,
    required this.work,
    required this.livein,
    required this.from,
    required this.posttime,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 25, 93, 148),
        title: Text(
          profilename,
          style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
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
                  coverpic,
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
                      image: AssetImage(profilepic),
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
          Center(
            child: Text(
              profilename,
              style: const TextStyle(
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
          SizedBox(
            height: 30,
            child: ListTile(
              leading: const Icon(Icons.work_outlined),
              title: Text(
                work,
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 30,
            child: ListTile(
              leading: const Icon(Icons.work_outlined),
              title: Text(
                livein,
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.black),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.work_outlined),
            title: Text(
              from,
              style: const TextStyle(
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
          const Dividers(borderThickness: 8),
        ],
      ),
    );
  }
}
