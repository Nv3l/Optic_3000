import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';


import 'package:flutter_app_lds_epsi_2/widgets/navbar_key.dart';


class CarouselSliderMultiple extends StatelessWidget {

  List<String> imgList = [];

  CarouselSliderMultiple(List<String> imgList) : imgList = imgList;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: CarouselSlider(
            options: CarouselOptions(),
            items: imgList.map((item) => Container(
              child: Row(
                children:[
                  GestureDetector(
                      onTap: () {
                        final CurvedNavigationBarState navState = NavbarKey.getKey().currentState;
                        navState.setPage(2);
                      },
                      child: Center(
                        child: CachedNetworkImage(imageUrl: item, fit: BoxFit.cover, width: 260)
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