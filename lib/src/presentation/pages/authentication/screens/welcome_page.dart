import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Container(
        child: Column(
          children: [
            Row(children: [
              Container(
                height: 500,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/logo.png"))
                ),
              )
            ],
            ),

            const SizedBox(height: 20, ),
            Row(
              children: [
                
              ],
            )
          ],
        )
      ),
    );
  }
}