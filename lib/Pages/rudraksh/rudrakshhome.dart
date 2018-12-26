import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';
import 'package:gemselections/Pages/rudraksh/rudrakshscaffold.dart';

class RudrakshHomePage extends StatefulWidget {
  @override
  _RudrakshHomePageState createState() => _RudrakshHomePageState();
}

class _RudrakshHomePageState extends State<RudrakshHomePage> {
  @override
  Widget build(BuildContext context) {
    return RudrakshScaffold(
      body:ListView(
        children: <Widget>[
          Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Frudraksha-banner.jpg?alt=media"),
          Text("Abc"),
          Image.network(imgurl),
          Text("Abc"),
        ],
      ),
    );
  }
}
