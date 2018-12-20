import 'package:flutter/material.dart';
import 'package:gemselections/Pages/diamonds.dart';
import 'package:gemselections/Pages/mainscaffold.dart';
import 'package:gemselections/Pages/preciousGemPages/gomed.dart';
import 'package:gemselections/Pages/preciousGemPages/gulabiPukhraj.dart';
import 'package:gemselections/Pages/preciousGemPages/haraPukhraj.dart';
import 'package:gemselections/Pages/preciousGemPages/lehsunia.dart';
import 'package:gemselections/Pages/preciousGemPages/manik.dart';
import 'package:gemselections/Pages/preciousGemPages/moonga.dart';
import 'package:gemselections/Pages/preciousGemPages/moti.dart';
import 'package:gemselections/Pages/preciousGemPages/neelam.dart';
import 'package:gemselections/Pages/preciousGemPages/panna.dart';
import 'package:gemselections/Pages/preciousGemPages/pitambriNeelam.dart';
import 'package:gemselections/Pages/preciousGemPages/pukhraj.dart';
import 'package:gemselections/Pages/preciousGemPages/purpleSapphire.dart';
import 'package:gemselections/Pages/preciousGemPages/safedPukhraj.dart';

class GemstonesPage extends StatefulWidget {
  @override
  _GemstonesPageState createState() => _GemstonesPageState();
}

List<GemButton> gemButtons = [
  GemButton(
    Imgurl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media&token=2393c15d-8fca-4a9c-be1d-318aa8c5a71a",
    Title: "Puple Sapphire",
    SubTitle: "Yellow Sapphire",
    Link: PurpleSapphirePage(),
  ),
  GemButton(
    Imgurl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media&token=2393c15d-8fca-4a9c-be1d-318aa8c5a71a",
    Title: "Panna",
    SubTitle: "Yellow Sapphire",
    Link: PannaPage(),
  ),
  GemButton(
    Imgurl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media&token=2393c15d-8fca-4a9c-be1d-318aa8c5a71a",
    Title: "Pukhraj",
    SubTitle: "Yellow Sapphire",
    Link: PukhrajPage(),
  ),
  GemButton(
    Imgurl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media&token=2393c15d-8fca-4a9c-be1d-318aa8c5a71a",
    Title: "Manik",
    SubTitle: "Yellow Sapphire",
    Link: ManikPage(),
  ),
  GemButton(
    Imgurl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media&token=2393c15d-8fca-4a9c-be1d-318aa8c5a71a",
    Title: "Neelam",
    SubTitle: "Yellow Sapphire",
    Link: NeelamPage(),
  ),
  GemButton(
    Imgurl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media&token=2393c15d-8fca-4a9c-be1d-318aa8c5a71a",
    Title: "Gomed",
    SubTitle: "Yellow Sapphire",
    Link: GomedPage(),
  ),
  GemButton(
    Imgurl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media&token=2393c15d-8fca-4a9c-be1d-318aa8c5a71a",
    Title: "Gulabi Pukhraj",
    SubTitle: "Yellow Sapphire",
    Link: GulabiPukhrajPage(),
  ),
  GemButton(
    Imgurl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media&token=2393c15d-8fca-4a9c-be1d-318aa8c5a71a",
    Title: "Pitambhari Neelam",
    SubTitle: "Yellow Sapphire",
    Link: PitambiNelaamPage(),
  ),
  GemButton(
    Imgurl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media&token=2393c15d-8fca-4a9c-be1d-318aa8c5a71a",
    Title: "Lehsunia",
    SubTitle: "Yellow Sapphire",
    Link: LehsuniaPage(),
  ),
  GemButton(
    Imgurl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media&token=2393c15d-8fca-4a9c-be1d-318aa8c5a71a",
    Title: "Moti",
    SubTitle: "Yellow Sapphire",
    Link: MotiPage(),
  ),
  GemButton(
    Imgurl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media&token=2393c15d-8fca-4a9c-be1d-318aa8c5a71a",
    Title: "Moonga",
    SubTitle: "Yellow Sapphire",
    Link: MoongaPage(),
  ),
  GemButton(
    Imgurl:
    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media&token=2393c15d-8fca-4a9c-be1d-318aa8c5a71a",
    Title: "Heera",
    SubTitle: "Yellow Sapphire",
    Link: DiamondPage(),
  ),
  GemButton(
    Imgurl:
    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media&token=2393c15d-8fca-4a9c-be1d-318aa8c5a71a",
    Title: "Safed Pukhraj",
    SubTitle: "Yellow Sapphire",
    Link: SafedPukhrajPage(),
  ),
  GemButton(
    Imgurl:
    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media&token=2393c15d-8fca-4a9c-be1d-318aa8c5a71a",
    Title: "Hara Pukhraj",
    SubTitle: "Yellow Sapphire",
    Link: HaraPukhrajPage(),
  ),
];

class _GemstonesPageState extends State<GemstonesPage> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
        body: Column(
      children: <Widget>[
        Container(
          color: Colors.black,
          height: 100.0,
          width: 200.0,
        ),
        Expanded(
          child: Center(
            child: ListView(
              children: GemButtonsToRows(gemButtons, context),
            ),
          ),
        )
      ],
    ));
  }
}

class GemButton extends StatelessWidget {
  String Imgurl, Title, SubTitle;
  Widget Link;

  GemButton({this.Imgurl, this.SubTitle, this.Title, this.Link});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 150.0,
      child: FlatButton(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              Imgurl,
              height: 100.0,
              width: 150.0,
            ),
            Text(Title),
            Text(SubTitle),
          ],
        ),
        onPressed: () {
          if (Link != null) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Link));
          }
        },
      ),
    );
  }
}

List<Widget> GemButtonsToRows(
    List<GemButton> gembuttons, BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  int numPerRow = (width / 150.0).floor();
  int numTotal = gembuttons.length;
  print(width);
  print(numPerRow);
  print((numTotal / numPerRow).ceil());
  List<Widget> colList = [];
  List<GemButton> curList = [];
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
