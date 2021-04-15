import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';



import 'package:flutter_app_lds_epsi_2/pages/home/widgets/custom_text_form_field.dart';
import 'package:flutter_app_lds_epsi_2/widgets/navbar_key.dart';
import 'package:flutter_app_lds_epsi_2/widgets/carousel_slider.dart';


class HomePageWidget extends StatefulWidget {
  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

List<String> carouselNews = [
'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

List<String> carouselCollections = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
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
                      buildTextBoxWithLine(textToUpdate),
                      CarouselSliderMultiple(carouselNews),
                      CustomTextFormField(),
                      SizedBox(height: 20),
                      //SizedBox(height: 20),
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
                      SizedBox(height: 20),
                      buildTextBoxWithLine("Collections"),
                      CarouselSliderMultiple(carouselCollections),
                      SizedBox(height: 20),
                      ElevatedButton(
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
                      )
                    ],
                  )
              )
          ),
        )
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
