import 'package:flutter/material.dart';
import 'package:gemselections/Pages/rudraksh/beads.dart';
import 'package:gemselections/Pages/rudraksh/bracelet.dart';
import 'package:gemselections/Pages/rudraksh/faq.dart';
import 'package:gemselections/Pages/rudraksh/rudrakshhome.dart';
import 'package:gemselections/Pages/rudraksh/yugal.dart';
import 'package:gemselections/Pages/mainscaffold.dart';

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
        actions: <Widget>[
          FlatButton(
            child: Icon(Icons.home),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context, homeRoute, (Route<dynamic> r) => false);
            },
          )
        ],
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BeadPage()));
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BraceletPage()));
              },
            ),
            ListTile(
              title: Text("Rudraksha Yugal"),
              leading: Icon(Icons.account_circle),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => YugalPage()));
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
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text("Data"),
                      );
                    });
              },
            ),
            ListTile(
              title: Text("How to wear"),
              leading: Icon(Icons.account_circle),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text("Data"),
                      );
                    });
              },
            ),
            ListTile(
              title: Text("Authenticity"),
              leading: Icon(Icons.account_circle),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text("Data"),
                      );
                    });
              },
            ),
            ListTile(
              title: Text("FAQ"),
              leading: Icon(Icons.account_circle),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FAQPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
