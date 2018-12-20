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
          Text("All Cabochons"),
          DropdownButton(
            items: [
              DropdownMenuItem<int>(
                child: Text("Ruby Cabochon"),
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
          bottomData(v1),
        ],
      ),
    );
  }
}

Widget bottomData(int x) {
  if (x == 1) {
    return Column(
      children: <Widget>[
        Image.network(
            "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media"),
        Text("adfdadfdf"),
        Image.network(
            "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media"),
      ],
    );
  }
  if (x == 2) {
    return Column(
      children: <Widget>[
        Image.network(
            "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media"),
        Text("adfdadfdf"),
        Image.network(
            "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media"),
      ],
    );
  }
  if (x == 3) {
    return Column(
      children: <Widget>[
        Image.network(
            "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media"),
        Text("adfdadfdf"),
        Image.network(
            "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media"),
      ],
    );
  }
  return Container();
}
