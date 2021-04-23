import 'package:flutter/material.dart';

class DescriptionGlassesText extends StatelessWidget {

  String text;

  DescriptionGlassesText(String descriptionGlasses) : text = descriptionGlasses;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18,
      ),
    );;
  }
}
