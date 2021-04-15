import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter_app_lds_epsi_2/pages/product/product_page.dart';
import 'package:flutter_app_lds_epsi_2/pages/visualisation/visualisation_page.dart';
import 'package:flutter_app_lds_epsi_2/pages/home/home_page.dart';
import 'package:flutter_app_lds_epsi_2/widgets/navbar_key.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage> {

  int selectedIndex = 0;
  final pages = [HomePageWidget(), VisualisationPage(), ProductPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          index: selectedIndex,
          key: NavbarKey.getKey(),
          animationDuration: const Duration(milliseconds: 350),
          color: Color.fromARGB(255, 39, 102, 120),
          buttonBackgroundColor: Color.fromARGB(255, 22, 135, 167),
          backgroundColor: Colors.transparent,
          items: <Widget>[
            Icon(Icons.home, size: 40,),
            //Icon(Icons.search, size: 40),
            //Visualisation button
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('assets/img/virtual_reality_logo_button.png')
                  )
              ),
            ),
            //Product button
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                //color: Colors.green,
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('assets/img/glasses_logo_button.png')
                  )
              ),
            ),
          ],
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
        body: pages[selectedIndex],
    );
  }

  Widget buildTextBoxWithLine(String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 6,
          width: 140,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.red
          ),
        )
      ],
    );
  }

}
