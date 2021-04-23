import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';


import 'package:optic_3000/widgets/navbar_key.dart';
import 'package:optic_3000/widgets/like_glasses_button.dart';
//import 'package:optic_3000/widgets/name_glasses_display.dart';


class CarouselSliderMultiple extends StatelessWidget {

  List<String> imgList = [];
  List<String> displayName = [];

  CarouselSliderMultiple(List<String> imgList, List<String> displayName) : imgList = imgList, displayName = displayName;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: CarouselSlider(
            options: CarouselOptions(),
            items: imgList.map((item) => Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:[
                  GestureDetector(
                      onTap: () {
                        final CurvedNavigationBarState navState = NavbarKey.getKey().currentState;
                        navState.setPage(2);
                      },
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: new CachedNetworkImageProvider(item),
                              fit: BoxFit.cover,

                            ),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 9, color: Color.fromARGB(255, 211, 224, 234))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 170, top: 10),
                                child: likeGlassesButton(),
                              ),
                              SizedBox(width: 250),
                              Padding(
                                padding: const EdgeInsets.only(bottom:3.0),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children:[
                                    Text(displayName[imgList.indexOf(item)], style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      shadows: [
                                        Shadow(
                                          color: Colors.black,
                                          blurRadius: 2,
                                          offset: Offset(3,3)
                                        )
                                      ]
                                      ),
                                    ),
                                  ]
                                ),
                              ),
                            ],
                          )
                        )
                      )
                  )
                ],
              )
            ),
            ).toList(),
        )
    );

  }
}




/*class CarouselSliderMultiple extends StatelessWidget {

  List<String> imgList = [];

  CarouselSliderMultiple(List<String> imgList) : imgList = imgList;

  @override
  Widget build(BuildContext context) {
    return Container(
          child: CarouselSlider.builder(
            options: CarouselOptions(
              aspectRatio: 2.0,
              enlargeCenterPage: false,
              viewportFraction: 1,
            ),
            itemCount: (imgList.length / 2).round(),
            itemBuilder: (context, index, realIdx) {
              final int first = index * 2;
              final int second = first + 1;
              return Row(
                children: [first, second].map((idx) {
                  return Expanded(

                    flex: 1,
                    child: Column(

                      children:[
                        GestureDetector(
                          onTap: () {
                          final CurvedNavigationBarState navState = NavbarKey.getKey().currentState;
                          navState.setPage(2);
                        },
                        child:
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                          child: CachedNetworkImage(imageUrl: imgList[idx], fit: BoxFit.cover),
                        )
                        )
                      ],
                    )
                  );
                }).toList(),
              );
            },
          )
    );
  }
}*/