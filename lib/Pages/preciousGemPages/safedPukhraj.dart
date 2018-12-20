import 'package:flutter/material.dart';

class SafedPukhrajPage extends StatefulWidget {
  @override
  _SafedPukhrajPageState createState() => _SafedPukhrajPageState();
}

class _SafedPukhrajPageState extends State<SafedPukhrajPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Purple Sapphire"),
      ),
      body: ListView(
        children: <Widget>[
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media"),
          Text(
            "Baingani SafedPukhraj",
            style: TextStyle(color: Colors.purple, fontSize: 20.0),
          ),
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media"),
          Text("Select One"),
        ],
      ),
    );
  }
}
