import 'package:flutter/material.dart';
import 'package:gemselections/Pages/rudraksh/rudrakshscaffold.dart';

class FAQPage extends StatefulWidget {
  @override
  _FAQPageState createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  @override
  Widget build(BuildContext context) {
    return RudrakshScaffold(
      body: ListView(
        children: <Widget>[
          Text("Q1"),
          Text("A1"),
          Text("Q2"),
          Text("A2"),
          Text("Q3"),
          Text("A3"),
          Text("Q4"),
          Text("A4"),
          Text("Q5"),
          Text("A5"),
          Text("Q6"),
          Text("A6"),
          Text("Q7"),
          Text("A7"),
        ],
      ),
    );
  }
}
