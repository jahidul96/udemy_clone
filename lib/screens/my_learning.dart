import 'package:flutter/material.dart';
import 'package:udemy_clone/screens/categorie_based_browsing_screen.dart';
import 'package:udemy_clone/utils/app_colors.dart';
import 'package:udemy_clone/widgets/browse_list_comp.dart';
import 'package:udemy_clone/widgets/text_comp.dart';

class MyLearning extends StatefulWidget {
  const MyLearning({super.key});

  @override
  State<MyLearning> createState() => _MyLearningState();
}

class _MyLearningState extends State<MyLearning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: TextComp(
          text: "My courses",
          size: 20,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/null.png",
                    width: double.infinity,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                  TextComp(
                    text: "What will you learn first?",
                    fontweight: FontWeight.normal,
                    size: 24,
                  ),
                  const SizedBox(height: 10),
                  TextComp(
                    text: "Your courses will go here.",
                    fontweight: FontWeight.normal,
                    color: AppColors.greyColor,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // browse list
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextComp(
                text: "Browse categories",
                fontweight: FontWeight.normal,
                size: 18,
              ),
            ),
            BrowseListComp(onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CategorieBasedBrowsePage(),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
