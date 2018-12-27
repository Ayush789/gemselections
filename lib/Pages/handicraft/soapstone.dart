import 'package:flutter/material.dart';
import 'package:gemselections/Pages/handicraft/handicraftScaffold.dart';
import 'package:gemselections/Pages/imageurl.dart';

class SoapStonePage extends StatefulWidget {
  @override
  _SoapStonePageState createState() => _SoapStonePageState();
}

class _SoapStonePageState extends State<SoapStonePage> {
  @override
  Widget build(BuildContext context) {
    return HandicraftScaffold(
      body: ListView(
        children: <Widget>[
          SoapStoneTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Size: "9 inch",
          ),
          SoapStoneTile(
            Code: "GPP01",
            text: "Data",
            Weight: "250",
            Size: "9 inch",
          ),
          SoapStoneTile(
            Code: "GPP01",
            text: "Data",
            Weight: "250",
            Size: "9 inch",
          ),
          SoapStoneTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Size: "9 inch",
          ),
          SoapStoneTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Size: "9 inch",
          ),
          SoapStoneTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Size: "9 inch",
          ),
          SoapStoneTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Size: "9 inch",
          ),
          SoapStoneTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Size: "9 inch",
          ),
          SoapStoneTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Size: "9 inch",
          ),
          SoapStoneTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Size: "9 inch",
          ),
          SoapStoneTile(
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

class SoapStoneTile extends StatelessWidget {
  String Code, text, Imgurl, Weight, Size, Price;

  SoapStoneTile({
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
