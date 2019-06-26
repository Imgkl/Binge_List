import 'package:flutter/material.dart';

import 'pages/series.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SeriesCarousalPage(),
    );
  }
}

// class Splash extends StatefulWidget {
//   @override
//   _SplashState createState() => _SplashState();
// }

// class _SplashState extends State<Splash> {
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       fit: StackFit.expand,
//       children: <Widget>[
//         Container(
//           decoration: BoxDecoration(color: Colors.white),
//         ),
//         Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Container(
//               child: Column(
//                 children: <Widget>[
//                   Image.asset(
//                     "images/splash.png",
//                   ),
//                   RaisedButton(
//                     onPressed: (){
//                       setState(() {
//                       return new SeriesCarousalPage();
//                       });
//                     },
//                     child: Text("Let me in"),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         )
//       ],
//     );
//   }
// }
