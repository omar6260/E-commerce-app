
import 'package:e_commerce_app/src/presentation/pages/authentication/screens/welcome_page.dart';
import 'package:flutter/material.dart';

import '../../../data/repositories/app_properitie.dart';
import '../home_page/home.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  PageController controller = PageController();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        // width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          image: DecorationImage(image: AssetImage('assets/background.png')),
        ),
        child: Stack(
          children: [
            PageView(
              onPageChanged: ((value) {
                setState(() {
                  pageIndex = value;
                });
              }),
              controller: controller,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/firstScreen.png',
                        height: 200,
                        width: 200,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      child: Text(
                        'Obtenez tot ce que vous voulez en ligne',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 32, vertical: 16.0),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ut aliqua.',
                        textAlign: TextAlign.right,
                        style: TextStyle(color: Colors.grey, fontSize: 12.0),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Center(
                      child: Image.asset(
                        'assets/secondScreen.png',
                        height: 200,
                        width: 200,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      child: Text(
                        'Exp??dition rapide',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 32, vertical: 16.0),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do aliqua.',
                        textAlign: TextAlign.right,
                        style: TextStyle(color: Colors.grey, fontSize: 12.0),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Center(
                      child: Image.asset(
                        'assets/thirdScreen.png',
                        height: 200,
                        width: 200,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      child: Text(
                        'details de livraison',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 32, vertical: 16.0),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, aliqua.',
                        textAlign: TextAlign.right,
                        style: TextStyle(color: Colors.grey, fontSize: 12.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              bottom: 16.0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(8.0),
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black, width: 2),
                              color: pageIndex == 0 ? yellow : Colors.white),
                        ),
                        Container(
                          margin: EdgeInsets.all(8.0),
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black, width: 2),
                              color: pageIndex == 1 ? yellow : Colors.white),
                        ),
                        Container(
                          margin: EdgeInsets.all(8.0),
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black, width: 2),
                              color: pageIndex == 2 ? yellow : Colors.white),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Opacity(
                          opacity: pageIndex != 2 ? 1.0 : 0.0,
                          child: TextButton(
                            child: Text(
                              'Passer',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            },
                          ),
                        ),
                        pageIndex != 2
                            ? TextButton(
                                
                                child: Text(
                                  'Suivant',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                onPressed: () {
                                  if (!(controller.page == 2.0)) {
                                    controller.nextPage(
                                        duration: Duration(milliseconds: 200),
                                        curve: Curves.linear);
                                  }
                                },
                              )
                            : TextButton(
                                
                                child: const Text(
                                  'Terminer',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) => const WelcomeScreen()));
                                },
                              )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  
  
 
}
