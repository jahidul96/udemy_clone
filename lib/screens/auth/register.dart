import 'package:flutter/material.dart';
import 'package:udemy_clone/screens/auth/login.dart';
import 'package:udemy_clone/widgets/icon_button.dart';
import 'package:udemy_clone/widgets/reuseable.dart';
import 'package:udemy_clone/widgets/text_comp.dart';

class RegisterScreen extends StatefulWidget {
  static const routeName = "register";

  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // top text content
            registerLoginTextContent(
                text: "SIGN UP",
                infoText:
                    "By using our services you are agreeing our Terms and Privacy statement."),

            // middle butons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  IconCustomButton(
                      icon: "assets/email.png", text: "Sign in with email"),
                  IconCustomButton(
                      icon: "assets/google.png", text: "Sign in with google"),
                  IconCustomButton(
                      icon: "assets/facebook.png",
                      text: "Sign in with facebook"),
                  IconCustomButton(
                      icon: "assets/apple-logo.png",
                      text: "Sign in with apple"),
                ],
              ),
            ),

            // bottom links
            linkTextComp(
              text: "Have account?",
              linkText: "Login here!",
              onTap: () {
                Navigator.pushNamed(context, LoginScreen.routeName);
              },
            )
          ],
        ),
      ),
    );
  }
}
