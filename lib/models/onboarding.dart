import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';

final pages = [
  PageViewModel(
    pageColor: Colors.amber.shade600,
    // iconImageAssetPath: 'images/air-hostess.png',
    bubble: Image.asset('images/onboard1.png'),
    body: Text(
      'Welcome to CommuniTV',
      style: TextStyle(
        fontFamily: "Onboard",
        fontSize: 35,
      ),
    ),
    title: Text(
      'CommuniTV',
    ),
    textStyle: TextStyle(
        fontFamily: 'Title',
        color: Colors.black,
        letterSpacing: 2,
        fontWeight: FontWeight.bold),
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
      height: 485.0,
      width: 485.0,
      alignment: Alignment.center,
    ),
    textStyle: TextStyle(fontFamily: 'Onboard', color: Colors.white, fontSize: 20),
  ),
  PageViewModel(
    pageColor: Colors.black,
    iconImageAssetPath: 'images/tv.png',
    body: Text(
      'We do not provide torrent links since it is an violation of Play Store Policy. We added links to streaming services so you watch the shows legally and enjoy.',
    ),
    title: Text(
      'Stream',
      style: TextStyle(
          fontSize: 45,
          letterSpacing: 2,
          fontFamily: "Title",
          fontWeight: FontWeight.bold),
    ),
    mainImage: Image.asset(
      'images/tv.png',
      height: 285.0,
      width: 285.0,
      alignment: Alignment.center,
    ),
    textStyle: TextStyle(fontFamily: 'Onboard', color: Colors.white, fontSize: 20),
  ),
];
