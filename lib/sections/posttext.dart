import 'package:flutter/material.dart';

class PostText extends StatelessWidget {
  final String text;
  const PostText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Text(
        text,
      ),
    );
  }
}
