import 'package:flutter/material.dart';
import 'package:faceboook/assets.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(ronaldo),
      ),
      title: const TextField(
        decoration: InputDecoration(
            hintText: 'Whats on your mind?',
            hintStyle: TextStyle(color: Colors.black),
            enabledBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none),
      ),
    );
  }
}
