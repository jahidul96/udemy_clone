import 'package:flutter/material.dart';
import 'package:udemy_clone/utils/app_colors.dart';
import 'package:udemy_clone/utils/net_img.dart';
import 'package:udemy_clone/widgets/custom_button.dart';
import 'package:udemy_clone/widgets/rating_icon_comp.dart';
import 'package:udemy_clone/widgets/reuseable.dart';
import 'package:udemy_clone/widgets/text_comp.dart';

// top course details component
Widget topCourseDetails() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // top previre button with image
        videoPreviewButtonComp(),
        const SizedBox(height: 6),
        // title
        SizedBox(
          width: 330,
          child: TextComp(
            text: "The Compleate Web Development Bootcamp in 2023.",
            size: 23,
          ),
        ),
        const SizedBox(height: 6),

        // subtitle
        TextComp(
          text:
              "Became a Fullstack developer with just one course. HTML, CSS, javascript, Node, React, Mongodb, Web3, and DApps.",
          size: 17,
          color: AppColors.greyColor,
          fontweight: FontWeight.w500,
        ),
        const SizedBox(height: 10),

        // best seller label
        Container(
          color: AppColors.goldColor,
          width: 80,
          height: 30,
          child: Center(
            child: TextComp(
              text: "BestSeller",
              size: 12,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 10),

        // rating icon
        Row(
          children: [
            TextComp(
              text: "4.5",
              color: AppColors.blackColor,
              size: 13,
            ),
            const SizedBox(width: 5),
            fiveIcon(),
          ],
        ),
        const SizedBox(height: 6),
        TextComp(
          text: "(269,657 ratings) 914,786 students",
          size: 12,
        ),
        const SizedBox(height: 6),

// created by content
        Row(
          children: [
            TextComp(
              text: "Created by",
              size: 12,
              fontweight: FontWeight.normal,
            ),
            const SizedBox(width: 3),
            TextComp(
              text: "Dr. Angela Yu",
              size: 12,
              color: AppColors.blueColor,
            ),
          ],
        ),

        const SizedBox(height: 6),

        // bottom info content
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.settings,
                  size: 16,
                ),
                const SizedBox(width: 6),
                TextComp(
                  text: "Last updated 1/2023",
                  size: 12,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Row(
                children: [
                  const Icon(
                    Icons.language,
                    size: 16,
                  ),
                  const SizedBox(width: 6),
                  TextComp(
                    text: "English",
                    size: 12,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                const Icon(
                  Icons.closed_caption,
                  size: 16,
                ),
                const SizedBox(width: 6),
                TextComp(
                  text: "English, Arabic, 13 more.",
                  size: 12,
                ),
              ],
            ),

            const SizedBox(height: 20),

            TextComp(
              text: "BDT 8,500.00",
              size: 25,
            ),
            const SizedBox(height: 5),

            // buttons
            CustomButton(
              width: double.maxFinite,
              onPressed: () {},
              text: "Buy Now",
              height: 45,
              backgroundColor: AppColors.blueColor,
              textColor: Colors.white,
              borderSide: false,
            ),
            const SizedBox(height: 6),
            CustomButton(
              width: double.maxFinite,
              onPressed: () {},
              text: "Add to Cart",
              borderWidth: 2,
              height: 55,
            ),
          ],
        )
      ],
    );

// video thumbnail
Widget videoPreviewButtonComp() => Container(
      width: double.infinity,
      height: 180,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(profileImg),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            const Icon(
              Icons.play_circle_fill_outlined,
              size: 50,
              color: Colors.white,
            ),
            TextComp(
              text: "Preview this course",
              color: Colors.white,
              size: 16,
            )
          ],
        ),
      ),
    );

Widget info({required String label}) => Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.done,
            size: 22,
            color: AppColors.greyColor,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: TextComp(
              text: label,
              size: 15,
              color: AppColors.greyColor,
            ),
          )
        ],
      ),
    );
Widget sectionInfo() => Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextComp(
              text:
                  "Section 1 - Day 1 - Beginner - Working with Variables in Python.",
              size: 16,
              color: AppColors.greyColor,
              fontweight: FontWeight.normal,
            ),
          ),
          const SizedBox(width: 10),
          const Icon(
            Icons.add,
            color: AppColors.blueColor,
          ),
        ],
      ),
    );

Widget ratingsChart() => Column(
      children: [
        chartItem(ratingPercent: 150, star: 5),
        chartItem(ratingPercent: 60, star: 4),
        chartItem(ratingPercent: 20, star: 3),
        chartItem(ratingPercent: 10, star: 2),
        chartItem(ratingPercent: 5, star: 1),
      ],
    );

Widget chartItem({required double ratingPercent, required int star}) => Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 5),
          width: 220,
          child: Stack(
            children: [
              Container(
                width: 220,
                height: 17,
                color: Colors.grey.shade100,
              ),
              Container(
                width: ratingPercent,
                height: 17,
                color: Colors.grey.shade300,
              ),
            ],
          ),
        ),
        Row(
          children: [
            star == 5
                ? fiveIcon()
                : star == 4
                    ? fourIcon()
                    : star == 3
                        ? threeIcon()
                        : star == 2
                            ? twoIcon()
                            : const Icon(
                                Icons.star,
                                color: AppColors.goldColor,
                                size: 12,
                              ),
            const SizedBox(width: 4),
            Text(star.toString()),
          ],
        )
      ],
    );

Widget review() => Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextComp(
            text: "Arbaz khan",
            size: 17,
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              fiveIcon(),
              const SizedBox(width: 10),
              TextComp(
                text: "6 days ago",
                size: 12,
                fontweight: FontWeight.normal,
                color: AppColors.greyColor,
              )
            ],
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 350,
            child: TextComp(
              text:
                  "This was simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type but also the leap into electronic typesetting, remaining essentially unchanged.",
              size: 16,
              fontweight: FontWeight.normal,
              color: AppColors.greyColor,
            ),
          ),
        ],
      ),
    );
