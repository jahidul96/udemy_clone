import 'package:flutter/material.dart';
import 'package:udemy_clone/utils/app_colors.dart';
import 'package:udemy_clone/utils/net_img.dart';
import 'package:udemy_clone/widgets/rating_icon_comp.dart';
import 'package:udemy_clone/widgets/text_comp.dart';

// reminder comp
Widget reminder() => Container(
      width: double.infinity,
      height: 50,
      color: AppColors.blueColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(),
          const Text(
            "Ready skill on your schedule!",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const Icon(
            Icons.clear,
            color: Colors.white,
          )
        ],
      ),
    );

// banner comp
Widget bannerComp() => Container(
      height: 180,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(bannerImg),
          fit: BoxFit.cover,
        ),
      ),
    );

// list view of categorie
Widget doubleHorizontalSlider(
        {required List<String> data,
        required List<String> dataTwo,
        required double height,
        required Function()? onTap}) =>
    SizedBox(
      height: height,
      child: ListView.separated(
        shrinkWrap: true,
        padding: const EdgeInsets.only(left: 10, right: 10),
        separatorBuilder: (context, index) => const SizedBox(width: 5),
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              categoriesItem(text: data[index], onTap: onTap),
              categoriesItem(text: data[index], onTap: onTap),
            ],
          );
        },
      ),
    );

// categoris tab item
Widget categoriesItem({required String text, required Function()? onTap}) =>
    InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(),
        ),
        margin: const EdgeInsets.only(bottom: 10),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Center(
              child: TextComp(
            text: text,
            size: 15,
          )),
        ),
      ),
    );

// rating icon comp

Widget ratingComp({required String rating, required totalReview}) => Row(
      children: [
        TextComp(
          text: rating,
          color: AppColors.goldColor,
          size: 11,
        ),
        const SizedBox(width: 6),
        fiveIcon(),
        const SizedBox(width: 4),
        TextComp(
          text: "($totalReview)",
          color: AppColors.goldColor,
          size: 11,
        ),
      ],
    );

Widget registerLoginTextContent(
        {required String text, required String infoText}) =>
    Center(
      child: Column(
        children: [
          TextComp(
            text: text,
            size: 20,
          ),
          const SizedBox(height: 4),
          SizedBox(
            width: 250,
            child: TextComp(
              text: infoText,
              color: AppColors.greyColor,
              fontweight: FontWeight.normal,
              size: 12,
              align: TextAlign.center,
            ),
          )
        ],
      ),
    );

Widget linkTextComp(
        {required String text,
        required String linkText,
        required Function()? onTap}) =>
    Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextComp(
          text: text,
          size: 13,
          fontweight: FontWeight.normal,
          color: AppColors.greyColor,
        ),
        const SizedBox(
          width: 8,
        ),
        InkWell(
          onTap: onTap,
          child: TextComp(
            text: linkText,
            size: 14,
            color: AppColors.blueColor,
          ),
        ),
      ],
    );
