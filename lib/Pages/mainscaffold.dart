import 'package:flutter/material.dart';

import 'package:gemselections/Pages/Astrology.dart';
import 'package:gemselections/Pages/abhimantritpage.dart';
import 'package:gemselections/Pages/accountpage.dart';
import 'package:gemselections/Pages/cabochonGems.dart';
import 'package:gemselections/Pages/diamonds.dart';
import 'package:gemselections/Pages/gemstones.dart';
import 'package:gemselections/Pages/jwellry.dart';
import 'package:gemselections/Pages/triangularGemstones.dart';

class MainScaffold extends StatefulWidget {
  Widget body;

  MainScaffold({@required this.body});

  @override
  _MainScaffoldState createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("My Account"),
              leading: Icon(Icons.account_circle),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AccountPage()));
              },
            ),
            ListTile(
              title: Text("Precious Gemstones"),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GemstonesPage()));
              },
            ),
            ListTile(
              title: Text("Diamond"),
              leading: Icon(Icons.attach_money),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DiamondPage()));
              },
            ),
            ListTile(
              title: Text("Jwellery"),
              leading: Icon(Icons.attach_money),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => JwelleryPage()));
              },
            ),
            ListTile(
              title: Text("Semi Precious Stones"),
              leading: Icon(Icons.adb),
            ),
            ListTile(
              title: Text("Triangular Gemstones"),
              leading: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TriangularGemstonesPage()));
              },
            ),
            ListTile(
              title: Text("Today's Update"),
              leading: Icon(Icons.new_releases),
            ),
            ListTile(
              title: Text("Abhimantrit"),
              leading: Icon(Icons.info),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AbhimantritPage()));
              },
            ),
            ListTile(
              title: Text("Gem Selections\u2122 Astro Dose "),
              leading: Icon(Icons.account_circle),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AstrologyPage()));
              },
            ),
            ListTile(
              title: Text("Cabocho Gemstones"),
              leading: Icon(Icons.account_circle),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CabochonGemsPage()));
              },
            ),
            ListTile(
              title: Text("Birthstones"),
              leading: Icon(Icons.account_circle),
            ),
            ListTile(
              title: Text("Gemstones and Astrology"),
              leading: Icon(Icons.account_circle),
            ),
            ListTile(
              title: Text("Astrological Remedies"),
              leading: Icon(Icons.account_circle),
            ),
            ListTile(
              title: Text("Gemstones Reccomendations"),
              leading: Icon(Icons.account_circle),
            ),
            ListTile(
              title: Text("Rudrksha"),
              leading: Icon(Icons.account_circle),
            ),
            Divider(),
            ListTile(
              title: Text("Spiritual Items"),
            ),
            ListTile(
              title: Text("Spiritual Items"),
              leading: Icon(Icons.account_circle),
            ),
            ListTile(
              title: Text("Frequently Asked Questions"),
              leading: Icon(Icons.info_outline),
            ),
            ListTile(
              title: Text("Join the Gems Selections\u2122"),
              leading: Icon(Icons.chat),
            ),
            ListTile(
              title: Text("Watch Gem Selections\u2122 LIVE"),
              leading: Icon(Icons.live_tv),
            ),
            Divider(),
            ListTile(
              title: Text("Contact Us"),
            ),
            ListTile(
              title: Text("Connect With Us"),
              leading: Icon(Icons.person_add),
            ),
            ListTile(
              title: Text("Call Us"),
              leading: Icon(Icons.call),
            ),
            ListTile(
              title: Text("Mail Us"),
              leading: Icon(Icons.mail),
            ),
            ListTile(
              title: Text("Visit Us"),
              leading: Icon(Icons.store),
            ),
            Divider(),
            ListTile(
              title: Text("Spread The Word!"),
            ),
            ListTile(
              title: Text("Share"),
              leading: Icon(Icons.share),
            ),
            ListTile(
              title: Text("Rate App"),
              leading: Icon(Icons.star_border),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFF09126F),
        title: Center(child: Image.asset("assets/appbar/bar.jpg")),
        leading: MaterialButton(
          onPressed: () => _scaffoldKey.currentState.openDrawer(),
          child: Icon(
            Icons.menu,
            color: Color(0xFFFEC92F),
          ),
        ),
        actions: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.phone,
                  color: Color(0xFFFEC92F),
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Color(0xFFFEC92F),
                ),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
      body: widget.body,
    );
  }
}
