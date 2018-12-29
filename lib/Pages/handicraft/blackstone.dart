import 'package:flutter/material.dart';
import 'package:gemselections/Pages/handicraft/handicraftScaffold.dart';
import 'package:gemselections/Pages/imageurl.dart';

class BlackStonePage extends StatefulWidget {
  @override
  _BlackStonePageState createState() => _BlackStonePageState();
}

class _BlackStonePageState extends State<BlackStonePage> {
  @override
  Widget build(BuildContext context) {
    return HandicraftScaffold(
      body: ListView(
        children: <Widget>[
          BlackStoneTile(
            Code: "GPP01",
            text: "White marble tile with a beautiful hand painting of musical instrument.  The Colours used are permanent and include 24 k gold.  It can be hanged from a wall or else can be placed on a table using a stand.",
            Imgurl: imgurl,
            Weight: "250",
            Size: "9 inch",
          ),
          BlackStoneTile(
            Code: "GPP02",
            text: "White marble tile with a beautiful hand painting of musical instrument.  The Colours used are permanent and include 24 k gold.  It can be hanged from a wall or else can be placed on a table using a stand.",
            Weight: "250",
            Size: "9 inch",
          ),
          BlackStoneTile(
            Code: "GPP03",
            text: "White marble tile with a beautiful hand painting of musical instrument.  The Colours used are permanent and include 24 k gold.  It can be hanged from a wall or else can be placed on a table using a stand.",
            Weight: "250",
            Size: "9 inch",
          ),
          BlackStoneTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Size: "9 inch",
          ),
          BlackStoneTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Size: "9 inch",
          ),
          BlackStoneTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Size: "9 inch",
          ),
          BlackStoneTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Size: "9 inch",
          ),
          BlackStoneTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Size: "9 inch",
          ),
          BlackStoneTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Size: "9 inch",
          ),
          BlackStoneTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Size: "9 inch",
          ),
          BlackStoneTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Size: "9 inch",
          ),
        ],
      ),
    );
  }
}

class BlackStoneTile extends StatelessWidget {
  String Code, text, Imgurl, Weight, Size, Price;

  BlackStoneTile({
    this.Price,
    this.Size,
    this.Weight,
    this.Imgurl = "",
    this.text,
    this.Code,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: <Widget>[
            (Imgurl != "") ? Image.network(Imgurl) : Container(),
            Text("Code: $Code"),
            Text(text),
            Text("Weight : $Weight grams"),
            Text("Size : $Size"),
            Text("Price : $Price"),
          ],
        ),
      ),
    );
  }
}
