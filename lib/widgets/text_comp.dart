import 'package:flutter/material.dart';

class TextComp extends StatelessWidget {
  String text;
  double size;
  FontWeight fontweight;
  Color color;
  TextComp({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.fontweight = FontWeight.bold,
    this.size = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontweight,
      ),
    );
  }
}
