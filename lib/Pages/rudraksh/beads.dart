import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';
import 'package:gemselections/Pages/mainscaffold.dart';
import 'package:gemselections/Pages/rudraksh/rudrakshscaffold.dart';

List<Bead> gemstones = [
  Bead(
    Title: "Golden Topaz",
    ImageUrl:
    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FTriangular-Golden-Topaz.jpg?alt=media",
    DialogText: "Dialog Text 1",
  ),
  Bead(
    Title: "Lemon Topaz",
    ImageUrl:
    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FTriangular-Lemon-Topaz.jpg?alt=media",
    DialogText: "Dialog Text 1",
  ),
  Bead(
    Title: "Green Amethyst",
    ImageUrl:
    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FTriangular-Green-Amethyst.jpg?alt=media",
    DialogText: "Dialog Text 1",
  ),
  Bead(
    Title: "Rose Quartz",
    ImageUrl:
    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FTriangular-rose-quartz.jpg?alt=media",
    DialogText: "Dialog Text 1",
  ),
  Bead(
    Title: "Green Fluorite",
    ImageUrl:
    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FTriangular-green-fluorite.jpg?alt=media",
    DialogText: "Dialog Text 1",
  ),
  Bead(
    Title: "Smokey Topaz",
    ImageUrl:
    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FTriangular-Smoky-Topaz.jpg?alt=media",
    DialogText: "Dialog Text 1",
  ),
  Bead(
    Title: "Green Onyx",
    ImageUrl:
    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FTriangular-Green-Onyx.jpg?alt=media",
    DialogText: "Dialog Text 1",
  ),
  Bead(
    Title: "White Quartz",
    ImageUrl:
    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FTriangular-White-Quartz.jpg?alt=media",
    DialogText: "Dialog Text 1",
  ),
];

class BeadPage extends StatefulWidget {
  @override
  _BeadPageState createState() =>
      _BeadPageState();
}

class _BeadPageState extends State<BeadPage> {
  
  @override
  Widget build(BuildContext context) {
    return RudrakshScaffold(
      body: ListView(
        children: <Widget>[
          Image.network(imgurl),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "We deal in following triangular gems:",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Column(
            children: BeadToRows(gemstones, context),
          )
        ],
      ),
    );
  }
}

class Bead extends StatelessWidget {
  String Title, ImageUrl, DialogText;

  Bead({
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
        height: 180.0,
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

List<Widget> BeadToRows(
    List<Bead> gembuttons, BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  int numPerRow = (width / 150.0).floor();
  int numTotal = gembuttons.length;
  print(width);
  print(numPerRow);
  print((numTotal / numPerRow).ceil());
  List<Widget> colList = [];
  List<Bead> curList = [];
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
