import 'package:flutter/material.dart';

class PitambiNelaamPage extends StatefulWidget {
  @override
  _PitambiNelaamPageState createState() => _PitambiNelaamPageState();
}

class _PitambiNelaamPageState extends State<PitambiNelaamPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pitambri Neelam"),
      ),
      body: ListView(
        children: <Widget>[
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FPitambari-neelam-2.jpg?alt=media"),
          Text(
            "PITAMBRI NEELAM|YELLOW BLUE SAPPHIRE",
            style: TextStyle(color: Colors.purple, fontSize: 20.0),
          ),
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media"),
          Text(" Pitambari Neelam is used where the nature requires to wear both Neelam and Pukhraj. This Gemstone has the powers of both the Gems and can drastically improve the status and wealth of the wearer.\n\nIts price ranges from Rs. 2100.00 Per Ratti to Rs. 31000/- per ratti.\n\nPitambari Neelam Weight available 2.25 rati to 11.25 rati."),
        ],
      ),
    );
  }
}
