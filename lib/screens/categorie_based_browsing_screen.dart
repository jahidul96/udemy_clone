import 'package:flutter/material.dart';
import 'package:udemy_clone/data/categorise.dart';
import 'package:udemy_clone/data/course_data.dart';
import 'package:udemy_clone/data/top_instrutorData.dart';
import 'package:udemy_clone/screens/instructor_profile.dart';
import 'package:udemy_clone/widgets/course_instructor_reuseable_items.dart';
import 'package:udemy_clone/widgets/featured_item_lisviewbuilder.dart';
import 'package:udemy_clone/widgets/reuseable.dart';
import 'package:udemy_clone/widgets/text_comp.dart';

class CategorieBasedBrowsePage extends StatefulWidget {
  const CategorieBasedBrowsePage({super.key});

  @override
  State<CategorieBasedBrowsePage> createState() =>
      _CategorieBasedBrowsePageState();
}

class _CategorieBasedBrowsePageState extends State<CategorieBasedBrowsePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: TextComp(
          text: "Development",
          size: 20,
        ),
        titleSpacing: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.filter_list),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),

            // to get started courser
            FeaturedListView(
              text: "Courses to get you started",
              category: "",
              bigWidth: true,
              sliderHeight: 260,
              listData: topcourseData,
            ),

            const SizedBox(height: 40),
            //featured courses
            FeaturedListView(
              sliderHeight: 240,
              text: "Featured courses",
              category: "",
              bigWidth: false,
              listData: topcourseData,
            ),

            const SizedBox(height: 20),

            // popular categories
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextComp(
                text: "Popular Topics",
                size: 20,
              ),
            ),
            const SizedBox(height: 10),
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

            const SizedBox(height: 20),

            // sub categories
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextComp(
                text: "Subcategories",
                size: 20,
              ),
            ),
            const SizedBox(height: 10),
            doubleHorizontalSlider(
              data: subCategories,
              height: 110,
              dataTwo: subCategoriesTwo,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CategorieBasedBrowsePage(),
                  ),
                );
              },
            ),

            const SizedBox(height: 20),

            // top instructor
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextComp(
                text: "Top Instrutors",
                size: 20,
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 230,
              child: ListView.separated(
                shrinkWrap: true,
                padding: const EdgeInsets.only(left: 10, right: 10),
                separatorBuilder: (context, index) => const SizedBox(width: 25),
                scrollDirection: Axis.horizontal,
                itemCount: topInstructors.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      instructorDetailsItem(
                        item: topInstructors[index],
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                const InstrutorProfileScreen(),
                          ));
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      instructorDetailsItem(
                        item: topInstructorsTwo[index],
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                const InstrutorProfileScreen(),
                          ));
                        },
                      ),
                    ],
                  );
                },
              ),
            ),

            // All courses

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextComp(
                text: "All courses",
                size: 20,
              ),
            ),
            const SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return CourseDisplayItem();
              },
            ),
          ],
        ),
      ),
    );
  }
}
