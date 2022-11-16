import 'package:flutter/material.dart';

class NewAccountButtton extends StatelessWidget {
  const NewAccountButtton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.green,
      ),
      child: TextButton(
        onPressed: () {},
        child: const Text(
          'Creat New account',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
