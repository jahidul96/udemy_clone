import 'package:flutter/material.dart';
import 'package:udemy_clone/data/browse_categorie.dart';
import 'package:udemy_clone/screens/categorie_based_browsing_screen.dart';
import 'package:udemy_clone/utils/resusable_styles.dart';
import 'package:udemy_clone/widgets/browse_list_comp.dart';
import 'package:udemy_clone/widgets/reuseable.dart';
import 'package:udemy_clone/widgets/text_comp.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> searchTag = [
    "python",
    "javascript",
    "web",
    "app",
    "ios",
    "android",
    "design",
    "react",
    "flutter",
    "swift",
    "kotlin",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // top serach bar
            Padding(
              padding:
                  const EdgeInsets.only(left: 8, right: 7, top: 8, bottom: 5),
              child: searchbar(),
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      child: TextComp(
                        text: "Top Searches",
                        size: 22,
                      ),
                    ),

                    // search tags
                    GridView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      shrinkWrap: true,
                      itemCount: searchTag.length,
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 100,
                              mainAxisExtent: 50,
                              mainAxisSpacing: 5,
                              crossAxisSpacing: 5),
                      itemBuilder: (context, index) {
                        return categoriesItem(text: searchTag[index]);
                      },
                    ),

                    const SizedBox(height: 30),

                    // browse categorie list
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextComp(
                        text: "Browse Categories",
                        size: 22,
                      ),
                    ),
                    BrowseListComp(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                const CategorieBasedBrowsePage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget searchbar() => Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(3),
          boxShadow: [
            ReusableStyles.smallBoxShadow,
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: const [
              Icon(
                Icons.search,
                size: 24,
              ),
              SizedBox(width: 20),
              Expanded(
                child: TextField(
                  style: TextStyle(
                    color: Colors.amber,
                  ),
                  decoration: InputDecoration(
                    hintText: "Search",
                    border: InputBorder.none,
                  ),
                ),
              )
            ],
          ),
        ),
      );
}
