import 'package:flutter/material.dart';

class Friendtab extends StatelessWidget {
  const Friendtab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          height: 300,
          width: 180,
          color: Colors.amber,
        ),
        Container(
          height: 300,
          width: 180,
          color: Colors.amber,
        ),

        // child: Column(children: [
        // Image.asset(
        //   ronaldo,
        //   // fit: BoxFit.cover,
        //   width: 100,
        //   height: 100,
        // ),
        // ListTile(
        //   title: Text('ronaldo'),
        //   subtitle: Text('from Porchugal'),
        // ),
        // Row(
        //   children: [
        //     Container(
        //       width: 100,
        //       height: 10,
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       width: 50,
        //       height: 10,
        //       color: Colors.black,
        //     )
        //   ],
        // )
      ],
    ));
    // ),
    // ],
    // );
  }
}
