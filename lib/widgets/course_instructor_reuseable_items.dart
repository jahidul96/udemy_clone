import 'package:flutter/material.dart';
import 'package:udemy_clone/models/simple_models.dart';
import 'package:udemy_clone/utils/app_colors.dart';
import 'package:udemy_clone/utils/net_img.dart';
import 'package:udemy_clone/widgets/reuseable.dart';
import 'package:udemy_clone/widgets/text_comp.dart';

// instructor slider item
Widget instructorDetailsItem({
  required TopInstructorModel item,
  required Function()? onTap,
}) =>
    InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network(
                item.img,
                width: 60,
                height: 60,
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextComp(
                  text: item.name,
                  color: AppColors.greyColor,
                  fontweight: FontWeight.w500,
                  size: 17,
                ),
                const SizedBox(height: 4),
                TextComp(
                  text: item.profession,
                  color: AppColors.greyColor,
                  fontweight: FontWeight.w500,
                  size: 15,
                ),
                const SizedBox(height: 2),
                TextComp(
                  text: "${item.totalStudents} Students",
                  color: AppColors.greyColor,
                  fontweight: FontWeight.w500,
                  size: 15,
                ),
                const SizedBox(height: 2),
                TextComp(
                  text: "${item.totalCourses} Courses",
                  color: AppColors.greyColor,
                  fontweight: FontWeight.w500,
                  size: 15,
                ),
              ],
            ),
          ],
        ),
      ),
    );

// course display card

Widget courseDisplayItem() => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.network(
                bannerImg,
                width: 60,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 235,
                  child: TextComp(
                    text:
                        "The Complete Python Bootcamp From Zero to Hero in Python",
                    color: AppColors.blackColor,
                    fontweight: FontWeight.bold,
                    size: 14,
                  ),
                ),

                const SizedBox(height: 4),

                TextComp(
                  text: "Jose Portilla",
                  color: AppColors.greyColor,
                  fontweight: FontWeight.w500,
                  size: 12,
                ),

                const SizedBox(height: 5),

                // rating comp

                ratingComp(),

                const SizedBox(height: 5),

                TextComp(
                  text: "BDT 2,500.00",
                  size: 15,
                ),

                const SizedBox(height: 8),

                Container(
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
              ],
            ),
          ],
        ),
      ),
    );
