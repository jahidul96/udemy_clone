import 'package:flutter/material.dart';
import 'package:udemy_clone/widgets/text_comp.dart';

import 'course_card.dart';

class FeaturedListView extends StatelessWidget {
  bool bigWidth;
  String text;
  String category;
  FeaturedListView(
      {super.key,
      required this.text,
      required this.category,
      required this.bigWidth});

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
                color: Colors.blue,
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 230,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return CourseCard(
                bigWidth: bigWidth,
              );
            },
          ),
        )
      ],
    );
    ;
  }
}
