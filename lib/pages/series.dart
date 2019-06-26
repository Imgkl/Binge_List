import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:top100/model/details.dart';

final imageList = [
  "images/1.jpg",
  "images/2.jpg",
  "images/3.jpg",
  "images/4.jpg",
  "images/5.png",
  "images/6.jpg",
  "images/7.jpg",
  "images/8.jpg",
  "images/9.jpg",
  
];

class SeriesCarousalPage extends StatefulWidget {
  @override
  _SeriesCarousalPageState createState() => _SeriesCarousalPageState();
}

class _SeriesCarousalPageState extends State<SeriesCarousalPage> {
  int currentPage = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: currentPage,
      keepPage: true,
      viewportFraction: 0.9,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Opacity(
            opacity: 0.3,
            child: AnimatedContainer(
              
              duration: Duration(milliseconds: 500),

              //color: colorList[currentPage],
              child: BackdropFilter(
                filter: ui.ImageFilter.blur(
                  sigmaX: 15.0,
                  sigmaY: 15.0,
                ),
                child: Image.asset(
                  imageList[currentPage],
                  fit: BoxFit.fitHeight,
                  height: double.infinity,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                height: 600,
                child: PageView.builder(
                  itemBuilder: (context, index) {
                    return itemBuilder(index);
                  },
                  controller: _pageController,
                  pageSnapping: true,
                  onPageChanged: _onPageChanged,
                  itemCount: 9,
                  
                  
                ),
              ),
              _detailsBuilder(currentPage),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.grey.shade100,
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
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Container(
                
                  child: Column(
                    
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "images/tv.png",
                            height: 35,
                          ),
                          Text(
                            detailsList[index].title,
                            style: TextStyle(
                                fontSize: 45.0,
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
                            letterSpacing: 2,
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
                              onPressed: () {},
                              child: Text(
                                detailsList[index].stream,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
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
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
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
                      600,
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            ),
          );
        }
      },
      child: Material(
          elevation: 4,
          
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: ClipRRect(
              child: Image.asset(imageList[index], fit: BoxFit.fitHeight),
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
