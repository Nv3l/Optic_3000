import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter_app_lds_epsi_2/widgets/navbar_key.dart';

class VisualisationPage extends StatefulWidget {
  @override
  _VisualisationPageState createState() => _VisualisationPageState();
}

class _VisualisationPageState extends State<VisualisationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 39, 102, 120),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          "Optic 3000",
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            letterSpacing: 3,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Container(
                  margin: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          final CurvedNavigationBarState navState = NavbarKey.getKey().currentState;
                          navState.setPage(0);
                        },
                        child:
                        Icon(
                          Icons.arrow_back,
                          size: 35,
                          color: Color.fromARGB(255, 22, 135, 167),
                        ),
                      )
                    ],
                  )
              )
          ),
        )
    );
  }
}
