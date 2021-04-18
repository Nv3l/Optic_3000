import 'package:flutter/material.dart';

class likeGlassesButton extends StatefulWidget {
  @override
  _likeGlassesButtonState createState() => _likeGlassesButtonState();
}

class _likeGlassesButtonState extends State<likeGlassesButton> {

  Color switchColor = Colors.white;

  switchingColor() {
    setState(() {
      if (switchColor == Colors.white) {
        switchColor = Colors.red[400];
      } else {
        switchColor = Colors.white;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        child: RawMaterialButton(
          onPressed: () {
            switchingColor();
          },
          child: Icon(Icons.favorite, color: switchColor,),
          shape: CircleBorder(),
          fillColor: Color.fromARGB(255, 22, 135, 167),
          padding: const EdgeInsets.all(10.0),
        )
      //Icon(Icons.favorite, color: Colors.white),
    );
  }
}
