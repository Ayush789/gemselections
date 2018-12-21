import 'package:flutter/material.dart';

class ReadMoreInkwell extends StatefulWidget {
  String txt;

  ReadMoreInkwell({this.txt});
  @override
  _ReadMoreInkwellState createState() => _ReadMoreInkwellState();
}

class _ReadMoreInkwellState extends State<ReadMoreInkwell> {
  bool iffull=false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        iffull = !iffull;
      },
      child: Column(
        children: <Widget>[
          Text("A")
        ],
      ),
    );
  }
}
