import 'package:flutter/material.dart';
import 'package:gemselections/Pages/mainscaffold.dart';

class CabochonGemsPage extends StatefulWidget {
  @override
  _CabochonGemsPageState createState() => _CabochonGemsPageState();
}

class _CabochonGemsPageState extends State<CabochonGemsPage> {
  int v1 = 1;

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "All Cabochons are available from 5Rt to 41Rt sizes.Prices vary from 550//Rt to 11000//Rt as per the quality of the Gemstones",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                border: Border.all(width: 2.0),
              ),
              child: Form(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton(
                    isExpanded: true,
                    isDense: true,
                    items: [
                      DropdownMenuItem<int>(
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Ruby Cabochon",
                              textAlign: TextAlign.center,
                            ),
                          ],
                          mainAxisSize: MainAxisSize.max,
                        ),
                        value: 1,
                      ),
                      DropdownMenuItem<int>(
                        child: Text("Emerald Cabochon"),
                        value: 2,
                      ),
                      DropdownMenuItem<int>(
                        child: Text("Blue Sapphire Cabochon"),
                        value: 3,
                      ),
                    ],
                    value: v1,
                    onChanged: (x) {
                      setState(() {
                        v1 = x;
                      });
                    },
                  ),
                ),
              ),
            ),
          ),
          bottomData(v1),
        ],
      ),
    );
  }
}

Widget bottomData(int x) {
  if (x == 1) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          children: <Widget>[
            Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fruby-cabochon.jpg?alt=media",
              height: 150.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "Ruby Cabochons are available from 5Rt to 41Rt sizes.Prices vary from 550//Rt to 11000//Rt as per the quality of the Gemstones"),
            ),
            Image.network(
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fredcabo.jpeg?alt=media"),
          ],
        ),
      ),
    );
  }
  if (x == 2) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          children: <Widget>[
            Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Femerald-cabochon.jpg?alt=media",
              height: 150.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "Emerald Cabochons are available from 5Rt to 41Rt sizes.Prices vary from 550//Rt to 11000//Rt as per the quality of the Gemstones"),
            ),
            Image.network(
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fgreencab.jpeg?alt=media"),
          ],
        ),
      ),
    );
  }
  if (x == 3) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          children: <Widget>[
            Image.network(
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fblue-sapphire-cabochon.jpg?alt=media",height: 150.0,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 6.0,bottom: 12.0),
              child: Text(
                  "Sapphire Cabochons are available from 5Rt to 41Rt sizes.Prices vary from 550//Rt to 11000//Rt as per the quality of the Gemstones",textAlign: TextAlign.justify,),
            ),
            Image.network(
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fbluecab.jpeg?alt=media"),
          ],
        ),
      ),
    );
  }
  return Container();
}
