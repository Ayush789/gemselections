import 'package:flutter/material.dart';
import 'package:gemselections/Pages/mainscaffold.dart';
import 'package:gemselections/Pages/rudraksh/rudrakshscaffold.dart';

List<Bracelet> gemstones = [
  Bracelet(
    Title: "Rudraksha Mala",
    ImageUrl:
    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Frudraksha-bracelet1.jpg?alt=media",
    DialogText: "Dialog Text 1",
  ),
  Bracelet(
    Title: "Do Mukhi Rudraksha Mala",
    ImageUrl:
    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Frudrakshabracelet.jpg?alt=media",
    DialogText: "Dialog Text 1",
  ),
  Bracelet(
    Title: "Three Mukhi Rudraksha Bracelet",
    ImageUrl:
    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fseven-mukhi-rudraksha-bracelet.jpg?alt=media",
    DialogText: "Dialog Text 1",
  ),
  Bracelet(
    Title: "Pearl and Rudraksha Combination",
    ImageUrl:
    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Frudraksha-pearl-bracelet.jpg?alt=media",
    DialogText: "Dialog Text 1",
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Frudraksha-pearl-bracelet.jpg?alt=media&token=2199a086-b44e-4474-894b-1dacd6423bb3"),
          ),

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
                        content: Text(DialogText),
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
