import 'package:flutter/material.dart';

class ProfileHeadder extends StatelessWidget {
  final String avathar;
  final String postTime;
  final String profileName;
  final Function() buttonAction;
  const ProfileHeadder(
      {super.key,
      required this.avathar,
      required this.postTime,
      required this.profileName,
      required this.buttonAction});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(1),
      leading: CircleAvatar(
        radius: 35,
        backgroundImage: AssetImage(
          avathar,
        ),
      ),
      title: Text(
        profileName,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      onTap: buttonAction,
      subtitle: Text(postTime),
      trailing: const Icon(Icons.more_horiz),
    );
  }
}
