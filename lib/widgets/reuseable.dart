import 'package:flutter/material.dart';
import 'package:udemy_clone/data/categorise.dart';
import 'package:udemy_clone/models/simple_models.dart';
import 'package:udemy_clone/utils/app_colors.dart';
import 'package:udemy_clone/utils/net_img.dart';
import 'package:udemy_clone/widgets/text_comp.dart';

// reminder comp
Widget reminder() => Container(
      width: double.infinity,
      height: 50,
      color: Colors.blueAccent,
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
        required double height}) =>
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
              categoriesItem(text: data[index]),
              categoriesItem(text: data[index]),
            ],
          );
        },
      ),
    );

// categoris tab item
Widget categoriesItem({required String text}) => Container(
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
    );
