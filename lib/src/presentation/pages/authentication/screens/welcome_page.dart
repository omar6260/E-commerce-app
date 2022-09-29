import 'package:flutter/material.dart';

import '../widgets/customized_button.dart';
import 'login_screen.dart';
import 'register_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Container(
          child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 500,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("assets/logo.png"))),
              )
            ],
          ),
          // const SizedBox(
          //   height: 10,
          // ),
          Row(
            children: [
              CustomizedButton(
                buttonText: "Se connecter",
                textColor: Colors.white,
                buttonColor: Color.fromARGB(177, 236, 156, 26),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
              ),
            ],
          ),
          Row(
            children: [
              CustomizedButton(
                buttonText: "S'inscrire",
                textColor: Colors.black,
                buttonColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegisterScreen()));
                },
              ),
            ],
          ),
        ],
      )),
    );
  }
}
