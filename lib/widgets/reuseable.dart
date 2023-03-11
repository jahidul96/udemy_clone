import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
            "Fluter Ready skill on your schedule!",
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
