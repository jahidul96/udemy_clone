import 'package:flutter/material.dart';
import 'package:udemy_clone/screens/auth/register.dart';
import 'package:udemy_clone/widgets/icon_button.dart';
import 'package:udemy_clone/widgets/reuseable.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = "login";

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // top text content
            registerLoginTextContent(
                text: "SIGN IN",
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
              text: "New here?",
              linkText: "Create an account",
              onTap: () {
                Navigator.pushNamed(context, RegisterScreen.routeName);
              },
            )
          ],
        ),
      ),
    );
  }
}
