import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(20.0),
        fillColor: Colors.blueGrey[50],
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(width: 0.8),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(
            width: 0.8,
            color: Colors.blue,
          ),
        ),
        hintText: "Chercher des montures",
        suffixIcon: Padding(
          padding: EdgeInsets.all(15.0),
          child: Icon(
              Icons.search,
              size: 30.0
          ),
        ),
      ),
    );
  }
}
