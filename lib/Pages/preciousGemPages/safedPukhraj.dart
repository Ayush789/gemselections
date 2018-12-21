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
        title: Text("White Sapphire"),
      ),
      body: ListView(
        children: <Widget>[
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media"),
          Text(
            "SAFED PUKHRAJ | WHITE SAPPHIRE",
            style: TextStyle(color: Colors.purple, fontSize: 20.0),
          ),
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fsafed-pukhraj.jpg?alt=media&token=eeb2c2b4-7d03-488c-9b8b-44762b8775fb"),
          Text(" Pitambari Neelam is used where the nature requires to wear both Neelam and Pukhraj. This Gemstone has the powers of both the Gems and can drastically improve the status and wealth of the wearer.\n\n<b>Its price ranges from Rs. 2100.00 Per Ratti to Rs. 31000/- per ratti. </b>\n\nPitambari Neelam <b>Weight available 2.25 rati to 11.25 rati.</b>"),
        ],
      ),
    );
  }
}
