import 'package:flutter/material.dart';

class GomedPage extends StatefulWidget {
  @override
  _GomedPageState createState() => _GomedPageState();
}

class _GomedPageState extends State<GomedPage> {
  int v1;

  void showPrice1(BuildContext context) {
    Map<int, List<int>> values = {
      1: [22, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
      2: [33, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
    };

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              // height: 100.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("Weight : INR"),
                  Text("Rs ${values[v1][0]}"),
                  Text(""),
                  Text("2.25 ratti Gomed Stone Rs ${values[v1][1]}/-"),
                  Text("3.25 ratti Gomed Stone Rs ${values[v1][2]}/-"),
                  Text("4.25 ratti Gomed Stone Rs ${values[v1][3]}/-"),
                  Text("5.25 ratti Gomed Stone Rs ${values[v1][4]}/-"),
                  Text("6.25 ratti Gomed Stone Rs ${values[v1][5]}/-"),
                  Text("7.25 ratti Gomed Stone Rs ${values[v1][6]}/-"),
                  Text("8.25 ratti Gomed Stone Rs ${values[v1][7]}/-"),
                  Text("9.25 ratti Gomed Stone Rs ${values[v1][8]}/-"),
                  Text("10.25 ratti Gomed Stone Rs ${values[v1][9]}/-"),
                  Text("11.25 ratti Gomed Stone Rs ${values[v1][10]}/-"),
                ],
              ),
            ),
          );
        });
  }

  void showPrice2(int v1, BuildContext context) {
    Map<int, List<int>> values = {
      1: [22, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
      2: [33, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
    };

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              // height: 100.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("Weight : INR"),
                  Text("Rs ${values[v1][0]}"),
                  Text(""),
                  Text("2.25 ratti Gomed Stone Rs ${values[v1][1]}/-"),
                  Text("3.25 ratti Gomed Stone Rs ${values[v1][2]}/-"),
                  Text("4.25 ratti Gomed Stone Rs ${values[v1][3]}/-"),
                  Text("5.25 ratti Gomed Stone Rs ${values[v1][4]}/-"),
                  Text("6.25 ratti Gomed Stone Rs ${values[v1][5]}/-"),
                  Text("7.25 ratti Gomed Stone Rs ${values[v1][6]}/-"),
                  Text("8.25 ratti Gomed Stone Rs ${values[v1][7]}/-"),
                  Text("9.25 ratti Gomed Stone Rs ${values[v1][8]}/-"),
                  Text("10.25 ratti Gomed Stone Rs ${values[v1][9]}/-"),
                  Text("11.25 ratti Gomed Stone Rs ${values[v1][10]}/-"),
                ],
              ),
            ),
          );
        });
  }

  Widget bottomData(int x) {
    if (x == 1) {
      return Column(
        children: <Widget>[Text("Text1")],
      );
    }
    if (x == 2) {
      return Column(
        children: <Widget>[
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media"),
          Text("Text2")
        ],
      );
    }
    if (x == 3) {
      return Column(
        children: <Widget>[Text("Text3")],
      );
    }
    if (x == 4) {
      return Column(
        children: <Widget>[Text("Text4")],
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Purple Sapphire"),
      ),
      body: ListView(
        children: <Widget>[
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media"),
          Text(
            "Baingani Gomed",
            style: TextStyle(color: Colors.purple, fontSize: 20.0),
          ),
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media"),
          Text("Select One"),
          DropdownButton(
            items: [
              DropdownMenuItem<int>(
                child: Text("Gomed Info"),
                value: 1,
              ),
              DropdownMenuItem<int>(
                child: Text("Ceylon Info"),
                value: 2,
              ),
              DropdownMenuItem<int>(
                child: Text("Bankock Info"),
                value: 3,
              ),
              DropdownMenuItem<int>(
                child: Text("Treated Gomed"),
                value: 4,
              ),
            ],
            onChanged: (int x) {
              setState(() {
                v1 = x;
              });
            },
          ),
          Text("Select Qulaity to know price"),
          Text("Ceylon Gomed"),
          Builder(
            builder: (context) => RaisedButton(
                  onPressed: () => showPrice1(context),
                  child: Text("Show Price"),
                ),
          ),
          bottomData(v1),
        ],
      ),
    );
  }
}
