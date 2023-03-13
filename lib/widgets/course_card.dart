import 'package:flutter/material.dart';
import 'package:udemy_clone/models/course_model.dart';
import 'package:udemy_clone/screens/single_course_details.dart';
import 'package:udemy_clone/utils/app_colors.dart';
import 'package:udemy_clone/utils/net_img.dart';
import 'package:udemy_clone/widgets/reuseable.dart';
import 'package:udemy_clone/widgets/text_comp.dart';

class CourseCard extends StatelessWidget {
  bool bigWidth;
  CourseModel courseData;
  CourseCard({super.key, required this.bigWidth, required this.courseData});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const SingleCourseDetails(),
        ));
      },
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        width: bigWidth
            ? MediaQuery.of(context).size.width / 1.6
            : MediaQuery.of(context).size.width / 2.4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // course banner img
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.network(
                courseData.coverImg,
                width: double.infinity,
                height: bigWidth ? 120 : 86,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            TextComp(
              text: courseData.title,
              size: 16,
              color: AppColors.blackColor,
            ),
            const SizedBox(height: 5),
            TextComp(
              text: courseData.instructorName,
              size: 12,
              fontweight: FontWeight.normal,
              color: AppColors.greyColor,
            ),
            const SizedBox(height: 5),

            // rating comp
            ratingComp(
                rating: courseData.review, totalReview: courseData.totalReview),
            const SizedBox(height: 6),
            TextComp(
              text: "BDT " + courseData.courseFee,
              size: 16,
            ),
            const SizedBox(
              height: 10,
            ),
            courseData.bestSeller
                ? Container(
                    color: AppColors.goldColor,
                    width: 70,
                    height: 26,
                    child: Center(
                      child: TextComp(
                        text: "Best Seller",
                        size: 10,
                        color: Colors.white,
                      ),
                    ),
                  )
                : courseData.highRated
                    ? Container(
                        color: AppColors.goldColor,
                        width: 70,
                        height: 26,
                        child: Center(
                          child: TextComp(
                            text: "High Rated",
                            size: 10,
                            color: Colors.white,
                          ),
                        ),
                      )
                    : Container(),
          ],
        ),
      ),
    );
  }
}
