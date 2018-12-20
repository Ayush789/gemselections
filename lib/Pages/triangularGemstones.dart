import 'package:flutter/material.dart';
import 'package:gemselections/Pages/mainscaffold.dart';

List<TriangularGem> gemstones = [
  TriangularGem(
    Title: "Title1",
    ImageUrl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media",
    DialogText: "Dialog Text 1",
  ),
  TriangularGem(
    Title: "Title1",
    ImageUrl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media",
    DialogText: "Dialog Text 1",
  ),
  TriangularGem(
    Title: "Title1",
    ImageUrl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media",
    DialogText: "Dialog Text 1",
  ),
  TriangularGem(
    Title: "Title1",
    ImageUrl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media",
    DialogText: "Dialog Text 1",
  ),
  TriangularGem(
    Title: "Title1",
    ImageUrl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media",
    DialogText: "Dialog Text 1",
  ),
  TriangularGem(
    Title: "Title1",
    ImageUrl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media",
    DialogText: "Dialog Text 1",
  ),
];

class TriangularGemstonesPage extends StatefulWidget {
  @override
  _TriangularGemstonesPageState createState() =>
      _TriangularGemstonesPageState();
}

class _TriangularGemstonesPageState extends State<TriangularGemstonesPage> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: ListView(
        children: <Widget>[
          Text("Heading Text"),
          Text("We deal"),
          Column(
            children: TriangularButtonsToRows(gemstones, context),
          )
        ],
      ),
    );
  }
}

class TriangularGem extends StatelessWidget {
  String Title, ImageUrl, DialogText;

  TriangularGem({
    this.DialogText,
    this.Title,
    this.ImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Text(Title),
          FlatButton(
            child: Image.network(
              ImageUrl,
              width: 100.0,
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
    );
  }
}

List<Widget> TriangularButtonsToRows(
    List<TriangularGem> gembuttons, BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  int numPerRow = (width / 150.0).floor();
  int numTotal = gembuttons.length;
  print(width);
  print(numPerRow);
  print((numTotal / numPerRow).ceil());
  List<Widget> colList = [];
  List<TriangularGem> curList = [];
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
