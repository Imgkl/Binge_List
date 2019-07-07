import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';

final pages = [
  PageViewModel(
    pageColor: Colors.white,
    // iconImageAssetPath: 'images/air-hostess.png',
    bubble: Image.asset('images/onboard1.png'),
    body: Text(
      'Welcome to CommuniTV',
      style: TextStyle(
        fontFamily: "Menu",
        fontSize: 45,
      ),
    ),
    title: Text(
      'CommuniTV',
    ),
    textStyle: TextStyle(
        fontFamily: 'Title', color: Colors.black,letterSpacing: 2, fontWeight: FontWeight.bold),
    mainImage: Image.asset(
      'images/onboard1.png',
      height: 985.0,
      width: 385.0,
      alignment: Alignment.center,
    ),
  ),
  PageViewModel(
    pageColor: Colors.grey.shade900,
    iconImageAssetPath: 'images/onboard2.png',
    body: Text(
      "From RT, IMDb and other movie databases, We have handpicked top 100 TV shows based on your ratings and the TV show'\s popularity. If you think we missed a show, please feel free to contribute.",
    ),
    title: Text(
      'Curated Lists',
      style: TextStyle(
          fontSize: 45,
          fontFamily: 'Title',
          letterSpacing: 2,
          color: Colors.white,
          fontWeight: FontWeight.bold),
    ),
    mainImage: Image.asset(
      'images/onboard2.png',
      height: 385.0,
      width: 385.0,
      alignment: Alignment.center,
    ),
    textStyle: TextStyle(fontFamily: 'Menu', color: Colors.white,fontSize: 30),
  ),
  PageViewModel(
    pageColor: Colors.red,
    iconImageAssetPath: 'images/onboard3.png',
    body: Text(
      'We do not provide torrent links since it is an violation of Play Store Policy. We added links to streaming services so you watch the shows legally and enjoy.',
    ),
    title: Text('Stream',style: TextStyle(fontSize: 45, letterSpacing: 2, fontFamily: "Title", fontWeight: FontWeight.bold),),
    mainImage: Image.asset(
      'images/onboard3.png',
      height: double.infinity,
      width: 285.0,
      alignment: Alignment.center,
    ),
    textStyle: TextStyle(fontFamily: 'Menu', color: Colors.white, fontSize: 35),
  ),
];
