import 'package:flutter/material.dart';
import 'package:gemselections/Pages/jwellry.dart';
//import 'package:gemselections/Pages/jwellry.dart';
import 'package:gemselections/Pages/mainscaffold.dart';
import 'package:gemselections/Pages/webView.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:gemselections/Pages/imageurl.dart';

class DiamondPage extends StatefulWidget {
  @override
  _DiamondPageState createState() => _DiamondPageState();
}

class _DiamondPageState extends State<DiamondPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return MainScaffold(
      
      body: ListView(
        children: <Widget>[
           FlatButton(
            onPressed: () {},
            padding: EdgeInsets.all(2.0),
            child: Image.asset(
              "assets/landing/diamonds.jpeg",
              fit: BoxFit.fitWidth,
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10.0),),
          FlatButton(
            onPressed: () {
              LaunchYoutube("qUomm4C7b-M");
            },
            child: Stack(
              children: <Widget>[
                Image.network(
                  "https://i.ytimg.com/vi/qUomm4C7b-M/hqdefault.jpg?sqp=-oaymwEZCNACELwBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLBoCQBJBnaNNE73E4k5VQs8Att6Hw",
                  width: w,
                  height: w * (1 / 2),
                  //color: Colors.black,
                ),
                Container(
                  height: w / 2,
                  width: w,
                  child: Center(
                      child: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 100.0,
                  )),
                ),
              ],
            ),
          ),
         
          DescriptionTextWidget(
            text:
                "Diamond is a solid form of carbon with a diamond cubic crystal structure. At room temperature and pressure it is metastable and graphite is the stable form, but diamond almost never converts to graphite. Diamond is renowned for its superlative physical qualities, most of which originate from the strong covalent bonding between its atoms. In particular, it has the highest hardness and thermal conductivity of any bulk material. Those properties determine the major industrial applications of diamond in cutting and polishing tools and the scientific applications in diamond knives and diamond anvil cells. Because of its extremely rigid lattice, diamond can be contaminated by very few types of impurities, such as boron and nitrogen. Small amounts of defects or impurities (about one per million of lattice atoms) color diamond blue (boron), yellow (nitrogen), brown (lattice defects), green (radiation exposure), purple, pink, orange or red. Diamond also has relatively high optical dispersion (ability to disperse light of different colors). Most natural diamonds have ages between 1 billion and 3.5 billion years. Most were formed at depths of 150 to 250 kilometers (93 to 155 mi) in the Earth's mantle, although a few have come from as deep as 800 kilometers (500 mi). Under high pressure and temperature, carbon-containing fluids dissolved minerals and replaced them with diamonds. Much more recently (tens to hundreds of million years ago), they were carried to the surface in volcanic eruptions and deposited in igneous rocks known as kimberlites and lamproites.Synthetic diamonds can be produced in a high pressure, high temperature method (HPHT) which approximately simulates the conditions in the Earth's mantle. An alternative, and completely different growth technique is chemical vapor deposition (CVD). Diamond simulants are non-diamond materials that resemble real diamonds in appearance and many properties. These include cubic zirconia and silicon carbide. Special gemological techniques have been developed to distinguish natural diamonds, synthetic diamonds, and diamond simulants.",
            splitLength: 150,
          ),
          DualBoxes(w, context),
        ],
      ),
    );
  }
}

class DescriptionTextWidget extends StatefulWidget {
  final String text;
  int splitLength;
  TextStyle textStyle;

  DescriptionTextWidget(
      {@required this.text, this.splitLength = 200, this.textStyle});

  @override
  _DescriptionTextWidgetState createState() =>
      new _DescriptionTextWidgetState();
}

class _DescriptionTextWidgetState extends State<DescriptionTextWidget> {
  String firstHalf;
  String secondHalf;

  bool flag = true;

  @override
  void initState() {
    super.initState();

    if (widget.text.length > widget.splitLength) {
      firstHalf = widget.text.substring(0, widget.splitLength);
      secondHalf =
          widget.text.substring(widget.splitLength, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: secondHalf.isEmpty
          ? new Text(
              firstHalf,
              style: widget.textStyle,
            )
          : new Column(
              children: <Widget>[
                new Text(
                  flag ? (firstHalf + "...") : (firstHalf + secondHalf),
                  style: widget.textStyle,
                ),
                new InkWell(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      new Text(
                        flag ? "show more" : "show less",
                        style: new TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      flag = !flag;
                    });
                  },
                ),
              ],
            ),
    );
  }
}

void LaunchYoutube(String id) async {
  if (await canLaunch("vnd.youtube://" + id)) {
    await launch("vnd.youtube://" + id);
  } else {
    print("Cannot launch " + id);
  }
}

Widget DualBoxes(double w, BuildContext context) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Flexible(
          flex: 1,
          child: Container(
            width: w / 2 - 20,
            child: RaisedButton(
              //padding: EdgeInsets.all(10.0),
              onPressed: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>JwelleryPage()));
              },
              color: Colors.white,
              child: GestureDetector(
                onTap: ()=>Navigator.push(context,
                MaterialPageRoute(builder: (context) => JwelleryPage())),
                              child: ConstrainedBox(
                  constraints:
                      BoxConstraints(minHeight: w / 2, maxWidth: w / 2 - 20),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Image.network(
                          "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FSolitaire-Rings.jpg?alt=media&token=9f156095-83a3-47e5-a676-13869d2a640d",
                          height: w / 2 - 25,
                        ),
                        Container(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              "Solitre Ring",
                              style: TextStyle(fontSize: 15.0),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            width: w / 2 - 20,
            child: RaisedButton(
              //padding: EdgeInsets.all(10.0),
              onPressed: () {},
              color: Colors.white,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => WebViewGem(url: "https://www.gemselections.in/ruby-identification.htm")),
  );
                },
                              child: ConstrainedBox(
                  constraints:
                      BoxConstraints(minHeight: w / 2, maxWidth: w / 2 - 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.network(
                        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FLoose-Solitair.jpg?alt=media&token=4da2088b-8c01-4fb4-b451-3e34ac9fb577",
                        height: w / 2 - 25,
                      ),
                      Container(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            "Loose Solitre",
                            style: TextStyle(fontSize: 15.0),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    ),
  );
}
