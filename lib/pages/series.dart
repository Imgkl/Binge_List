import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:top100/models/details_list.dart';
import 'package:top100/models/images.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SeriesCarousalPage extends StatefulWidget {
  @override
  _SeriesCarousalPageState createState() => _SeriesCarousalPageState();
}

class _SeriesCarousalPageState extends State<SeriesCarousalPage>
    with SingleTickerProviderStateMixin {
  bool isCollapsed = true;
  double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 300);
  int currentPage = 0;
  PageController _pageController;
  AnimationController _controller;

  Animation<double> _menuScaleAnimation;
  Animation<Offset> _slideAnimation;
  int selectedTab = 0;

  @override
  void initState() {
    super.initState();

    _pageController = PageController(
      initialPage: currentPage,
      keepPage: true,
      viewportFraction: 0.9,
    );
    _controller = AnimationController(vsync: this, duration: duration);

    _menuScaleAnimation =
        Tween<double>(begin: 0.5, end: 1).animate(_controller);
    _slideAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0))
        .animate(_controller);
  }

  void _showModelSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return new Container(
            height: screenHeight / 2.3,
            child: new Container(
              child: Container(
                child: WebView(initialUrl: detailsList[currentPage].cast),
                decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(20.0),
                        topRight: const Radius.circular(20.0))),
              ),
            ),
          );
        });
  }

  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  @override
  void dispose() {
    _controller.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: <Widget>[
          menu(context),
          dashboard(context),
        ],
      ),
    );
  }

  Widget dashboard(context) {
    return AnimatedPositioned(
      duration: duration,
      top: 0,
      bottom: 0,
      left: isCollapsed ? 0 : 0.85 * screenWidth,
      right: isCollapsed ? 0 : -0.85 * screenWidth,
      child: Material(
        elevation: 2,
        child: Container(
          child: Stack(
            children: <Widget>[
              Opacity(
                opacity: 0.25,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  child: Image.asset(
                    imageList[currentPage],
                    fit: BoxFit.fitHeight,
                    height: double.infinity,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    height: screenHeight - 385,
                    child: PageView.builder(
                      itemBuilder: (context, index) {
                        return itemBuilder(index);
                      },
                      controller: _pageController,
                      pageSnapping: true,
                      physics: BouncingScrollPhysics(),
                      onPageChanged: _onPageChanged,
                      itemCount: detailsList.length,
                    ),
                  ),
                  _detailsBuilder(currentPage),
                ],
              ),
              Positioned(
                top: 48,
                left: 15,
                child: InkWell(
                  enableFeedback: true,
                  child: Icon(
                    Icons.menu,
                    size: 40,
                  ),
                  onTap: () {
                    setState(() {
                      if (isCollapsed) {
                        _controller.forward();
                      } else {
                        _controller.reverse();
                      }
                      isCollapsed = !isCollapsed;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget menu(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.amber.shade500,
              Colors.pink.shade500,
            ]),
      ),
      child: SlideTransition(
        position: _slideAnimation,
        child: ScaleTransition(
          scale: _menuScaleAnimation,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(right: 55.0),
              child: slideList(),
            ),
          ),
        ),
      ),
    );
  }

  ListView slideList() {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      children: <Widget>[
        SizedBox(
          height: 50,
        ),
        Text(
          "#",
          style: TextStyle(
              color: Colors.black, fontSize: 50, fontFamily: "description"),
        ),
        Divider(
          height: 1,
          color: Colors.black,
        ),
        RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          color: Colors.transparent,
          child: Text("13 Reasons Why",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(60,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          color: Colors.transparent,
          child: Text("24",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(45,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        Text(
          "A",
          style: TextStyle(
              color: Colors.black, fontSize: 50, fontFamily: "description"),
        ),
        Divider(
          height: 1,
          color: Colors.black,
        ),
        RaisedButton(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text("American Horror Story",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(58,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text("Arrested Development",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(18,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text("Atypical",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(49,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text("Avatar: Last Airbender",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(() {
              isCollapsed = true;
              _pageController.animateToPage(6,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        Text(
          "B",
          style: TextStyle(
              color: Colors.black, fontSize: 50, fontFamily: "description"),
        ),
        Divider(
          height: 1,
          color: Colors.black,
        ),
        RaisedButton(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text("Band of Brothers",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(
              () {
                isCollapsed = true;
                _pageController.animateToPage(2,
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.linear);
              },
            );
          },
        ),
        RaisedButton(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text("Banshee",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(44,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text("Big Bang Theory",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(56,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          color: Colors.transparent,
          child: Text("Black Mirrior",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(13,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          color: Colors.transparent,
          child: Text("Boston Legal",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(47,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text("Breaking Bad",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(
              () {
                isCollapsed = true;
                _pageController.animateToPage(1,
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.linear);
              },
            );
          },
        ),
        RaisedButton(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text("Broadwalk Empire",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(31,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text("Brooklyn Nine Nine",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(39,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        Text(
          "C",
          style: TextStyle(
              color: Colors.black, fontSize: 50, fontFamily: "description"),
        ),
        Divider(
          height: 1,
          color: Colors.black,
        ),
        RaisedButton(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text("Californication",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(51,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text("Chernobyl",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(
              () {
                _pageController.animateToPage(0,
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.linear);
                isCollapsed = true;
              },
            );
          },
        ),
        Text(
          "D",
          style: TextStyle(
              color: Colors.black, fontSize: 50, fontFamily: "description"),
        ),
        Divider(
          height: 1,
          color: Colors.black,
        ),
        RaisedButton(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text("Death Note",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(9,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent,
          child: Text("Dexter",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(25,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text("Doctor Who",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(26,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        Text(
          "E",
          style: TextStyle(
              color: Colors.black, fontSize: 50, fontFamily: "description"),
        ),
        Divider(
          height: 1,
          color: Colors.black,
        ),
        RaisedButton(
          color: Colors.transparent, shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text("End of the F****ing World",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(59,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent, shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text("Entourage",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(36,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        Text(
          "F",
          style: TextStyle(
              color: Colors.black, fontSize: 50, fontFamily: "description"),
        ),
        Divider(
          height: 1,
          color: Colors.black,
        ),
        RaisedButton(
          color: Colors.transparent,
          child: Text("Fargo",style: TextStyle(fontSize: 25, fontFamily: "description"),), shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(12,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent,
          child: Text("FireFly",style: TextStyle(fontSize: 25, fontFamily: "description"),), shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(10,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent,
          child: Text("F.R.I.E.N.D.S",style: TextStyle(fontSize: 25, fontFamily: "description"),), shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(15,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        Text(
          "G",
          style: TextStyle(
              color: Colors.black, fontSize: 50, fontFamily: "description"),
        ),
        Divider(
          height: 1,
          color: Colors.black,
        ),
        RaisedButton(
          color: Colors.transparent,
          child: Text("Game of thrones",style: TextStyle(fontSize: 25, fontFamily: "description"),), shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(3,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        Text(
          "H",
          style: TextStyle(
              color: Colors.black, fontSize: 50, fontFamily: "description"),
        ),
        Divider(
          height: 1,
          color: Colors.black,
        ),
        RaisedButton(
          color: Colors.transparent,
          child: Text("Hannibal",style: TextStyle(fontSize: 25, fontFamily: "description"),), shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(32,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent,
          child: Text("House",style: TextStyle(fontSize: 25, fontFamily: "description"),), shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(27,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent,
          child: Text("House of Cards",style: TextStyle(fontSize: 25, fontFamily: "description"),), shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(21,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent,
          child: Text("How I met Your mother",style: TextStyle(fontSize: 25, fontFamily: "description"),), shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(50,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        Text(
          "J",
          style: TextStyle(
              color: Colors.black, fontSize: 50, fontFamily: "description"),
        ),
        Divider(
          height: 1,
          color: Colors.black,
        ),
        RaisedButton(
          color: Colors.transparent,
          child: Text("Jack Ryan",style: TextStyle(fontSize: 25, fontFamily: "description"),), shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(54,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        Text(
          "L",
          style: TextStyle(
              color: Colors.black, fontSize: 50, fontFamily: "description"),
        ),
        Divider(
          height: 1,
          color: Colors.black,
        ),
        RaisedButton(
          color: Colors.transparent,
          child: Text("Lost",style: TextStyle(fontSize: 25, fontFamily: "description"),), shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(40,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        Text(
          "M",
          style: TextStyle(
              color: Colors.black, fontSize: 50, fontFamily: "description"),
        ),
        Divider(
          height: 1,
          color: Colors.black,
        ),
        RaisedButton(
          color: Colors.transparent,
          child: Text("Modern Family",style: TextStyle(fontSize: 25, fontFamily: "description"),), shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(41,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent, shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text("Money heist",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(29,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton( shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          color: Colors.transparent,
          child: Text("Mr. Robot",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(34,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        Text(
          "N",
          style: TextStyle(
              color: Colors.black, fontSize: 50, fontFamily: "description"),
        ),
        Divider(
          height: 1,
          color: Colors.black,
        ),
        RaisedButton(
          color: Colors.transparent, shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text("Narcos",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(20,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        Text(
          "O",
          style: TextStyle(
              color: Colors.black, fontSize: 50, fontFamily: "description"),
        ),
        Divider(
          height: 1,
          color: Colors.black,
        ),
        RaisedButton(
          color: Colors.transparent, shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text("Orange Is The New Black",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(57,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent, shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text("Orphan Black",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(53,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        Text(
          "P",
          style: TextStyle(
              color: Colors.black, fontSize: 50, fontFamily: "description"),
        ),
        Divider(
          height: 1,
          color: Colors.black,
        ),
        RaisedButton(
          color: Colors.transparent, shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text("Peaky Builders",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(19,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent, shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text("Person of Interest",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(42,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent, shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text("Prison Break",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(38,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        Text(
          "R",
          style: TextStyle(
              color: Colors.black, fontSize: 50, fontFamily: "description"),
        ),
        Divider(
          height: 1,
          color: Colors.black,
        ),
        RaisedButton(
          color: Colors.transparent, shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text("Rick and Morty",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(() {
              isCollapsed = true;
              _pageController.animateToPage(5,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        Text(
          "S",
          style: TextStyle(
              color: Colors.black, fontSize: 50, fontFamily: "description"),
        ),
        Divider(
          height: 1,
          color: Colors.black,
        ),
        RaisedButton(
          color: Colors.transparent,
          child: Text("Scrubs",style: TextStyle(fontSize: 25, fontFamily: "description"),), shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(46,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent,
          child: Text("Sex Education",style: TextStyle(fontSize: 25, fontFamily: "description"),), shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(43,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent, shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text("Shameless",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(24,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent, shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text("Sherlock",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(8,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent, shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text("Six Feet Under",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(23,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent, shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text("South Park",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(22,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent,
          child: Text("Spooks",style: TextStyle(fontSize: 25, fontFamily: "description"),), shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(48,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent,
          child: Text("Suits",style: TextStyle(fontSize: 25, fontFamily: "description"),), shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(35,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent, shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text("Supernatural",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(37,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent, shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text("Stranger Things",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(
              () {
                isCollapsed = true;

                _pageController.animateToPage(14,
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.linear);
              },
            );
          },
        ),
        Text(
          "T",
          style: TextStyle(
              color: Colors.black, fontSize: 50, fontFamily: "description"),
        ),
        Divider(
          height: 1,
          color: Colors.black,
        ),
        RaisedButton(
          color: Colors.transparent,
          child: Text("The Good Place",style: TextStyle(fontSize: 25, fontFamily: "description"),), shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(55,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent,
          child: Text("The Office (US\)",style: TextStyle(fontSize: 25, fontFamily: "description"),), shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(17,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent,
          child: Text("The Simpsons",style: TextStyle(fontSize: 25, fontFamily: "description"),), shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(28,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent,
          child: Text("The Sopranos",style: TextStyle(fontSize: 25, fontFamily: "description"),), shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          onPressed: () {
            setState(() {
              isCollapsed = true;
              _pageController.animateToPage(7,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent,
          child: Text("The Spartacus",style: TextStyle(fontSize: 25, fontFamily: "description"),), shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(33,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent, shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text("The Walking dead",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(52,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent, shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text("The Wire",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(() {
              _pageController.animateToPage(4,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
              isCollapsed = true;
            });
          },
        ),
        RaisedButton(
          color: Colors.transparent, shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text("True Detective",style: TextStyle(fontSize: 25, fontFamily: "description"),),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(11,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        Text(
          "V",
          style: TextStyle(
              color: Colors.black, fontSize: 50, fontFamily: "description"),
        ),
        Divider(
          height: 1,
          color: Colors.black,
        ),
        RaisedButton(
          color: Colors.transparent,
          child: Text("Vikings",style: TextStyle(fontSize: 25, fontFamily: "description"),), shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(30,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
        Text(
          "W",
          style: TextStyle(
              color: Colors.black, fontSize: 50, fontFamily: "description"),
        ),
        Divider(
          height: 1,
          color: Colors.black,
        ),
        RaisedButton(
          color: Colors.transparent,
          child: Text("Westworld",style: TextStyle(fontSize: 25, fontFamily: "description"),), shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          onPressed: () {
            setState(() {
              isCollapsed = true;

              _pageController.animateToPage(16,
                  duration: Duration(milliseconds: 1000), curve: Curves.linear);
            });
          },
        ),
      ],
    );
  }

  Widget _detailsBuilder(index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.5)).clamp(0.0, 1.0);
        }
        return Expanded(
          child: Transform.translate(
            offset: Offset(0, 250 + (-value * 250)),
            child: Opacity(
              opacity: value,
              child: seriesDesc(index),
            ),
          ),
        );
      },
    );
  }

  ListView seriesDesc(index) {
    return ListView(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.only(top: 5),
      children: <Widget>[
        Container(
          padding:
              EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0, top: 0),
          child: Container(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      "images/show.png",
                      height: 35,
                      width: 35,
                    ),
                    SizedBox(
                      width: 4.73,
                    ),
                    Text(
                      detailsList[index].title,
                      style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontFamily: "Title"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      "images/rate.png",
                      height: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      detailsList[index].rating.toString(),
                      style: TextStyle(
                          fontSize: 25.0, fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    Image.asset(
                      "images/genre.png",
                      height: 30.0,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      detailsList[index].genre,
                      style: TextStyle(
                          fontSize: 25.0, fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  detailsList[index].description,
                  style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: "Description",
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: new BorderRadius.circular(90),
                  ),
                  height: 5.0,
                  width: 190.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  height: 10,
                ),
                ButtonTheme(
                  height: 50.0,
                  minWidth: 150.0,
                  child: RaisedButton(
                    elevation: 10,
                    splashColor: Colors.black,
                    color: Colors.red.shade900.withOpacity(0.7),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(110)),
                    onPressed: _showModelSheet,
                    child: Text(
                      "Cast",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontFamily: "description",
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Stream it on:",
                      style: TextStyle(
                          fontSize: 25.0,
                          fontFamily: "description",
                          fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    ButtonTheme(
                      height: 30.0,
                      child: RaisedButton(
                        elevation: 10,
                        splashColor: Colors.white,
                        color: Colors.redAccent.shade700,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(110)),
                        onPressed: _launchURL,
                        child: Text(
                          detailsList[index].stream,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Seasons:",
                      style: TextStyle(
                          fontSize: 25.0,
                          fontFamily: "description",
                          fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    ButtonTheme(
                      minWidth: 1,
                      height: 30.0,
                      child: FlatButton(
                        splashColor: Colors.transparent,
                        color: Colors.grey.shade900,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(110)),
                        onPressed: () {},
                        child: Text(
                          detailsList[index].seasons.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Status:",
                      style: TextStyle(
                          fontSize: 25.0,
                          fontFamily: "description",
                          fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    ButtonTheme(
                      height: 30.0,
                      child: FlatButton(
                        splashColor: Colors.transparent,
                        color: Colors.grey.shade900,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(110)),
                        onPressed: () {},
                        child: Text(
                          detailsList[index].status,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Watch Trailer:",
                      style: TextStyle(
                          fontSize: 25.0,
                          fontFamily: "description",
                          fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    ButtonTheme(
                      height: 30.0,
                      child: Center(
                        child: IconButton(
                          icon: Icon(
                            FontAwesomeIcons.youtube,
                          ),
                          splashColor: Color(0xff282828),
                          iconSize: 35,
                          color: Color(0xffff0000),
                          onPressed: () {
                            _launchURLYT();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _launchURL() async {
    String url = detailsList[currentPage].url;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLYT() async {
    String vid =
        "https://www.youtube.com/watch?v=" + detailsList[currentPage].vid;
    if (await canLaunch(vid)) {
      await launch(vid);
      print(vid);
    } else {
      throw 'Could not launch $vid';
    }
  }

  Widget itemBuilder(index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.5)).clamp(0.0, 1.0);
          return Align(
            alignment: Alignment.topCenter,
            child: Container(
              child: child,
              height: Curves.easeIn.transform(value) * 600,
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            ),
          );
        } else {
          return Align(
            alignment: Alignment.topCenter,
            child: Container(
              child: child,
              height:
                  Curves.easeIn.transform(index == 0 ? value : value * 0.5) *
                          screenHeight -
                      385,
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            ),
          );
        }
      },
      child: Material(
          color: Colors.white,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: ClipRRect(
              child: Image.asset(
                imageList[index],
                fit: BoxFit.fitHeight,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
            ),
          )),
    );
  }

  _onPageChanged(int index) {
    setState(() {
      print(index);
      currentPage = index;
    });
  }
}
