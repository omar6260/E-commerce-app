import 'package:e_commerce_app/src/presentation/pages/authentication/screens/welcome_page.dart';
import 'package:e_commerce_app/src/presentation/pages/home_page/home.dart';
import 'package:e_commerce_app/src/presentation/pages/intro_page/onboarding_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
  
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop',
      home: WelcomeScreen(),
    );
  }
}
