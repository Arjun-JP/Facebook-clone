import 'package:flutter/material.dart';

class Dividers extends StatelessWidget {
  final double borderThickness;

  const Dividers({super.key, required this.borderThickness});

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: borderThickness,
      color: const Color.fromARGB(255, 189, 208, 216),
    );
  }
}
