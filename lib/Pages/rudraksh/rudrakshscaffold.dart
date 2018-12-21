import 'package:flutter/material.dart';
import 'package:gemselections/Pages/rudraksh/beads.dart';
import 'package:gemselections/Pages/rudraksh/rudrakshhome.dart';

class RudrakshScaffold extends StatefulWidget {
  Widget body;

  RudrakshScaffold({
    @required this.body,
  });

  @override
  _RudrakshScaffoldState createState() => _RudrakshScaffoldState();
}

class _RudrakshScaffoldState extends State<RudrakshScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rudraksh"),
      ),
      body: widget.body,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Rudraksha Home"),
              leading: Icon(Icons.account_circle),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RudrakshHomePage()));
              },
            ),
            ListTile(
              title: Text("Rudraksha Beads"),
              leading: Icon(Icons.account_circle),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BeadPage()));
              },
            ),
            ListTile(
              title: Text("Rudraksha Mala"),
              leading: Icon(Icons.account_circle),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RudrakshHomePage()));
              },
            ),
            ListTile(
              title: Text("Rudraksha Bracelets"),
              leading: Icon(Icons.account_circle),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RudrakshHomePage()));
              },
            ),
            ListTile(
              title: Text("Rudraksha Yugal"),
              leading: Icon(Icons.account_circle),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RudrakshHomePage()));
              },
            ),
            Divider(),
            ListTile(
              title: Text("Extras"),
            ),
            ListTile(
              title: Text("Mantras for rudraksha"),
              leading: Icon(Icons.account_circle),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RudrakshHomePage()));
              },
            ),
            ListTile(
              title: Text("How to wear"),
              leading: Icon(Icons.account_circle),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RudrakshHomePage()));
              },
            ),
            ListTile(
              title: Text("Authenticity"),
              leading: Icon(Icons.account_circle),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RudrakshHomePage()));
              },
            ),
            ListTile(
              title: Text("FAQ"),
              leading: Icon(Icons.account_circle),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RudrakshHomePage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
