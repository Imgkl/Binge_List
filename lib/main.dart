import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:top100/pages/series.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';

import 'models/onboarding.dart';

void main() {
 
    runApp(new MyApp());
  
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) => IntroViewsFlutter(
          pages,
          onTapDoneButton: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SeriesCarousalPage(),
              ), //MaterialPageRoute
            );
          },
          pageButtonTextStyles: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ), //IntroViewsFlutter
      ),
      theme: ThemeData.dark(),
      builder: (BuildContext context, Widget widget) {
        ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
          return getErrorWidget(context, errorDetails);
        };

        return widget;
      },
    );
  }
}

Widget getErrorWidget(BuildContext context, FlutterErrorDetails error) {
  return Center(
    child: Text(""),
  );
}
