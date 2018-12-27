import 'package:flutter/material.dart';
import 'package:gemselections/Pages/handicraft/handicraftScaffold.dart';
import 'package:gemselections/Pages/imageurl.dart';

class GoldPlatedTiles extends StatefulWidget {
  @override
  _GoldPlatedTilesState createState() => _GoldPlatedTilesState();
}

class _GoldPlatedTilesState extends State<GoldPlatedTiles> {
  @override
  Widget build(BuildContext context) {
    return HandicraftScaffold(
      body: ListView(
        children: <Widget>[
          Text("GOLD PAINTED TILES AND PLATES"),
          GoldPlatedTilesTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Height: "7",
            Breadth: "600.00",
          ),
          GoldPlatedTilesTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Height: "7",
            Breadth: "600.00",
          ),
          GoldPlatedTilesTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Height: "7",
            Breadth: "600.00",
          ),
          GoldPlatedTilesTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Height: "7",
            Breadth: "600.00",
          ),
          GoldPlatedTilesTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Height: "7",
            Breadth: "600.00",
          ),
          GoldPlatedTilesTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Height: "7",
            Breadth: "600.00",
          ),
          GoldPlatedTilesTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Height: "7",
            Breadth: "600.00",
          ),
          GoldPlatedTilesTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Height: "7",
            Breadth: "600.00",
          ),
          GoldPlatedTilesTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Height: "7",
            Breadth: "600.00",
          ),
          GoldPlatedTilesTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Height: "7",
            Breadth: "600.00",
          ),
        ],
      ),
    );
  }
}

class GoldPlatedTilesTile extends StatelessWidget {
  String Code, text, Imgurl, Weight, Height, Breadth, Price;

  GoldPlatedTilesTile({
    this.Price,
    this.Breadth,
    this.Height,
    this.Weight,
    this.Imgurl,
    this.text,
    this.Code,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: <Widget>[
            Image.network(Imgurl),
            Text("Code: $Code"),
            Text(text),
            Text("Weight : $Weight grams"),
            Text("Height : $Height"),
            Text("Breadth :$Breadth"),
            Text("Price : $Price"),
          ],
        ),
      ),
    );
  }
}
