import 'package:flutter/material.dart';
import 'package:gemselections/Pages/mainscaffold.dart';

List<TriangularGem> gemstones = [
  TriangularGem(
    Title: "Golden Topaz",
    ImageUrl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FTriangular-Golden-Topaz.jpg?alt=media",
    DialogText: "Dialog Text 1",
  ),
  TriangularGem(
    Title: "Lemon Topaz",
    ImageUrl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FTriangular-Lemon-Topaz.jpg?alt=media",
    DialogText: "Dialog Text 1",
  ),
  TriangularGem(
    Title: "Green Amethyst",
    ImageUrl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FTriangular-Green-Amethyst.jpg?alt=media",
    DialogText: "Dialog Text 1",
  ),
  TriangularGem(
    Title: "Rose Quartz",
    ImageUrl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FTriangular-rose-quartz.jpg?alt=media",
    DialogText: "Dialog Text 1",
  ),
  TriangularGem(
    Title: "Green Fluorite",
    ImageUrl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FTriangular-green-fluorite.jpg?alt=media",
    DialogText: "Dialog Text 1",
  ),
  TriangularGem(
    Title: "Smokey Topaz",
    ImageUrl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FTriangular-Smoky-Topaz.jpg?alt=media",
    DialogText: "Dialog Text 1",
  ),
  TriangularGem(
    Title: "Green Onyx",
    ImageUrl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FTriangular-Green-Onyx.jpg?alt=media",
    DialogText: "Dialog Text 1",
  ),
  TriangularGem(
    Title: "White Quartz",
    ImageUrl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FTriangular-White-Quartz.jpg?alt=media",
    DialogText: "Dialog Text 1",
  ),
];

class TriangularGemstonesPage extends StatefulWidget {
  @override
  _TriangularGemstonesPageState createState() =>
      _TriangularGemstonesPageState();
}

class _TriangularGemstonesPageState extends State<TriangularGemstonesPage> {
  String full =
          "Triangular Gemstones are known to have special powers of healing and energising us. Gems of this shape when worn as pendants have more than normal effect and they do not loose there power when they are worn for long periods. There aura instead of weakning gets stronger and stronger. Wear these to get special benefits in your life. They come with Govt. Certificate and quality which comes with our 24 years of experience",
      half =
          "Triangular Gemstones are known to have special powers of healing and energising us. Gems of this shape when worn as pendants have more ...";
  bool iffull = false;

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Triangular Gemstones",
              style: TextStyle(
                fontSize: 30.0,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                setState(() {
                  iffull = !iffull;
                });
              },
              child: Column(
                children: <Widget>[
                  Text(
                    (iffull) ? full : half,
                    style: TextStyle(color: Colors.red, fontSize: 15.0),
                    textAlign: TextAlign.justify,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(child: Container()),
                      Text(
                        (iffull) ? "Show less" : "Show more",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "We deal in following triangular gems:",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
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
