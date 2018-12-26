import 'package:flutter/material.dart';
import 'package:gemselections/Pages/handicraft/handicraftScaffold.dart';

class GoldPlatedMarbleClockPage extends StatefulWidget {
  @override
  _GoldPlatedMarbleClockPageState createState() =>
      _GoldPlatedMarbleClockPageState();
}

class _GoldPlatedMarbleClockPageState extends State<GoldPlatedMarbleClockPage> {
  @override
  Widget build(BuildContext context) {
    return HandicraftScaffold(
      body: ListView(
        children: <Widget>[
          Text("Gold Plated Marble Clocks"),
        ],
      ),
    );
  }
}
