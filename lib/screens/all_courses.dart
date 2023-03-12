import 'package:flutter/material.dart';
import 'package:udemy_clone/widgets/course_instructor_reuseable_items.dart';
import 'package:udemy_clone/widgets/text_comp.dart';

class AllCourses extends StatelessWidget {
  const AllCourses({super.key});

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
      body: ListView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.only(top: 10),
        physics: const ClampingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return CourseDisplayItem();
        },
      ),
    );
  }
}
