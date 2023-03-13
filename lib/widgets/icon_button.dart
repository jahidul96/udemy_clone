import 'package:flutter/material.dart';
import 'package:udemy_clone/widgets/text_comp.dart';

class IconCustomButton extends StatelessWidget {
  String icon;
  String text;

  IconCustomButton({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            width: 25,
            height: 25,
          ),
          const SizedBox(width: 15),
          TextComp(
            text: text,
          )
        ],
      ),
    );
  }
}
