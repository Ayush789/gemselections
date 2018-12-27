import 'package:flutter/material.dart';
import 'package:gemselections/Pages/astrology/dailyhoroscope.dart';
import 'package:gemselections/Pages/astrology/indianastrology.dart';
import 'package:gemselections/Pages/astrology/matchmaking.dart';
import 'package:gemselections/Pages/astrology/westernastrology.dart';
import 'package:gemselections/Pages/imageurl.dart';
import 'package:gemselections/Pages/mainscaffold.dart';

class AstrologyPage extends StatefulWidget {
  @override
  _AstrologyPageState createState() => _AstrologyPageState();
}

class _AstrologyPageState extends State<AstrologyPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return MainScaffold(
      body: ListView(
        children: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MatchMakingPage()));
            },
            child: Row(
              children: <Widget>[
                Image.network(
                  imgurl,
                  height: h / 4,
                ),
                Text(
                  "Match Making",
                ),
              ],
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WesternAstrologyPage(),
                ),
              );
            },
            child: Row(
              children: <Widget>[
                Image.network(
                  imgurl,
                  height: h / 4,
                ),
                Text(
                  "Western Astrology",
                ),
              ],
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DailyHoroscopes()));
            },
            child: Row(
              children: <Widget>[
                Image.network(
                  imgurl,
                  height: h / 4,
                ),
                Text(
                  "Daily Horoscope",
                ),
              ],
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => IndianAstrologyPage()));
            },
            child: Row(
              children: <Widget>[
                Image.network(
                  imgurl,
                  height: h / 4,
                ),
                Text(
                  "Indian Astrology",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
