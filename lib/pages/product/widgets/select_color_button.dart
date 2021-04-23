import 'package:flutter/material.dart';

class selectColorButton extends StatelessWidget {

  Color buttonColor;

  selectColorButton(Color buttonColor) : buttonColor = buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: buttonColor,
      ),
    );
  }
}