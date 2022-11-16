import 'package:flutter/material.dart';

class LikeComment extends StatelessWidget {
  final String like;
  final String comment;
  const LikeComment({super.key, required this.like, required this.comment});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        padding: const EdgeInsets.all(5),
        child: Row(
          children: [
            Row(
              children: [
                const Icon(
                  Icons.thumb_up_alt_outlined,
                  color: Colors.blue,
                ),
                const Icon(Icons.emoji_emotions_outlined, color: Colors.red),
                Text(
                  like,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 118, 116, 116),
                  ),
                )
              ],
            ),
            Text(
              comment,
              style: const TextStyle(
                color: Color.fromARGB(255, 118, 116, 116),
              ),
            )
          ],
        ));
  }
}

class LikeBar extends StatelessWidget {
  const LikeBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.thumb_up_alt_outlined,
              color: Color.fromARGB(255, 118, 116, 116),
            ),
            label: const Text(
              'Like',
              style: TextStyle(
                color: Color.fromARGB(255, 118, 116, 116),
              ),
            ),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.chat_bubble_outline,
              color: Color.fromARGB(255, 118, 116, 116),
            ),
            label: const Text(
              'Comment',
              style: TextStyle(
                color: Color.fromARGB(255, 118, 116, 116),
              ),
            ),
          ),
          TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.ios_share,
                color: Color.fromARGB(255, 118, 116, 116),
              ),
              label: const Text(
                'Share',
                style: TextStyle(
                  color: Color.fromARGB(255, 118, 116, 116),
                ),
              ))
        ],
      ),
    );
  }
}
