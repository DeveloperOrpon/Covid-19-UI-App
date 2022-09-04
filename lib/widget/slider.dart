import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'assets/nagad_banner1.png',
  'assets/nagad_banner2.png',
  'assets/nagad_banner3.png',
];
Widget _buildImageSlider() {
    return Container(
      padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 12.0),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 120.0,
          enableInfiniteScroll: true,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          disableCenter: true,
          viewportFraction: 1,
          enlargeCenterPage: true,
        ),
        items: imgList.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Image.asset(
                  i,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }