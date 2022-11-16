import 'package:faceboook/assets.dart';
import 'package:flutter/material.dart';

class Drawer extends StatelessWidget {
  const Drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'facebook',
          style: TextStyle(
              color: Color.fromARGB(255, 25, 93, 148),
              fontSize: 26,
              fontWeight: FontWeight.bold),
        ),
      ),
      drawer: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(ronaldo),
            ),
          )
        ],
      ),
    );
  }
}
