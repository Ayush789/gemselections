import 'package:cached_network_image/cached_network_image.dart';
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
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FPurple-sapphire.jpg?alt=media",
    Title: "Baingani Pukhraj",
    SubTitle: "Purple Saphire",
    Link: PurpleSapphirePage(),
  ),
  GemButton(
    Imgurl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FEmerald.jpg?alt=media",
    Title: "Panna",
    SubTitle: "Emerald",
    Link: PannaPage(),
  ),
  GemButton(
    Imgurl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fpeela-pukhraj.jpg?alt=media",
    Title: "Pukhraj",
    SubTitle: "Yellow Sapphire",
    Link: PukhrajPage(),
  ),
  GemButton(
    Imgurl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FIndian-Ruby.jpg?alt=media",
    Title: "Manik",
    SubTitle: "Ruby",
    Link: ManikPage(),
  ),
  GemButton(
    Imgurl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FBlue-Sapphire.jpg?alt=media",
    Title: "Neelam",
    SubTitle: "Blue Sapphire",
    Link: NeelamPage(),
  ),
  GemButton(
    Imgurl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FGomedh.jpg?alt=media",
    Title: "Gomed",
    SubTitle: "Hessonite",
    Link: GomedPage(),
  ),
  GemButton(
    Imgurl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fpink-sapphire.jpg?alt=media",
    Title: "Gulabi Pukhraj",
    SubTitle: "Pink Sapphire",
    Link: GulabiPukhrajPage(),
  ),
  GemButton(
    Imgurl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FPitambari-neelam.jpg?alt=media",
    Title: "Pitambhari Neelam",
    SubTitle: "Yellow Blue Sapphire",
    Link: PitambiNelaamPage(),
  ),
  GemButton(
    Imgurl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FCats-Eye.jpg?alt=media",
    Title: "Lehsunia",
    SubTitle: "Cat's Eye",
    Link: LehsuniaPage(),
  ),
  GemButton(
    Imgurl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FPearl.jpg?alt=media",
    Title: "Moti",
    SubTitle: "Pearl",
    Link: MotiPage(),
  ),
  GemButton(
    Imgurl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FRed-Coral.jpg?alt=media",
    Title: "Moonga",
    SubTitle: "Coral",
    Link: MoongaPage(),
  ),
  GemButton(
    Imgurl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fdiamond.jpg?alt=media",
    Title: "Heera",
    SubTitle: "Diamond",
    Link: DiamondPage(),
  ),
  GemButton(
    Imgurl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FWhite-Sapphire.jpg?alt=media",
    Title: "Safed Pukhraj",
    SubTitle: "White Sapphire",
    Link: SafedPukhrajPage(),
  ),
  GemButton(
    Imgurl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fgreen-sapphire.jpg?alt=media",
    Title: "Hara Pukhraj",
    SubTitle: "Green Sapphire",
    Link: HaraPukhrajPage(),
  ),
];

class _GemstonesPageState extends State<GemstonesPage> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
        body: ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 10.0),
          child: Image.asset("assets/gemstones/gemstonesbanner.png"),
        ),
        Center(
          child: Column(
            children: GemButtonsToRows(gemButtons, context),
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
    return Card(
      elevation: 2.0,
      //color: Color(0xFFD3D3D3),
      child: Container(
        height: 180.0,
        width: 170.0,
        child: FlatButton(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Image.network(
              //   Imgurl,
              //   //height: 100.0,
              //   width: 150.0,
              // ),
              Container(
                width: 150.0,
                child: CachedNetworkImage(
                    imageUrl: Imgurl,
                    placeholder: (context, url) =>Align(alignment: Alignment.center,child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) =>Icon(Icons.error),
                  ),
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
