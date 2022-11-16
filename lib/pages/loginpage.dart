import 'package:faceboook/buttons/newaccountbotton.dart';
import 'package:faceboook/home.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final formkey = GlobalKey<FormState>();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'facebook',
          style: TextStyle(
              color: Color.fromARGB(255, 25, 93, 148),
              fontSize: 26,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Form(
        key: formkey,
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          children: [
            SizedBox(
              height: 70,
              child: TextFormField(
                validator: (_) {
                  // ignore: unrelated_type_equality_checks
                  if (usernamecontroller == 'Ronaldo') {
                    return null;
                  } else {
                    return 'Invalied Username or Password';
                  }
                },
                controller: usernamecontroller,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Mobile number or email address',
                  hintStyle: const TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 233, 228, 228),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 70,
              child: TextFormField(
                obscureText: true,
                validator: (_) {
                  // ignore: unrelated_type_equality_checks
                  if (passwordcontroller == 'CR7@007') {
                    return null;
                  } else {
                    return 'Invalied Username or Password';
                  }
                },
                controller: passwordcontroller,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Password',
                  hintStyle: const TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 233, 228, 228),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 9, 94, 163),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  child: TextButton(
                    onPressed: () {
                      formkey.currentState!.validate();
                      final username = usernamecontroller.text;
                      final password = passwordcontroller.text;
                      if (username == 'Ronaldo' && password == 'CR7@007') {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => const Home(),
                          ),
                          (route) => false,
                        );
                      }
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Forgotten password?'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  '------------------------------------',
                  style: TextStyle(color: Color.fromARGB(255, 201, 197, 197)),
                ),
                Text(
                  'or',
                  style: TextStyle(
                    color: Color.fromARGB(255, 166, 160, 160),
                  ),
                ),
                Text(
                  '------------------------------------',
                  style: TextStyle(
                    color: Color.fromARGB(255, 201, 197, 197),
                  ),
                ),
              ],
            ),
            const Divider(
              height: 25,
            ),
            Column(children: const [
              NewAccountButtton(),
            ]),
          ],
        ),
      ),
    );
  }
}
