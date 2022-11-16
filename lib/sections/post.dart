import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final String posted;
  const Post({super.key, required this.posted});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 500,
      child: Image.asset(
        posted,
        fit: BoxFit.cover,
      ),
    );
  }
}
