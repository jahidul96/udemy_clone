import 'package:flutter/material.dart';
import 'package:udemy_clone/data/categorise.dart';
import 'package:udemy_clone/data/course_data.dart';
import 'package:udemy_clone/screens/categorie_based_browsing_screen.dart';
import 'package:udemy_clone/widgets/reuseable.dart';
import 'package:udemy_clone/widgets/text_comp.dart';

import '../widgets/featured_item_lisviewbuilder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.account_circle,
                size: 28,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // reminder comp
              reminder(),
              // banner img
              bannerComp(),

              // categories
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextComp(
                      text: "Categories",
                      size: 22,
                    ),
                    TextComp(
                      text: "See all",
                      color: Colors.red,
                      size: 16,
                    ),
                  ],
                ),
              ),

              // categories double slider
              doubleHorizontalSlider(
                data: categories,
                height: 110,
                dataTwo: categoriesTwo,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const CategorieBasedBrowsePage(),
                    ),
                  );
                },
              ),

              // management course list
              const SizedBox(height: 20),
              FeaturedListView(
                sliderHeight: 240,
                text: "Top Courses in",
                category: " Management",
                bigWidth: false,
                listData: topcourseData,
              ),

              // business course list
              const SizedBox(height: 20),
              FeaturedListView(
                text: "Top Courses in",
                category: " Business",
                bigWidth: false,
                sliderHeight: 240,
                listData: topcourseData,
              ),

              // development course list
              const SizedBox(height: 20),
              FeaturedListView(
                text: "Top Courses in",
                category: " Development",
                bigWidth: true,
                sliderHeight: 260,
                listData: topcourseData,
              ),

              // student searching  course list
              const SizedBox(height: 20),
              FeaturedListView(
                sliderHeight: 240,
                text: "Student also",
                category: " Search for",
                bigWidth: false,
                listData: topcourseData,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
