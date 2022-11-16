import 'package:faceboook/assets.dart';
import 'package:faceboook/pages/profile.dart';
import 'package:flutter/material.dart';

class AboutListProfile extends StatelessWidget {
  const AboutListProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 0,
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
      leading: CircleAvatar(
        backgroundImage: AssetImage(
          ronaldo,
        ),
        radius: 30,
      ),
      title: const Text('Ronaldo'),
      subtitle: const Text('view your profile'),
    );
  }
}

class AboutList extends StatelessWidget {
  final IconData tileicon;
  final String tiletext;
  final Color iconcolor;
  final Function() logoutButton;
  const AboutList(
      {super.key,
      required this.tileicon,
      required this.tiletext,
      required this.iconcolor,
      required this.logoutButton});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListTile(
        leading: Icon(
          tileicon,
          size: 35,
          color: iconcolor,
        ),
        title: Text(tiletext),
        onTap: logoutButton,
      ),
    );
  }
}
