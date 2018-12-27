import 'package:flutter/material.dart';
import 'package:gemselections/Pages/mainscaffold.dart';

List<CarvedGem> gemstones = [
  CarvedGem(
    Title: "Golden Topaz",
    ImageUrl:
    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FCarved-Golden-Topaz.jpg?alt=media",
    DialogText: "Dialog Text 1",
  ),
  CarvedGem(
    Title: "Lemon Topaz",
    ImageUrl:
    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FCarved-Lemon-Topaz.jpg?alt=media",
    DialogText: "Dialog Text 1",
  ),
  CarvedGem(
    Title: "Green Amethyst",
    ImageUrl:
    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FCarved-Green-Amethyst.jpg?alt=media",
    DialogText: "Dialog Text 1",
  ),
  CarvedGem(
    Title: "Rose Quartz",
    ImageUrl:
    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FCarved-rose-quartz.jpg?alt=media",
    DialogText: "Dialog Text 1",
  ),
  CarvedGem(
    Title: "Green Fluorite",
    ImageUrl:
    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FCarved-green-fluorite.jpg?alt=media",
    DialogText: "Dialog Text 1",
  ),
  CarvedGem(
    Title: "Smokey Topaz",
    ImageUrl:
    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FCarved-Smoky-Topaz.jpg?alt=media",
    DialogText: "Dialog Text 1",
  ),
  CarvedGem(
    Title: "Green Onyx",
    ImageUrl:
    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FCarved-Green-Onyx.jpg?alt=media",
    DialogText: "Dialog Text 1",
  ),
  CarvedGem(
    Title: "White Quartz",
    ImageUrl:
    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FCarved-White-Quartz.jpg?alt=media",
    DialogText: "Dialog Text 1",
  ),
];

class CarvedGemstonesPage extends StatefulWidget {
  @override
  _CarvedGemstonesPageState createState() =>
      _CarvedGemstonesPageState();
}

class _CarvedGemstonesPageState extends State<CarvedGemstonesPage> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Carved Gemstones",
              style: TextStyle(
                fontSize: 30.0,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Column(
            children: CarvedButtonsToRows(gemstones, context),
          )
        ],
      ),
    );
  }
}

class CarvedGem extends StatelessWidget {
  String Title, ImageUrl, DialogText;

  CarvedGem({
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

List<Widget> CarvedButtonsToRows(
    List<CarvedGem> gembuttons, BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  int numPerRow = (width / 150.0).floor();
  int numTotal = gembuttons.length;
  print(width);
  print(numPerRow);
  print((numTotal / numPerRow).ceil());
  List<Widget> colList = [];
  List<CarvedGem> curList = [];
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
