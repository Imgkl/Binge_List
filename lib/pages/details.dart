import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


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
            InkWell(
              child: Card(
                child: Container(
                  width: 50,
                  height: 50,
                  child: Icon(
                    FontAwesomeIcons.githubSquare,
                  ),
                ),
              ),
              onTap: () {
                _launchGit();
              },
            ),
            InkWell(
              child: Card(
                child: Container(
                  width: 50,
                  height: 50,
                  child: Icon(
                    FontAwesomeIcons.twitter,
                  ),
                ),
              ),
              onTap: () {
                _launchTweet();
              },
            ),
            InkWell(
              child: Card(
                child: Container(
                  width: 50,
                  height: 50,
                  child: Icon(
                    FontAwesomeIcons.chrome,
                  ),
                ),
              ),
              onTap: () {
                _launchWeb();
              },
            ),
            InkWell(
              child: Card(
                child: Container(
                  width: 50,
                  height: 50,
                  child: Icon(
                    FontAwesomeIcons.facebookF,
                  ),
                ),
              ),
              onTap: () {
                _launchFb();
              },
            ),
            InkWell(
              child: Card(
                child: Container(
                  width: 50,
                  height: 50,
                  child: Icon(
                    FontAwesomeIcons.googlePlay,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  _launchGit() async {
    String url = "https://www.github.com/Imgkl";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchTweet() async {
    String url = "https://twitter.com/im_gkl";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchWeb() async {
    String url = "https://imgkl.github.io";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchFb() async {
    String url = "https://www.facebook.com/saigokula.krishnan";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchPlay() async {
    String url = "";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
