import 'package:flutter/material.dart';
import 'package:udemy_clone/navigation/bottom_nav.dart';
import 'package:udemy_clone/screens/auth/register.dart';
import 'package:udemy_clone/widgets/text_comp.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // big container
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.91,
            child: Center(
              child: Image.network(
                "https://img.freepik.com/free-vector/happy-freelancer-with-computer-home-young-man-sitting-armchair-using-laptop-chatting-online-smiling-vector-illustration-distance-work-online-learning-freelance_74855-8401.jpg?w=2000",
              ),
            ),
          ),

          // bottom container

          Container(
            color: Colors.black,
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.09,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MainPage.routeName);
                    },
                    child: TextComp(
                      text: "Browse",
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RegisterScreen.routeName);
                    },
                    child: TextComp(
                      text: "Sign In",
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
