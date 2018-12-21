import 'package:flutter/material.dart';
import 'package:gemselections/Pages/mainscaffold.dart';

class BirthStonesPage extends StatefulWidget {
  @override
  _BirthStonesPageState createState() => _BirthStonesPageState();
}

class _BirthStonesPageState extends State<BirthStonesPage> {
  void showContent(int x) {
    String txt = "";
    switch (x) {
      case 1:
        txt = "ABC";
        break;
      case 2:
        txt = "ABC";
        break;
      case 3:
        txt = "ABC";
        break;
      case 4:
        txt = "ABC";
        break;
      case 5:
        txt = "ABC";
        break;
      case 6:
        txt = "ABC";
        break;
      case 7:
        txt = "ABC";
        break;
      case 8:
        txt = "ABC";
        break;
      case 9:
        txt = "ABC";
        break;
      case 10:
        txt = "ABC";
        break;
      case 11:
        txt = "ABC";
        break;
      case 12:
        txt = "ABC";
        break;
      default:
        txt = "";
        break;
    }

    if (txt != "") {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(txt),
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    int v1 = 1;
    return MainScaffold(
      body: ListView(
        children: <Widget>[
          Text("Abc"),
          Text("Check your birthstone:"),
          DropdownButton(
            items: [
              DropdownMenuItem<int>(
                value: 1,
                child: Text("Aries"),
              ),
              DropdownMenuItem<int>(
                value: 2,
                child: Text("Taurus"),
              ),
              DropdownMenuItem<int>(
                value: 3,
                child: Text("Genimi"),
              ),
              DropdownMenuItem<int>(
                value: 4,
                child: Text("Cancer"),
              ),
              DropdownMenuItem<int>(
                value: 5,
                child: Text("Leo"),
              ),
              DropdownMenuItem<int>(
                value: 6,
                child: Text("Virgo"),
              ),
              DropdownMenuItem<int>(
                value: 7,
                child: Text("Libra"),
              ),
              DropdownMenuItem<int>(
                value: 8,
                child: Text("Scorpio"),
              ),
              DropdownMenuItem<int>(
                value: 9,
                child: Text("Saggitarius"),
              ),
              DropdownMenuItem<int>(
                value: 10,
                child: Text("Capricon"),
              ),
              DropdownMenuItem<int>(
                value: 11,
                child: Text("Aquaris"),
              ),
              DropdownMenuItem<int>(
                value: 12,
                child: Text("Pisces"),
              ),
            ],
            onChanged: (int x) {
              showContent(x);
            },
            value: v1,
          ),
          Text("Abc"),
        ],
      ),
    );
  }
}
