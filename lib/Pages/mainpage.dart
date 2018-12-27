//import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import 'package:gemselections/Pages/Astrology.dart';
import 'package:gemselections/Pages/diamonds.dart';
import 'package:gemselections/Pages/gemstones.dart';
import 'package:gemselections/Pages/gemstonesmainpage.dart';
import 'package:gemselections/Pages/inthenewspage.dart';
import 'package:gemselections/Pages/jwellry.dart';
import 'package:gemselections/Pages/mainscaffold.dart';

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
          SizedBox(
              width: wid,
              height: wid / 2,
              child: Text(
                  "Carousel") /* Carousel(
              autoplay: true,
              animationDuration: Duration(seconds: 5),
              dotBgColor: Colors.transparent,
              dotSize: 5.0,
              dotSpacing: 15.0,
              images: [
                AssetImage("assets/landing/astrology.jpeg"),
                AssetImage("assets/landing/diamonds.jpeg"),
                AssetImage("assets/landing/gemstones.jpeg"),
                AssetImage("assets/landing/jwellery.jpeg"),
                AssetImage("assets/landing/rudraksh.jpeg"),
              ],
            ),*/
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
            onPressed: () {},
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
