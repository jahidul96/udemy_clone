import 'package:flutter/material.dart';
import 'package:udemy_clone/screens/categorie_based_browsing_screen.dart';
import 'package:udemy_clone/utils/app_colors.dart';
import 'package:udemy_clone/widgets/browse_list_comp.dart';
import 'package:udemy_clone/widgets/text_comp.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: TextComp(
          text: "Wishlist",
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
                  SizedBox(
                    width: 300,
                    child: TextComp(
                      text: "Want to save something for later?",
                      fontweight: FontWeight.normal,
                      size: 24,
                      align: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextComp(
                    text: "Your wishlist will go here.",
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
            BrowseListComp(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CategorieBasedBrowsePage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
    ;
  }
}
