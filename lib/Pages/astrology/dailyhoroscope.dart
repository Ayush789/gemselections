import 'package:flutter/material.dart';
import 'package:gemselections/Pages/mainscaffold.dart';

class DailyHoroscopes extends StatefulWidget {
  @override
  _DailyHoroscopesState createState() => _DailyHoroscopesState();
}

class _DailyHoroscopesState extends State<DailyHoroscopes> {
  int v1 = 1, v2 = 1;

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.blue,
            child: Text("Daily Horoscope"),
          ),
          Form(
            child: Column(
              children: <Widget>[
                DropdownButtonFormField(
                  items: [
                    DropdownMenuItem<int>(
                      child: Text("Aries (Mar 21 - Apr 19)"),
                      value: 1,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("Aries (Mar 21 - Apr 19)"),
                      value: 2,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("Aries (Mar 21 - Apr 19)"),
                      value: 3,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("Aries (Mar 21 - Apr 19)"),
                      value: 4,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("Aries (Mar 21 - Apr 19)"),
                      value: 5,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("Aries (Mar 21 - Apr 19)"),
                      value: 6,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("Aries (Mar 21 - Apr 19)"),
                      value: 7,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("Aries (Mar 21 - Apr 19)"),
                      value: 8,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("Aries (Mar 21 - Apr 19)"),
                      value: 9,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("Aries (Mar 21 - Apr 19)"),
                      value: 10,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("Aries (Mar 21 - Apr 19)"),
                      value: 11,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("Aries (Mar 21 - Apr 19)"),
                      value: 12,
                    ),
                  ],
                  value: v1,
                  onChanged: (x) {
                    setState(() {
                      v1 = x;
                    });
                  },
                ),
                DropdownButtonFormField(
                  items: [
                    DropdownMenuItem<int>(
                      child: Text("Today"),
                      value: 1,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("Tomorrow"),
                      value: 2,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("Yesterday"),
                      value: 3,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("Weekly"),
                      value: 4,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("Monthly"),
                      value: 5,
                    ),
                  ],
                  value: v2,
                  onChanged: (x) {
                    setState(() {
                      v2 = x;
                    });
                  },
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text("Get Horoscope"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
