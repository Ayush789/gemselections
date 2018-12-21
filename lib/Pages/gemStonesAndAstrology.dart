import 'package:flutter/material.dart';
import 'package:gemselections/Pages/mainscaffold.dart';

class GemStonesAndAstrology extends StatefulWidget {
  @override
  _GemStonesAndAstrologyState createState() => _GemStonesAndAstrologyState();
}

class _GemStonesAndAstrologyState extends State<GemStonesAndAstrology> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: ListView(
        children: <Widget>[
          Text("Which Gem Stone to wear?"),
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media"),
          Text("Data"),
        ],
      ),
    );
  }
}
