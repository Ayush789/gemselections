import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';
import 'package:gemselections/Pages/rudraksh/rudrakshscaffold.dart';

class RudrakshMala extends StatefulWidget {
  @override
  _RudrakshMalaState createState() => _RudrakshMalaState();
}

class _RudrakshMalaState extends State<RudrakshMala> {
  @override
  Widget build(BuildContext context) {
    return RudrakshScaffold(
      body:ListView(
        children: <Widget>[
          Image.network(imgurl),
          Text("Abc"),
        ],
      ),
    );
  }
}
