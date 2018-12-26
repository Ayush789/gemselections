import 'package:flutter/material.dart';

class ReadMoreInkwell extends StatefulWidget {
  String txt;
  int len;

  ReadMoreInkwell({this.txt,this.len=250});

  @override
  _ReadMoreInkwellState createState() => _ReadMoreInkwellState();
}

class _ReadMoreInkwellState extends State<ReadMoreInkwell> {
  bool iffull = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //print("Pressed $iffull");
        setState(() {
          iffull = !iffull;
        });
      },
      child: Column(
        children: <Widget>[
          Text((iffull) ? widget.txt.substring(0, widget.len) : widget.txt),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              (iffull)
                  ? Text(
                      "Read More...",
                      textAlign: TextAlign.end,
                      style: TextStyle(color: Colors.blue),
                    )
                  : Container(),
            ],
          ),
        ],
      ),
    );
  }
}
