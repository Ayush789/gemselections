//import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import 'package:gemselections/Pages/astrology/Astrology.dart';
import 'package:gemselections/Pages/diamonds.dart';
import 'package:gemselections/Pages/gemstones.dart';
import 'package:gemselections/Pages/gemstonesmainpage.dart';
import 'package:gemselections/Pages/inthenewspage.dart';
import 'package:gemselections/Pages/jwellry.dart';
import 'package:gemselections/Pages/mainscaffold.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:gemselections/Pages/rudraksh/rudrakshhome.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;

    return MainScaffold(
      body: ListView(
        children: <Widget>[
          CarouselSlider(
            items: [
              Image.asset("assets/landing/astrology.jpeg"),
              Image.asset("assets/landing/diamonds.jpeg"),
              Image.asset("assets/landing/gemstones.jpeg"),
              Image.asset("assets/landing/jwellery.jpeg"),
              Image.asset("assets/landing/rudraksh.jpeg"),
            ],
            viewportFraction: 1.0,
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GemStonesMainPage()));
            },
            padding: EdgeInsets.all(2.0),
            child: Image.asset(
              "assets/landing/gemstones.jpeg",
              fit: BoxFit.fitWidth,
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DiamondPage()));
            },
            padding: EdgeInsets.all(2.0),
            child: Image.asset(
              "assets/landing/diamonds.jpeg",
              fit: BoxFit.fitWidth,
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => JwelleryPage()));
            },
            padding: EdgeInsets.all(2.0),
            child: Image.asset(
              "assets/landing/jwellery.jpeg",
              fit: BoxFit.fitWidth,
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AstrologyPage()));
            },
            padding: EdgeInsets.all(2.0),
            child: Image.asset(
              "assets/landing/astrology.jpeg",
              fit: BoxFit.fitWidth,
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RudrakshHomePage()));
            },
            padding: EdgeInsets.all(2.0),
            child: Image.asset(
              "assets/landing/rudraksh.jpeg",
              fit: BoxFit.fitWidth,
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InTheNewsPage()));
            },
            padding: EdgeInsets.all(2.0),
            child: Image.asset(
              "assets/landing/inthenews.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InTheNewsPage()));
            },
            padding: EdgeInsets.all(2.0),
            child: Image.asset(
              "assets/landing/inthenews.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InTheNewsPage()));
            },
            padding: EdgeInsets.all(2.0),
            child: Image.asset(
              "assets/landing/inthenews.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InTheNewsPage()));
            },
            padding: EdgeInsets.all(2.0),
            child: Image.asset(
              "assets/landing/inthenews.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),
          FlatButton(
            onPressed: () {},
            padding: EdgeInsets.all(2.0),
            child: Image.asset(
              "assets/landing/reasons.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
