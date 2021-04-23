import 'package:flutter/material.dart';

class textInformationProduct extends StatelessWidget {

  String typeOfText;

  textInformationProduct(String typeOfText) : typeOfText = typeOfText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(typeOfText,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        //Text(" : "),
        /*Text(contentOfText,
          style: TextStyle(
            fontSize: 15,
          ),
        )*/
      ],
    );
  }
}
