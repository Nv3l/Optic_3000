import 'package:flutter/material.dart';

import 'package:optic_3000/pages/home/widgets/custom_text_form_field.dart';
import 'package:optic_3000/widgets/carousel_slider.dart';
import 'package:optic_3000/widgets/visualisation_button.dart';


class HomePageWidget extends StatefulWidget {
  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

List<String> carouselNews = [
  'https://cdn.discordapp.com/attachments/689535804279881815/835182493468590110/LunettesSolaireEnvelSpectaculaire.png',
  'https://image.freepik.com/photos-gratuite/lunettes-usure_1203-2605.jpg',
  'https://cdn.discordapp.com/attachments/689535804279881815/835182031478325308/LunettesEnvelInsane.png',
  'https://image.freepik.com/psd-gratuit/maquette-lunettes-soleil-colorees_1310-794.jpg',
  'https://image.freepik.com/photos-gratuite/lunettes-usure_1203-2604.jpg',
];

List<String> nameCarouselNews = [
  "Nouveauté 1",
  "Nouveauté 2",
  "Nouveauté 3",
  "Nouveauté 4",
  "Nouveauté 5",
];

List<String> carouselMale = [
  'https://image.freepik.com/psd-gratuit/maquette-lunettes-soleil-colorees_1310-794.jpg',
  'https://cdn.discordapp.com/attachments/689535804279881815/835182031478325308/LunettesEnvelInsane.png',
  'https://image.freepik.com/photos-gratuite/lunettes-usure_1203-2604.jpg',
  'https://image.freepik.com/photos-gratuite/lunettes-usure_1203-2605.jpg',
  'https://cdn.discordapp.com/attachments/689535804279881815/835182493468590110/LunettesSolaireEnvelSpectaculaire.png',


];

List<String> nameCarouselMale = [
  "Homme 1",
  "Homme 2",
  "Homme 3",
  "Homme 4",
  "Homme 5",
];

List<String> carouselFemale = [
  'https://cdn.discordapp.com/attachments/689535804279881815/835182031478325308/LunettesEnvelInsane.png',
  'https://image.freepik.com/psd-gratuit/maquette-lunettes-soleil-colorees_1310-794.jpg',
  'https://image.freepik.com/photos-gratuite/lunettes-usure_1203-2604.jpg',
  'https://cdn.discordapp.com/attachments/689535804279881815/835182493468590110/LunettesSolaireEnvelSpectaculaire.png',
  'https://image.freepik.com/photos-gratuite/lunettes-usure_1203-2605.jpg',
];

List<String> nameCarouselFemale = [
  "Femme 1",
  "Femme 2",
  "Femme 3",
  "Femme 4",
  "Femme 5",
];

List<String> carouselFavorits = [
  'https://image.freepik.com/photos-gratuite/lunettes-usure_1203-2604.jpg',
  'https://image.freepik.com/psd-gratuit/maquette-lunettes-soleil-colorees_1310-794.jpg',
  'https://cdn.discordapp.com/attachments/689535804279881815/835182031478325308/LunettesEnvelInsane.png',
  'https://image.freepik.com/photos-gratuite/lunettes-usure_1203-2605.jpg',
  'https://cdn.discordapp.com/attachments/689535804279881815/835182493468590110/LunettesSolaireEnvelSpectaculaire.png',
];

List<String> nameCarouselFavorits = [
  "Favoris 1",
  "Favoris 2",
  "Favoris 3",
  "Favoris 4",
  "Favoris 5",
];

List<String> carouselChild = [
  'https://cdn.discordapp.com/attachments/689535804279881815/835182493468590110/LunettesSolaireEnvelSpectaculaire.png',
  'https://image.freepik.com/photos-gratuite/lunettes-usure_1203-2604.jpg',
  'https://cdn.discordapp.com/attachments/689535804279881815/835182031478325308/LunettesEnvelInsane.png',
  'https://image.freepik.com/photos-gratuite/lunettes-usure_1203-2605.jpg',
  'https://image.freepik.com/psd-gratuit/maquette-lunettes-soleil-colorees_1310-794.jpg',
];

List<String> nameCarouselChild = [
  "Enfant 1",
  "Enfant 2",
  "Enfant 3",
  "Enfant 4",
  "Enfant 5",
];

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

class _HomePageWidgetState extends State<HomePageWidget> {

  String textToUpdate = "Nouveautés";
  bool textToUpdateState = false;
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
                      /*Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/img/image_profile.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: CachedNetworkImage(
                          imageUrl: "https://images.unsplash.com/photo-1566758564651-a38ec593a09e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80",
                          fit: BoxFit.cover,
                        ),
                      ),*/
                      /*Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: CachedNetworkImageProvider(
                                  "https://images.unsplash.com/photo-1566758564651-a38ec593a09e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80",
                                )
                              )
                            ),
                          ),
                          Text(
                            'Nom application',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 26
                            ),
                          ),
                        ],
                      ),*/
                      buildTextBoxWithLine("Tendances", 140),
                      SizedBox(height: 10),
                      CarouselSliderMultiple(carouselTrend, nameCarouselTrend),
                      SizedBox(height: 40),
                      CustomTextFormField(),
                      SizedBox(height: 40),
                      /*Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              final CurvedNavigationBarState navState = NavbarKey.getKey().currentState;
                              navState.setPage(2);
                            },
                            child: Container(
                              height: 120,
                              width: 120,
                              color: Colors.green,
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            height: 120,
                            width: 120,
                            color: Colors.green,
                          )
                        ],
                      ),*/
                      buildTextBoxWithLine("Nouveautés", 140),
                      SizedBox(height: 10),
                      CarouselSliderMultiple(carouselNews, nameCarouselNews),
                      SizedBox(height: 40),
                      buildTextBoxWithLine("Homme", 100),
                      SizedBox(height: 10),
                      CarouselSliderMultiple(carouselMale, nameCarouselMale),
                      SizedBox(height: 40),
                      buildTextBoxWithLine("Femme", 100),
                      SizedBox(height: 10),
                      CarouselSliderMultiple(carouselFemale, nameCarouselFemale),
                      SizedBox(height: 40),
                      VisualisationButton(textToDisplay: "Visualiser"),
                      SizedBox(height: 40),
                      buildTextBoxWithLine("Favoris", 90),
                      SizedBox(height: 10),
                      CarouselSliderMultiple(carouselFavorits,  nameCarouselFavorits),
                      SizedBox(height: 40),
                      buildTextBoxWithLine("Enfant", 85),
                      SizedBox(height: 10),
                      CarouselSliderMultiple(carouselChild,  nameCarouselChild),

                      /*ElevatedButton(
                        child: Text("Je clique ici !!!", style: TextStyle(fontSize: 20),),
                        onPressed: (){
                          setState(() {
                            textToUpdateState = !textToUpdateState;
                            //textToUpdateState ? textToUpdate == "N'importe quoi " : textToUpdate == "Nouveautés";
                            print("valeur $textToUpdateState");
                            if(textToUpdateState) {
                              textToUpdate == "N'importe quoi ";
                            } else {
                              textToUpdate == "Nouveautés";
                            }
                            print("Valeur text $textToUpdate");
                          });
                        },
                      )*/
                    ],
                  )
              )
          ),
        )
    );
  }

  Widget buildTextBoxWithLine(String text, double width) {
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
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color.fromARGB(255, 22, 135, 167)
          ),
        )
      ],
    );
  }

}
