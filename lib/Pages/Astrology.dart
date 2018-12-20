import 'package:flutter/material.dart';
import 'package:gemselections/Pages/mainscaffold.dart';

class AstrologyPage extends StatefulWidget {
  @override
  _AstrologyPageState createState() => _AstrologyPageState();
}

class _AstrologyPageState extends State<AstrologyPage> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child:Row(
              children: <Widget>[
                Image.network(''),
                Text(''),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
