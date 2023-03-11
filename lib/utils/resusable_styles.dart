import 'package:flutter/material.dart';

class ReusableStyles {
  static final smallBoxShadow = BoxShadow(
    color: Colors.grey.withOpacity(0.3),
    spreadRadius: 1,
    blurRadius: 1,
    offset: const Offset(0, 1), // changes position of shadow
  );
}
