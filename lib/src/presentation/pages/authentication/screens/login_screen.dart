

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_builder.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

import '../../../../data/authentication/authentication.dart';
import '../../home_page/home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          title: const Text('Sign in'),
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 220,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("assets/login.png"))),
              ),
              const MyStatefulWidget(),
            ]),
          ),
        ));
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextFormField(
                controller: email,
                decoration: const InputDecoration(
                  hintText: 'Enter your email',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextFormField(
                controller: password,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Enter your password',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the password';
                  }
                  return null;
                },
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: SignInButtonBuilder(
                  text: 'Sign in with Email',
                  // height: ,
                  // width: MediaQuery.of(context).size.width-20,
                  icon: Icons.email,
                  onPressed: () {
                    // Validate will return true if the form is valid, or false if
                    // the form is invalid.
                    if (_formKey.currentState!.validate()) {
                      // Process data.
                      auth.createUserWithEmailAndPassword(email: email.text, password: password.text).then((_){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const HomePage()));
                  });
                    }
                  },
                  backgroundColor: Colors.blueGrey[700]!,
                ),
              ),
            ),
            const Center(child: Text("OR")),
            Center(
              child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: SignInButton(
                    Buttons.Google,
                    text: "Sign in with Google",
                    onPressed: () {
                      googleSignIn(context);
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}