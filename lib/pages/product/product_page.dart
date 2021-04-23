import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:optic_3000/pages/product/widgets/select_color_button.dart';
import 'package:optic_3000/pages/product/widgets/text_information_product.dart';
import 'package:optic_3000/widgets/visualisation_button.dart';
import 'package:optic_3000/pages/product/widgets/descriptionGlassesText.dart';
import 'package:optic_3000/widgets/navbar_key.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  String glassesPicture = "https://image.freepik.com/photos-gratuite/lunettes-usure_1203-2605.jpg";
  String descriptionGlasses = "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Sunt, cumque, aliquam vero adipisci voluptatum officiis velit eligendi beatae maxime repudiandae corrupti itaque tempore repellendus quibusdam non mollitia necessitatibus dolorum quis! Accusantium, sit consequuntur dolores facere";

  Color selectColorButton1 = Colors.black;
  Color selectColorButton2 = Colors.blueGrey;
  Color selectColorButton3 = Colors.lime[900];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 39, 102, 120),
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
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 170,
                                height: 120,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: CachedNetworkImageProvider(glassesPicture),
                                    fit: BoxFit.cover
                                  ),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(width: 9, color: Color.fromARGB(255, 211, 224, 234))
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      selectColorButton(selectColorButton1),
                                      SizedBox(width: 25),
                                      selectColorButton(selectColorButton2),
                                      SizedBox(width: 25),
                                      selectColorButton(selectColorButton3),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 15, bottom: 35),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                textInformationProduct("Monturo 100%"),
                                SizedBox(height: 30),
                                textInformationProduct("Homme"),
                                SizedBox(height: 30),
                                textInformationProduct("1500 €"),

                              ],
                            ),
                          )
                        ],
                      ),
                    SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: VisualisationButton(textToDisplay: "Visualiser"),
                    ),
                    SizedBox(height: 50),
                    buildTextBoxWithLine("Magasin disponible :", 235),
                    SizedBox(height: 10),
                    Container(
                      width: 350,
                      height: 500,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1)
                      ),
                      child: FlutterMap(
                        options: MapOptions(
                          center: LatLng(48.419372754696774, -4.460886586750856),
                          zoom: 15,
                        ),
                        layers: [
                          new TileLayerOptions(
                              urlTemplate:
                              'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                              subdomains: ['a', 'b', 'c']
                          ),
                          new MarkerLayerOptions(
                            markers: [
                              new Marker(
                                width: 80.0,
                                height: 80.0,
                                point: new LatLng(48.419372754696774, -4.460886586750856),
                                builder: (ctx) =>
                                new Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: new CachedNetworkImage(imageUrl: "https://www.openstreetmap.org/assets/marker-red-080842cf8ca2034c956ba83b530ec6c5c592315ed04b82538bb925a395584644.png"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 50),
                    buildTextBoxWithLine("Description :", 160),
                    SizedBox(height: 10),
                    DescriptionGlassesText(descriptionGlasses),
                    SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: VisualisationButton(textToDisplay: "Visualiser"),
                    ),
                    SizedBox(height: 80),


                  ],
                ),
              )
          ),
        )
    );
  }
}



Widget buildTextBoxWithLine(String text, double width) {
  return Column(
      mainAxisAlignment: MainAxisAlignment.start,
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
          width: width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color.fromARGB(255, 22, 135, 167)
          ),
        )
      ],
  );
}
