import 'package:flutter/material.dart';
import 'package:udemy_clone/screens/all_courses.dart';
import 'package:udemy_clone/utils/app_colors.dart';
import 'package:udemy_clone/utils/net_img.dart';
import 'package:udemy_clone/widgets/course_instructor_reuseable_items.dart';
import 'package:udemy_clone/widgets/custom_button.dart';
import 'package:udemy_clone/widgets/text_comp.dart';

class InstrutorProfileScreen extends StatefulWidget {
  const InstrutorProfileScreen({super.key});

  @override
  State<InstrutorProfileScreen> createState() => _InstrutorProfileScreenState();
}

class _InstrutorProfileScreenState extends State<InstrutorProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: TextComp(
          text: "Instructor",
          size: 20,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // profile img & name
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: profileTop(),
            ),

            const SizedBox(height: 20),

            // total students and reviews
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  totalStudents(title: "Total Students", total: "1,23456"),
                  const SizedBox(width: 15),
                  totalStudents(title: "Reviews", total: "5,67675"),
                ],
              ),
            ),

            const SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextComp(
                text: "About me",
                size: 20,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                width: double.maxFinite,
                child: TextComp(
                  text:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                  size: 16,
                  color: AppColors.blackColor,
                  fontweight: FontWeight.w500,
                ),
              ),
            ),

            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: TextButton(
                  onPressed: () {},
                  child: TextComp(
                    text: "See More",
                    color: AppColors.blueColor,
                    size: 18,
                  )),
            ),

            const SizedBox(height: 15),

            // my courses
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextComp(
                text: "My courses (8)",
                size: 20,
              ),
            ),
            const SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                return CourseDisplayItem();
              },
            ),

            // see all button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: CustomButton(
                width: double.infinity,
                text: "See All",
                height: 60,
                borderWidth: 2,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AllCourses(),
                  ));
                },
              ),
            ),

            // social links
            Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.insert_link),
                  title: const Text(
                    "Website",
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: AppColors.greyColor,
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.insert_link),
                  title: const Text("Facebook"),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: AppColors.greyColor,
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.insert_link),
                  title: const Text("Twitter"),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: AppColors.greyColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget totalStudents({required String title, required String total}) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextComp(
            text: title,
            size: 13,
          ),
          const SizedBox(height: 7),
          TextComp(
            text: total,
            size: 18,
          ),
        ],
      );

  Widget profileTop() => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              profileImg,
              width: 80,
              height: 80,
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextComp(
                text: "Angela yu",
                size: 28,
                fontweight: FontWeight.w500,
              ),
              const SizedBox(height: 5),
              TextComp(
                text: "Developer & Teacher",
                color: AppColors.greyColor,
                fontweight: FontWeight.normal,
              ),
            ],
          ),
        ],
      );
}
