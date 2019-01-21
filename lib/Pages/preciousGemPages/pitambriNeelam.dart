import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';


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
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: <Widget>[
            Container(
            height: 150.0,
            padding: EdgeInsets.all(30.0),
            child: FadeInImage(
              placeholder: AssetImage(placeholder),
              image: NetworkImage(
                  "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FPitambari-neelam-2.jpg?alt=media"),
            ),
          ),
         Text(
            "PEELA PUKHRAJ | YELLOW SAPPHIRE",
            style: TextStyle(color: Colors.blue, fontSize: 20.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
         
           Container(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            child: GestureDetector(
              child: FadeInImage(
                placeholder: AssetImage(placeholder),
                image: NetworkImage(
                    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/YoutubeImages%2Fpitambari_neelam.jpeg?alt=media&token=9d4fc361-be34-4127-bb14-634d8e3c1401"),
              ),
              onTap: () => LaunchYoutube(precious_you_link[7]),
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
        Container(
             padding: EdgeInsets.symmetric(horizontal: 7.0),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  " Pitambari Neelam is used where the nature requires to wear both Neelam and Pukhraj. This Gemstone has the powers of both the Gems and can drastically improve the status and wealth of the wearer.\n"),
                  Text("Its price ranges from Rs. 2100.00 Per Ratti to Rs. 31000/- per ratti.\n", style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("Pitambari Neelam Weight available from\n"),
                  Text("2.25 ratti to 11.25 ratti.", style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),),
            Padding(
            padding: EdgeInsets.only(bottom: 10.0),
          ),
         
        ],
      ),
    );
  }
}
