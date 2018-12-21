import 'package:flutter/material.dart';

class PurpleSapphirePage extends StatefulWidget {
  @override
  _PurpleSapphirePageState createState() => _PurpleSapphirePageState();
}

class _PurpleSapphirePageState extends State<PurpleSapphirePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Heera"),
      ),
      body: ListView(
        children: <Widget>[
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media&token=2393c15d-8fca-4a9c-be1d-318aa8c5a71a"),
          Text(
            "Baingani Pukhraj",
            style: TextStyle(color: Colors.purple, fontSize: 20.0),
          ),
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media&token=2393c15d-8fca-4a9c-be1d-318aa8c5a71a"),
          Text("Baingani Pukhraj is rare..."),
        ],
      ),
    );
  }
}
