import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gemselections/Pages/mainscaffold.dart';
import 'package:gemselections/Pages/rudraksh/rudrakshscaffold.dart';

List<Bracelet> gemstones = [
  Bracelet(
    Title: "Rudraksha Mala",
    ImageUrl:
    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Frudraksha-bracelet1.jpg?alt=media",
    DialogText: "Rudraksha Bracelet\nRs1100.00\n\n\tThe birth of son in the family gives it strength and continuity. The couples who desire that a son should be born to them should wear it. This not only helps in birth of a male offspring but also helps in giving his long life and strength.\n\n\n\tThe Mantra has to be recited on a Rudhraksha mala and should be spoken in such a way that at least you can hear it. Shri Shiv Mahapuran is of the view that Rudhraksha does not give its full results without the use of proper mantras.\n\nRs. 1100.00",
  ),
  Bracelet(
    Title: "Do Mukhi Rudraksha Mala",
    ImageUrl:
    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Frudrakshabracelet.jpg?alt=media",
    DialogText: "Two Mukhi Rudraksha Bracelet\n\n\tThis fulfills desires and cuts down the problems and impediments created by the Government or superiors. It raises a person to a very high level and leadership qualities are developed by its constant use\n\n\n\tThe Mantra has to be recited on a Rudhraksha mala and should be spoken in such a way that at least you can hear it. Shri Shiv Mahapuran is of the view that Rudhraksha does not give its full results without the use of proper mantras.\n\nRs.Rs. 1000.00",
  ),
  Bracelet(
    Title: "Three Mukhi Rudraksha Bracelet",
    ImageUrl:
    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fseven-mukhi-rudraksha-bracelet.jpg?alt=media",
    DialogText: "Three Mukhi Rudraksha Bracelet\n\n\tThis fulfills desires and cuts down the problems and impediments created by the Government or superiors. It raises a person to a very high level and leadership qualities are developed by its constant use.\n\n\n\tThe Mantra has to be recited on a Rudhraksha mala and should be spoken in such a way that at least you can hear it. Shri Shiv Mahapuran is of the view that Rudhraksha does not give its full results without the use of proper mantras.\n\nRs. 1000.00",
  ),
  Bracelet(
    Title: "Pearl and Rudraksha Combination",
    ImageUrl:
    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Frudraksha-pearl-bracelet.jpg?alt=media",
    DialogText: "Rudraksha Pearl Combination\n\n\tThis string is Natural Fresh Water Pearls. Pearl beads are very good for chanting the name of Vishnu and all his incarnations. It improves the glow in the skin and makes it vibrant. It improves the natural beauty of the wearer. This string improves the imagination, power of expression and the skill of handling people.\n\n\tThis is a rosary which is used to chant the name of Lord Shiva. It gives peace of mind ,controls the blood pressure and also strengthens the mind. In Ayurveda this is used to cure epilepsy .This mala is widely used to awaken the Kundalini Shakti .\n\n\tThe Mantra has to be recited on a Rudhraksha mala and should be spoken in such a way that at least you can hear it. Shri Shiv Mahapuran is of the view that Rudhraksha does not give its full results without the use of proper mantras.\n\nRs. 501.00",
  ),
];

class BraceletPage extends StatefulWidget {
  @override
  _BraceletPageState createState() =>
      _BraceletPageState();
}

class _BraceletPageState extends State<BraceletPage>
{
  @override
  Widget build(BuildContext context) {
    return RudrakshScaffold(
      body: ListView(
        children: <Widget>[
          Container(
            child: CachedNetworkImage(
                imageUrl: "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Frudraksha-banner.jpg?alt=media",
                 placeholder: (context, url) => Align(alignment: Alignment.center,child: CircularProgressIndicator()),
                 errorWidget:(context, url, error) =>  Icon(Icons.error),
              ),
              decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 20.0,
                  offset: new Offset(2.0, 7.0),
                ),
              ],
            ),
          ),
         Padding(padding: EdgeInsets.only(top: 10.0),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "We deal in following Bracelet gems:",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Column(
            children: BraceletButtonsToRows(gemstones, context),
          )
        ],
      ),
    );
  }
}

class Bracelet extends StatelessWidget {
  String Title, ImageUrl, DialogText;

  Bracelet({
    this.DialogText,
    this.Title,
    this.ImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Container(
        width: 170.0,
        height: 217.0,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                Title,
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            FlatButton(
              child: Image.network(
                ImageUrl,
                width: 150.0,
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: SingleChildScrollView(child: Text(DialogText)),
                      );
                    });
              },
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> BraceletButtonsToRows(
    List<Bracelet> gembuttons, BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  int numPerRow = (width / 150.0).floor();
  int numTotal = gembuttons.length;
  print(width);
  print(numPerRow);
  print((numTotal / numPerRow).ceil());
  List<Widget> colList = [];
  List<Bracelet> curList = [];
  for (int i = 0; i < (numTotal / numPerRow).ceil(); i++) {
    curList = [];
    for (int j = 0; j < numPerRow; j++) {
      if (i * numPerRow + j < numTotal) {
        curList.add(gembuttons[i * numPerRow + j]);
      }
    }
    colList.add(
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: curList,
      ),
    );
  }
  return colList;
}
