import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_lds_epsi_2/pages/home/widgets/custom_text_form_field.dart';
import 'package:flutter_app_lds_epsi_2/pages/product/product_page.dart';

class HomePageWidget extends StatefulWidget {
  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {

  String textToUpdate = "Nouveautés";
  bool textToUpdateState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      Row(
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
                      ),
                      SizedBox(height: 20),
                      CustomTextFormField(),
                      SizedBox(height: 20),
                      buildTextBoxWithLine(textToUpdate),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage())),
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
                      ),
                      SizedBox(height: 20),
                      buildTextBoxWithLine("Collections"),
                      SizedBox(height: 20),
                      ElevatedButton(
                        child: Text("Je clique ici !!!", style: TextStyle(fontSize: 20),),
                        onPressed: (){
                          setState(() {
                            textToUpdateState = !textToUpdateState;
                            textToUpdateState ? textToUpdate == "N'importe quoi " : textToUpdate == "Nouveautés";
                            print("valeur $textToUpdateState");
                            /*if(textToUpdateState) {
                              textToUpdate == "N'importe quoi ";
                            } else {
                              textToUpdate == "Nouveautés";
                            }*/
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
