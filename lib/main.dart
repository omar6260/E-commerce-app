import 'package:e_commerce_app/src/presentation/pages/home_page/home.dart';
import 'package:e_commerce_app/src/presentation/pages/intro_page/onboarding_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop',
      home: HomePage(),
    );
  }
}
