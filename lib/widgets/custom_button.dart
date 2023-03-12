import 'package:flutter/material.dart';
import 'package:udemy_clone/widgets/text_comp.dart';

class CustomButton extends StatelessWidget {
  double width;
  Color backgroundColor;
  String text;
  double borderWidth;
  Function()? onPressed;
  double height;
  CustomButton({
    super.key,
    required this.width,
    this.backgroundColor = Colors.white,
    this.borderWidth = 1,
    this.height = 50,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(width, height),
          backgroundColor: backgroundColor,
          side: BorderSide(
            width: borderWidth,
          ),
        ),
        onPressed: onPressed,
        child: TextComp(text: text));
  }
}
