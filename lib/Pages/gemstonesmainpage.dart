import 'package:flutter/material.dart';
import 'package:gemselections/Pages/abhimantritpage.dart';
import 'package:gemselections/Pages/birthstones.dart';
import 'package:gemselections/Pages/cabochonGems.dart';
import 'package:gemselections/Pages/carvedgemstones.dart';
import 'package:gemselections/Pages/gemstones.dart';
import 'package:gemselections/Pages/mainscaffold.dart';
import 'package:gemselections/Pages/semipreciouspage.dart';
import 'package:gemselections/Pages/triangularGemstones.dart';

class GemStonesMainPage extends StatefulWidget {
  @override
  _GemStonesMainPageState createState() => _GemStonesMainPageState();
}

class _GemStonesMainPageState extends State<GemStonesMainPage> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: ListView(
        children: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GemstonesPage()));
            },
            padding: EdgeInsets.all(2.0),
            child: Image.asset(
              "assets/landing/gemstones.jpeg",
              fit: BoxFit.fitWidth,
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SemiPreciousGemstonesPage()));
            },
            padding: EdgeInsets.all(2.0),
            child: Image.asset(
              "assets/landing/gemstones.jpeg",
              fit: BoxFit.fitWidth,
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TriangularGemstonesPage()));
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
                  MaterialPageRoute(builder: (context) => CabochonGemsPage()));
            },
            padding: EdgeInsets.all(2.0),
            child: Image.asset(
              "assets/landing/gemstones.jpeg",
              fit: BoxFit.fitWidth,
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CarvedGemstonesPage()));
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
                  MaterialPageRoute(builder: (context) => GemstonesPage()));
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
                  MaterialPageRoute(builder: (context) => BirthStonesPage()));
            },
            padding: EdgeInsets.all(2.0),
            child: Image.asset(
              "assets/landing/gemstones.jpeg",
              fit: BoxFit.fitWidth,
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AbhimantranMainPage()));
            },
            padding: EdgeInsets.all(2.0),
            child: Image.asset(
              "assets/landing/gemstones.jpeg",
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
