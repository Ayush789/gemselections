import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';
import 'package:gemselections/Pages/mainscaffold.dart';

class SemiPreciousGemstonesPage extends StatefulWidget {
  @override
  _SemiPreciousGemstonesPageState createState() =>
      _SemiPreciousGemstonesPageState();
}

class _SemiPreciousGemstonesPageState extends State<SemiPreciousGemstonesPage> {
  int v1 = 1;

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: ListView(
        children: <Widget>[
          Text("We have"),
          Text("Selet a Gemstone"),
          DropdownButton(
            items: [
              DropdownMenuItem<int>(
                child: Text("Name1"),
                value: 1,
              ),
              DropdownMenuItem<int>(
                child: Text("Name2"),
                value: 2,
              ),
              DropdownMenuItem<int>(
                child: Text("Name3"),
                value: 3,
              ),
              DropdownMenuItem<int>(
                child: Text("Name4"),
                value: 4,
              ),
              DropdownMenuItem<int>(
                child: Text("Name5"),
                value: 5,
              ),
              DropdownMenuItem<int>(
                child: Text("Name6"),
                value: 6,
              ),
              DropdownMenuItem<int>(
                child: Text("Name7"),
                value: 7,
              ),
              DropdownMenuItem<int>(
                child: Text("Name8"),
                value: 8,
              ),
              DropdownMenuItem<int>(
                child: Text("Name9"),
                value: 9,
              ),
              DropdownMenuItem<int>(
                child: Text("Name10"),
                value: 10,
              ),
              DropdownMenuItem<int>(
                child: Text("Name11"),
                value: 11,
              ),
              DropdownMenuItem<int>(
                child: Text("Name12"),
                value: 12,
              ),
              DropdownMenuItem<int>(
                child: Text("Name13"),
                value: 13,
              ),
              DropdownMenuItem<int>(
                child: Text("Name14"),
                value: 14,
              ),
              DropdownMenuItem<int>(
                child: Text("Name15"),
                value: 15,
              ),
              DropdownMenuItem<int>(
                child: Text("Name16"),
                value: 16,
              ),
              DropdownMenuItem<int>(
                child: Text("Name17"),
                value: 17,
              ),
              DropdownMenuItem<int>(
                child: Text("Name18"),
                value: 18,
              ),
              DropdownMenuItem<int>(
                child: Text("Name19"),
                value: 19,
              ),
              DropdownMenuItem<int>(
                child: Text("Name20"),
                value: 20,
              ),
              DropdownMenuItem<int>(
                child: Text("Name21"),
                value: 21,
              ),
              DropdownMenuItem<int>(
                child: Text("Name22"),
                value: 22,
              ),
              DropdownMenuItem<int>(
                child: Text("Name23"),
                value: 23,
              ),
              DropdownMenuItem<int>(
                child: Text("Name24"),
                value: 24,
              ),
              DropdownMenuItem<int>(
                child: Text("Name25"),
                value: 25,
              ),
              DropdownMenuItem<int>(
                child: Text("Name26"),
                value: 26,
              ),
              DropdownMenuItem<int>(
                child: Text("Name27"),
                value: 27,
              ),
              DropdownMenuItem<int>(
                child: Text("Name28"),
                value: 28,
              ),
              DropdownMenuItem<int>(
                child: Text("Name29"),
                value: 29,
              ),
              DropdownMenuItem<int>(
                child: Text("Name30"),
                value: 30,
              ),
              DropdownMenuItem<int>(
                child: Text("Name31"),
                value: 31,
              ),
              DropdownMenuItem<int>(
                child: Text("Name32"),
                value: 32,
              ),
              DropdownMenuItem<int>(
                child: Text("Name33"),
                value: 33,
              ),
              DropdownMenuItem<int>(
                child: Text("Name34"),
                value: 34,
              ),
              DropdownMenuItem<int>(
                child: Text("Name35"),
                value: 35,
              ),
              DropdownMenuItem<int>(
                child: Text("Name36"),
                value: 36,
              ),
              DropdownMenuItem<int>(
                child: Text("Name37"),
                value: 37,
              ),
              DropdownMenuItem<int>(
                child: Text("Name38"),
                value: 38,
              ),
              DropdownMenuItem<int>(
                child: Text("Name39"),
                value: 39,
              ),
              DropdownMenuItem<int>(
                child: Text("Name40"),
                value: 40,
              ),
              DropdownMenuItem<int>(
                child: Text("Name41"),
                value: 41,
              ),
              DropdownMenuItem<int>(
                child: Text("Name42"),
                value: 42,
              ),
              DropdownMenuItem<int>(
                child: Text("Name43"),
                value: 43,
              ),
              DropdownMenuItem<int>(
                child: Text("Name44"),
                value: 44,
              ),
              DropdownMenuItem<int>(
                child: Text("Name45"),
                value: 45,
              ),
              DropdownMenuItem<int>(
                child: Text("Name46"),
                value: 46,
              ),
              DropdownMenuItem<int>(
                child: Text("Name47"),
                value: 47,
              ),
              DropdownMenuItem<int>(
                child: Text("Name48"),
                value: 48,
              ),
              DropdownMenuItem<int>(
                child: Text("Name49"),
                value: 49,
              ),
              DropdownMenuItem<int>(
                child: Text("Name50"),
                value: 50,
              ),
              DropdownMenuItem<int>(
                child: Text("Name51"),
                value: 51,
              ),
              DropdownMenuItem<int>(
                child: Text("Name52"),
                value: 52,
              ),
              DropdownMenuItem<int>(
                child: Text("Name53"),
                value: 53,
              ),
            ],
            onChanged: (x) {
              setState(() {
                v1 = x;
              });
            },
            value: v1,
          ),
        ],
      ),
    );
  }

  Widget showbottom(int x) {
    switch (x) {
      case 1:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Amythsy (Kerela)"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 2:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Aquamarine (Beruj)"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 3:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 4:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 5:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 6:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 7:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 8:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 9:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 10:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 11:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 12:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 13:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 14:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 15:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 16:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );
      case 17:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 18:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 19:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 20:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 21:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 22:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 23:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 24:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 25:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 26:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 27:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 28:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 29:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 30:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 31:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 32:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 33:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 34:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 35:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 36:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 37:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 38:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 39:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 40:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 41:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 42:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 43:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 44:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 45:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 46:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 47:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 48:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 49:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 50:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 51:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 52:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 53:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      default:
        return Container();
    }

    return Container();
  }
}
