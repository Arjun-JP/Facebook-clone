import 'package:flutter/material.dart';

class RoomButton extends StatelessWidget {
  final IconData buttonIcon;
  final Color iconcolor;
  final String buttontext;
  final void Function() action;
  const RoomButton({
    super.key,
    required this.buttonIcon,
    required this.buttontext,
    required this.iconcolor,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: const BorderRadius.all(Radius.circular(26)),
      ),
      child: TextButton.icon(
        onPressed: action,
        icon: Icon(buttonIcon, color: iconcolor),
        label: Text(buttontext),
      ),
    );
  }
}
