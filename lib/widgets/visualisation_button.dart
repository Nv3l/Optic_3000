import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter_app_lds_epsi_2/widgets/navbar_key.dart';


class VisualisationButton extends StatefulWidget {

  final String textToDisplay;

  const VisualisationButton ({this.textToDisplay});

  @override
  _VisualisationButtonState createState() => _VisualisationButtonState();
}

class _VisualisationButtonState extends State<VisualisationButton> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 22, 135, 167), style: BorderStyle.solid, width: 8),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              final CurvedNavigationBarState navState = NavbarKey.getKey().currentState;
              navState.setPage(1);
            },
            child: Container(
              child:
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(widget.textToDisplay, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                    ),
                    Icon(Icons.arrow_forward, color: Color.fromARGB(255, 22, 135, 167), size: 40,)
                  ],
                ),
            )
          )
        ],
      ),
    );
  }
}
