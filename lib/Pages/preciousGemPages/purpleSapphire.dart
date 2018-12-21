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
        title: Text("Purple Sapphire"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            child: Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FPurple-sapphire-2.jpg?alt=media",
              height: 200.0,
            ),
          ),
          Text(
            "Baingani Pukhraj",
            style: TextStyle(
                color: Colors.purple,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media&token=2393c15d-8fca-4a9c-be1d-318aa8c5a71a"),
          Text(
              " Baingani Pukhraj is a rare Gemstone widely used in Astrology and healing. Its price ranges from Rs. 2100.00 per ratti to Rs. 31000/- per ratti.\nPurple Sapphire Weight available 2.25 rati to 11.25 rati."),
        ],
      ),
    );
  }
}
