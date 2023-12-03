import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(192, 255, 254, 254),
      body: Container(
          child: Column(children: [
        SizedBox(
          height: 30,
        ),
        Image.asset(
          'assets/images/logomob.png',
          height: 250,
          width: 200,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
              decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: const Color.fromARGB(255, 41, 41, 41)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: const Color.fromARGB(255, 0, 0, 0)),
            ),
          )),
        ),
        SizedBox(
          height: 10,
        ),
        //password texfield
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
              decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: const Color.fromARGB(255, 41, 41, 41)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: const Color.fromARGB(255, 0, 0, 0)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Or continue with',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                // google button
                SquareTile(imagePath: 'royal_login/assets/images/google.png'),

                SizedBox(width: 25),
              ],
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                   const SizedBox(width: 4),
                  const Text(
                    'Register now',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                  ),
                  )
                ]
          )),
        ),
      ])),
    );
  }
}
