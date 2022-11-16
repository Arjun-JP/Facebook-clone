import 'package:faceboook/buttons/roombutton.dart';
import 'package:faceboook/sections/statusavathar.dart';
import 'package:flutter/material.dart';
import 'package:faceboook/assets.dart';

class SectionLive extends StatelessWidget {
  const SectionLive({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          RoomButton(
            buttonIcon: Icons.video_call,
            buttontext: 'Creat\nRoom',
            iconcolor: Colors.black,
            action: () {
              // print('butten clicked');
            },
          ),
          StatusAvathar(avathar: ronaldo),
          StatusAvathar(avathar: messi),
          StatusAvathar(avathar: kohli),
        ],
      ),
    );
  }
}
