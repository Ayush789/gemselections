import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';
import 'package:gemselections/Pages/mainscaffold.dart';

class PerfumeriesPage extends StatefulWidget {
  @override
  _PerfumeriesPageState createState() => _PerfumeriesPageState();
}

class _PerfumeriesPageState extends State<PerfumeriesPage> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: ListView(
        children: <Widget>[
          Image.network(imgurl),
          RaisedButton(
            onPressed: () {},
            child: Text("Checkout our Price List!"),
          ),
          Image.network(imgurl),
          Text("Data")
        ],
      ),
    );
  }
}
