import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Details extends StatelessWidget {
  const Details({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Card(
          color: Colors.transparent,
          elevation: 0,
          child: Container(
            color: Colors.transparent,
            child: CircleAvatar(
              radius: 150,
              backgroundImage: AssetImage("images/108.jpg"),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18, right: 18),
          child: Card(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Show your ❤️ by supporting the Developer, You can also request shows which you think It should be on the list by leaving reviews on Playstore or Feel free to email me.",
                  style: TextStyle(fontFamily: "Title", fontSize: 25),
                ),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              child: Container(
                width: 50,
                height: 50,
                child: Icon(
                  FontAwesomeIcons.githubSquare,
                ),
              ),
            ),
            Card(
              child: Container(
                width: 50,
                height: 50,
                child: Icon(
                  FontAwesomeIcons.twitter,
                ),
              ),
            ),
            Card(
              child: Container(
                width: 50,
                height: 50,
                child: Icon(
                  FontAwesomeIcons.chrome,
                ),
              ),
            ),
            Card(
              child: Container(
                width: 50,
                height: 50,
                child: Icon(
                  FontAwesomeIcons.facebookF,
                ),
              ),
            ),
            Card(
              child: Container(
                width: 50,
                height: 50,
                child: Icon(
                  FontAwesomeIcons.googlePlay,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
