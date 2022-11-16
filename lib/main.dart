import 'package:faceboook/pages/loginpage.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const Facebook());
}

class Facebook extends StatelessWidget {
  const Facebook({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.indigo),
      home: LoginPage(),
    );
  }
}
