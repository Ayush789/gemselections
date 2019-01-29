import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:gemselections/Pages/imageurl.dart';

class PurpleSapphirePage extends StatefulWidget {
  @override
  _PurpleSapphirePageState createState() => _PurpleSapphirePageState();
}

class _PurpleSapphirePageState extends State<PurpleSapphirePage> {
// void LaunchYoutube(String id) async {
//   if (await canLaunch("vnd.youtube://" + id)) {
//     await launch("vnd.youtube://" + id);
//   } else {
//     print("Cannot launch " + id);
//   }
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Purple Sapphire"),
        backgroundColor: Colors.purple,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 150.0,
            padding: EdgeInsets.all(30.0),
            child: FadeInImage(
              placeholder: AssetImage(placeholder),
              image: NetworkImage(
                  "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FPurple-sapphire.jpg?alt=media&token=5da708fc-13ee-430c-ad10-f13199d2f6b8"),
            ),
          ),
          Text(
            "Baingani Pukhraj | Purple Sapphire",
            style: TextStyle(
                color: Colors.purple,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            child: GestureDetector(
              child: FadeInImage(
                placeholder: AssetImage(placeholder),
                image: NetworkImage(
                    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/YoutubeImages%2Fpurple_sapphire.jpeg?alt=media&token=aa4b1a3e-a5ee-40f7-a33d-e5167d823955"),
              ),
              //                               child: Image.network(
              // "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/YoutubeImages%2Fpurple_sapphire.jpeg?alt=media&token=aa4b1a3e-a5ee-40f7-a33d-e5167d823955"),

              onTap: () => LaunchYoutube(precious_you_link[0]),
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
            padding: EdgeInsets.only(top: 20.0),
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            child: Column(
              children: <Widget>[
                Text(
                  " Baingani Pukhraj is a rare Gemstone widely used in Astrology and healing. Its price ranges from",
                  textAlign: TextAlign.center,
                ),
                Text("\nRs. 2100.00 per ratti to Rs. 31000/- per ratti.",
                    style: new TextStyle(fontWeight: FontWeight.bold)),
                Text("\nPurple Sapphire Weight available"),
                Text("\n2.25 rati to 11.25 rati.",
                    style: new TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
