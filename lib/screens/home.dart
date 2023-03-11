import 'package:flutter/material.dart';
import 'package:udemy_clone/data/categorise.dart';
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

              // categories slider
              SizedBox(
                height: 110,
                child: ListView.separated(
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 5),
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        categoriesItem(text: categories[index]),
                        categoriesItem(text: categories[index]),
                      ],
                    );
                  },
                ),
              ),

              // management course list
              const SizedBox(height: 20),
              FeaturedListView(
                text: "Top Courses in",
                category: " Management",
                bigWidth: false,
              ),

              // business course list
              const SizedBox(height: 20),
              FeaturedListView(
                text: "Top Courses in",
                category: " Business",
                bigWidth: false,
              ),

              // development course list
              const SizedBox(height: 20),
              FeaturedListView(
                text: "Top Courses in",
                category: " Development",
                bigWidth: true,
              ),

              // student searching  course list
              const SizedBox(height: 20),
              FeaturedListView(
                text: "Student also",
                category: " Searching",
                bigWidth: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
