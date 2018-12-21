import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';
import 'package:gemselections/Pages/mainscaffold.dart';
class AstrologicalRemediesPage extends StatefulWidget {
  @override
  _AstrologicalRemediesPageState createState() => _AstrologicalRemediesPageState();
}

class _AstrologicalRemediesPageState extends State<AstrologicalRemediesPage> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: ListView(
        children: <Widget>[
          Image.network(imgurl),
          Image.network(imgurl),
          Image.network(imgurl),
          Image.network(imgurl),
          Image.network(imgurl),
          Image.network(imgurl),
          Image.network(imgurl),
          Image.network(imgurl),
          Image.network(imgurl),
          Image.network(imgurl),
          Image.network(imgurl),
          Image.network(imgurl),
          Image.network(imgurl),
        ],
      ),
    );
  }
}
