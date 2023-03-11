import 'package:flutter/material.dart';
import 'package:udemy_clone/utils/net_img.dart';
import 'package:udemy_clone/widgets/text_comp.dart';

class CourseCard extends StatelessWidget {
  bool bigWidth;
  CourseCard({super.key, required this.bigWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
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
              bannerImg,
              width: double.infinity,
              height: bigWidth ? 120 : 86,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          TextComp(
            text: "Product management 101",
            size: 17,
            color: Colors.black,
          ),
          const SizedBox(height: 8),
          TextComp(
            text: "Todd Bizer",
            size: 12,
            fontweight: FontWeight.normal,
            color: Colors.grey,
          ),
          const SizedBox(height: 8),

          // rating comp

          Row(
            children: [
              TextComp(
                text: "4.5",
                color: const Color.fromARGB(255, 185, 108, 8),
                size: 12,
              ),
              const SizedBox(width: 4),
              Row(
                children: const [
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 185, 108, 8),
                    size: 13,
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 185, 108, 8),
                    size: 13,
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 185, 108, 8),
                    size: 13,
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 185, 108, 8),
                    size: 13,
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 185, 108, 8),
                    size: 13,
                  ),
                ],
              ),
              const SizedBox(width: 4),
              TextComp(
                text: "(1,345)",
                color: const Color.fromARGB(255, 185, 108, 8),
                size: 13,
              ),
            ],
          ),
          const SizedBox(height: 8),
          TextComp(
            text: "BDT 2,500.00",
            size: 18,
          ),
        ],
      ),
    );
  }
}
