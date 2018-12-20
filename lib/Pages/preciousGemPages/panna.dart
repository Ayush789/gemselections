import 'package:flutter/material.dart';

class PannaPage extends StatefulWidget {
  @override
  _PannaPageState createState() => _PannaPageState();
}

class _PannaPageState extends State<PannaPage> {
  int v1, v2;

  void showPrice(int v1, int v2, BuildContext context) {
    Map<int, Map<int, List<int>>> values = {
      1: {
        1: [22, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
        2: [33, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
      },
      2: {
        1: [44, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
        2: [99, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
      }
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
                  Text("Rs ${values[v1][v2][0]}"),
                  Text(""),
                  Text("2.25 ratti Panna Stone Rs ${values[v1][v2][1]}/-"),
                  Text("3.25 ratti Panna Stone Rs ${values[v1][v2][2]}/-"),
                  Text("4.25 ratti Panna Stone Rs ${values[v1][v2][3]}/-"),
                  Text("5.25 ratti Panna Stone Rs ${values[v1][v2][4]}/-"),
                  Text("6.25 ratti Panna Stone Rs ${values[v1][v2][5]}/-"),
                  Text("7.25 ratti Panna Stone Rs ${values[v1][v2][6]}/-"),
                  Text("8.25 ratti Panna Stone Rs ${values[v1][v2][7]}/-"),
                  Text("9.25 ratti Panna Stone Rs ${values[v1][v2][8]}/-"),
                  Text("10.25 ratti Panna Stone Rs ${values[v1][v2][9]}/-"),
                  Text("11.25 ratti Panna Stone Rs ${values[v1][v2][10]}/-"),
                ],
              ),
            ),
          );
        });
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
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media&token=2393c15d-8fca-4a9c-be1d-318aa8c5a71a"),
          Text(
            "Baingani Pukhraj",
            style: TextStyle(color: Colors.purple, fontSize: 20.0),
          ),
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media&token=2393c15d-8fca-4a9c-be1d-318aa8c5a71a"),
          DropdownButton(
            items: [
              DropdownMenuItem<int>(
                child: Text("ABOUT PANNA | EMERALD"),
                value: 1,
              ),
              DropdownMenuItem<int>(
                child: Text("EMRALD CABOCHON"),
                value: 2,
              ),
              DropdownMenuItem<int>(
                child: Text("ZAMBIAN EMERALD"),
                value: 3,
              ),
              DropdownMenuItem<int>(
                child: Text("COLUMBIAN EMERALD"),
                value: 4,
              ),
              DropdownMenuItem<int>(
                child: Text("BRAZILIAN EMERALD"),
                value: 5,
              ),
              DropdownMenuItem<int>(
                child: Text("SWAT EMERALD"),
                value: 6,
              ),
            ],
            onChanged: (int x) {
              setState(() {
                v1 = x;
              });
            },
          ),
          Text("Select Qulaity to know price"),
          Builder(
            builder: (context) => DropdownButton(
                  items: [
                    DropdownMenuItem<int>(
                      child: Text("A Quality"),
                      value: 1,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("B Quality"),
                      value: 2,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("C Quality"),
                      value: 3,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("D Quality"),
                      value: 4,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("E Quality"),
                      value: 5,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("F Quality"),
                      value: 6,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("G Quality"),
                      value: 7,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("H Quality"),
                      value: 8,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("I Quality"),
                      value: 9,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("J Quality"),
                      value: 10,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("K Quality"),
                      value: 11,
                    ),
                  ],
                  onChanged: (int x) {
                    setState(() {
                      v2 = x;
                    });
                    showPrice(v1, v2, context);
                  },
                ),
          ),
          Text("Baingani Pukhraj is rare..."),
        ],
      ),
    );
  }
}
