import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;
  const AppBarButton(
      {super.key, required this.buttonIcon, required this.buttonAction});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      // decoration: const BoxDecoration(
      //   // shape: BoxShape.circle,
      //   color: Color.fromARGB(255, 189, 208, 216),
      // ),
      child: IconButton(
        onPressed: buttonAction,
        icon: Icon(
          buttonIcon,
          color: Colors.black,
          size: 30,
        ),
      ),
    );
  }
}
