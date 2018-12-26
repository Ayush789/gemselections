import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';
import 'package:gemselections/Pages/rudraksh/rudrakshscaffold.dart';

class YugalPage extends StatefulWidget {
  @override
  _YugalPageState createState() => _YugalPageState();
}

class _YugalPageState extends State<YugalPage> {
  @override
  Widget build(BuildContext context) {
    return RudrakshScaffold(
      body: ListView(
        children: <Widget>[
          Image.network(imgurl),
          Text("Aakarshan Vriddhi Yantra"),
          Image.network(imgurl),
          Text("Data"),
        ],
      ),
    );
  }
}
