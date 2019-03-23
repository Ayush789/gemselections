import 'package:flutter/material.dart';
import 'package:gemselections/Pages/astrologicalremedies.dart';
import 'package:gemselections/Pages/astrology/Astrology.dart';
import 'package:gemselections/Pages/gemStonesAndAstrology.dart';
import 'package:gemselections/Pages/mainscaffold.dart';


class AstrologyMainPage extends StatefulWidget {
  @override
  _AstrologyMainPageState createState() => _AstrologyMainPageState();
}

class _AstrologyMainPageState extends State<AstrologyMainPage> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: ListView(
        children: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AstrologyPage()));
            },
            padding: EdgeInsets.symmetric(vertical: 2.0),
            child: Image.asset(
              "assets/landing/astrodose.jpeg",
              fit: BoxFit.fitWidth,
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AstrologicalRemediesPage()));
            },
            padding: EdgeInsets.symmetric(vertical: 2.0),
            child: Image.asset(
              "assets/landing/remedies.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),
          // FlatButton(
          //   onPressed: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => SemiPreciousGemstonesPage()));
          //   },
          //   padding: EdgeInsets.all(2.0),
          //   child: Image.asset(
          //     "assets/landing/gemstones.jpeg",
          //     fit: BoxFit.fitWidth,
          //   ),
          // ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => GemStonesAndAstrology()));
            },
            padding: EdgeInsets.symmetric(vertical: 2.0),
            child: Image.asset(
              "assets/landing/astrology.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),
          // FlatButton(
          //   onPressed: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => TriangularGemstonesPage()));
          //   },
          //   padding: EdgeInsets.all(2.0),
          //   child: Image.asset(
          //     "assets/landing/triangular.jpg",
          //     fit: BoxFit.fitWidth,
          //   ),
          // ),
          FlatButton(
            onPressed: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => CabochonGemsPage()));
            },
            padding: EdgeInsets.symmetric(vertical: 2.0),
            child: Image.asset(
              "assets/landing/spiritual.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),
          // FlatButton(
          //   onPressed: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => CarvedGemstonesPage()));
          //   },
          //   padding: EdgeInsets.all(2.0),
          //   child: Image.asset(
          //     "assets/landing/gemstones.jpg",
          //     fit: BoxFit.fitWidth,
          //   ),
          // ),
          // FlatButton(
          //   onPressed: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => GemstonesPage()));
          //   },
          //   padding: EdgeInsets.all(2.0),
          //   child: Image.asset(
          //     "assets/landing/gemstones.jpg",
          //     fit: BoxFit.fitWidth,
          //   ),
          // ),
          // // FlatButton(
          // //   onPressed: () {
          // //     Navigator.push(context,
          // //         MaterialPageRoute(builder: (context) => BirthStonesPage()));
          // //   },
          // //   padding: EdgeInsets.all(2.0),
          // //   child: Image.asset(
          // //     "assets/landing/gemstones.jpeg",
          // //     fit: BoxFit.fitWidth,
          // //   ),
          // // ),
          // FlatButton(
          //   onPressed: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => BirthStonesPage()));
          //   },
          //   padding: EdgeInsets.symmetric(vertical: 2.0),
          //   child: Image.asset(
          //     "assets/landing/birthstone.jpg",
          //     fit: BoxFit.fitWidth,
          //   ),
          // ),
          // // FlatButton(
          // //   onPressed: () {
          // //     Navigator.push(
          // //         context,
          // //         MaterialPageRoute(
          // //             builder: (context) => AbhimantranMainPage()));
          // //   },
          // //   padding: EdgeInsets.all(2.0),
          // //   child: Image.asset(
          // //     "assets/landing/gemstones.jpeg",
          // //     fit: BoxFit.fitWidth,
          // //   ),
          // // ),
          
        ],
      ),
    );
  }
}