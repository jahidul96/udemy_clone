// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:udemy_clone/models/course_model.dart';
import 'package:udemy_clone/utils/app_colors.dart';
import 'package:udemy_clone/widgets/text_comp.dart';

import 'course_card.dart';

class FeaturedListView extends StatelessWidget {
  bool bigWidth;
  String text;
  String category;
  double sliderHeight;
  List<CourseModel> listData;
  FeaturedListView({
    super.key,
    required this.text,
    required this.category,
    required this.bigWidth,
    required this.sliderHeight,
    required this.listData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              TextComp(
                text: text,
                size: 20,
              ),
              TextComp(
                text: category,
                size: 20,
                color: AppColors.blueColor,
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: sliderHeight,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: listData.length,
            itemBuilder: (context, index) {
              return CourseCard(
                bigWidth: bigWidth,
                courseData: listData[index],
              );
            },
          ),
        )
      ],
    );
    ;
  }
}
