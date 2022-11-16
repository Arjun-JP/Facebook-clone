import 'package:flutter/material.dart';

class NameIconButton extends StatelessWidget {
  // final Widget navigator;

  final IconData buttonicon;

  const NameIconButton({
    super.key,
    required this.buttonicon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromARGB(255, 189, 208, 216),
      ),
      height: 50,
      child: Column(
        children: [
          IconButton(
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(
              //   builder: (context) {
              //     return navigator;
              //   },
              // ));
            },
            icon: Center(
              child: Icon(
                buttonicon,
                color: Colors.black,
                size: 23,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NameSatusProfile extends StatelessWidget {
  // final Widget navigator;
  //  required this.navigator
  final String name;

  const NameSatusProfile({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(
        name,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
    );
  }
}
