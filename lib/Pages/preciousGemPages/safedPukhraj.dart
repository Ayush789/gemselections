import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';


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
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        children: <Widget>[
             Container(
            height: 150.0,
            padding: EdgeInsets.all(30.0),
            child: FadeInImage(
              placeholder: AssetImage(placeholder),
              image: NetworkImage(
                  "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FWhite-Sapphire.jpg?alt=media&token=459a6efa-5ec9-45e9-aa37-209b6c6801a8"),
            ),
          ),
            Text(
            "SAFED PUKHRAJ | WHITE SAPPHIRE",
            style: TextStyle(color: Colors.orange, fontSize: 20.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
           Container(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            child: GestureDetector(
              child: FadeInImage(
                placeholder: AssetImage(placeholder),
                image: NetworkImage(
                    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/YoutubeImages%2Fwhite_sapphire.jpeg?alt=media&token=91fd473f-803d-4fed-8826-3b9c7b562c0b"),
              ),
              onTap: () => LaunchYoutube(precious_you_link[12]),
            ),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 20.0,
                  offset: new Offset(5.0, 15.0),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10.0),),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 7.0),
            child: Column(
              children: <Widget>[
                Text(
                    " Pitambari Neelam is used where the nature requires to wear both Neelam and Pukhraj. This Gemstone has the powers of both the Gems and can drastically improve the status and wealth of the wearer.\n"),
            
                Text("Its price ranges from Rs. 2100.00 Per Ratti to Rs. 31000/- per ratti.", style: TextStyle(fontWeight: FontWeight.bold),),
                Text("\nPitambari Neelam\n"),
                Text("Weight available 2.25 rati to 11.25 rati.", style: TextStyle(fontWeight: FontWeight.bold),),
            ],
            ),
          ),
        ],
      ),
    );
  }
}
