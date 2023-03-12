import 'package:flutter/material.dart';
import 'package:udemy_clone/widgets/text_comp.dart';

class CustomButton extends StatelessWidget {
  double width;
  Color backgroundColor;
  String text;
  double borderWidth;
  Function()? onPressed;
  double height;
  Color textColor;
  bool borderSide;
  CustomButton({
    super.key,
    required this.width,
    this.backgroundColor = Colors.white,
    this.borderWidth = 1,
    this.height = 50,
    required this.onPressed,
    required this.text,
    this.borderSide = true,
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          minimumSize: Size(width, height),
          backgroundColor: backgroundColor,
          side: borderSide
              ? BorderSide(
                  width: borderWidth,
                )
              : BorderSide.none,
        ),
        onPressed: onPressed,
        child: TextComp(
          text: text,
          color: textColor,
        ));
  }
}
