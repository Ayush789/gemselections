import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';
import 'package:gemselections/Pages/mainscaffold.dart';

class KavachPage extends StatefulWidget {
  @override
  _KavachPageState createState() => _KavachPageState();
}

class _KavachPageState extends State<KavachPage> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body:ListView(
        children: <Widget>[
          Image.network(imgurl),
          RaisedButton(child: Text("Shop Now"),onPressed: (){},),
          Text("Nazar Shuraksha Kavach"),
          Text("Data"),
        ],
      ),
    );
  }
}
