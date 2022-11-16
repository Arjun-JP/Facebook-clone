import 'package:flutter/material.dart';

class StatusBarButton extends StatelessWidget {
  final Widget navigator;
  final Color iconcolor;

  final IconData buttonicon;

  const StatusBarButton(
      {super.key,
      required this.navigator,
      required this.buttonicon,
      required this.iconcolor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => navigator,
                ),
                (route) => false,
              );
            },
            icon: Center(
              child: Icon(
                buttonicon,
                color: iconcolor,
                size: 23,
              ),
            ),
            // label: Text(buttontext),
          ),
        ],
      ),
    );
  }
}
 // iconcolor: const Color.fromARGB(255, 52, 5, 98),
//  Color.fromARGB(255, 53, 52, 52)