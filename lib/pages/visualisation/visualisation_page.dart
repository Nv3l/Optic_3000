import 'package:flutter/material.dart';

import 'package:optic_3000/pages/visualisation/widgets/frontCameraFlutter.dart';
import 'package:optic_3000/widgets/carousel_slider.dart';

List<String> carouselTrend = [
  'https://image.freepik.com/photos-gratuite/lunettes-usure_1203-2604.jpg',
  'https://image.freepik.com/photos-gratuite/lunettes-usure_1203-2605.jpg',
  'https://image.freepik.com/psd-gratuit/maquette-lunettes-soleil-colorees_1310-794.jpg',
  'https://cdn.discordapp.com/attachments/689535804279881815/835182031478325308/LunettesEnvelInsane.png',
  'https://cdn.discordapp.com/attachments/689535804279881815/835182493468590110/LunettesSolaireEnvelSpectaculaire.png',
];

List<String> nameCarouselTrend = [
  "Tendance 1",
  "Tendance 2",
  "Tendance 3",
  "Tendance 4",
  "Tendance 5",
];


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
        body:SafeArea(
              child: Container(
                  margin: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      /*GestureDetector(
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
                      ),*/
                      Stack(
                          children: [
                            FrontCameraFlutter(),
                            Positioned(
                              top: 150,
                              child: Image.asset(
                                "assets/img/LunettesSolaireEnvelSpectaculaireDetourageSansBranches.png",
                                height: 350,
                                width: 350,
                              ),
                            ),


                            Container(
                              width: 350,
                              height: 150,
                              decoration: BoxDecoration(

                              ),
                              child: CarouselSliderMultiple(carouselTrend, nameCarouselTrend),

                            ),

                          ],
                      ),


                    ],
                  )
              )
          ),
    );
  }
}
