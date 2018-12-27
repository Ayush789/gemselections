import 'package:flutter/material.dart';
import 'package:gemselections/Pages/handicraft/handicraftScaffold.dart';
import 'package:gemselections/Pages/imageurl.dart';

class GoldPlatedPotsPage extends StatefulWidget {
  @override
  _GoldPlatedPotsPageState createState() => _GoldPlatedPotsPageState();
}

class _GoldPlatedPotsPageState extends State<GoldPlatedPotsPage> {
  @override
  Widget build(BuildContext context) {
    return HandicraftScaffold(
      body: ListView(
        children: <Widget>[
          Image.network(imgurl),
          RaisedButton(
            onPressed: () {},
            child: Text("Checkout our prices"),
          ),
          Image.network(imgurl),
          GoldPlatedPotTile(
            Title: "HGL 01",
            Imgurl: imgurl,
            text: "Text",
            Weight: "450",
            Height: "5",
            Breadth: "2",
            Price: "750.00",
          ),
          GoldPlatedPotTile(
            Title: "HGL 01",
            Imgurl: imgurl,
            text: "Text",
            Weight: "450",
            Height: "5",
            Breadth: "2",
            Price: "750.00",
          ),
          GoldPlatedPotTile(
            Title: "HGL 01",
            Imgurl: imgurl,
            text: "Text",
            Weight: "450",
            Height: "5",
            Breadth: "2",
            Price: "750.00",
          ),
          GoldPlatedPotTile(
            Title: "HGL 01",
            text: "Text",
            Weight: "450",
            Height: "5",
            Breadth: "2",
            Price: "750.00",
            Imgurl: imgurl,
          ),
          GoldPlatedPotTile(
            Title: "HGL 01",
            Imgurl: imgurl,
            text: "Text",
            Weight: "450",
            Height: "5",
            Breadth: "2",
            Price: "750.00",
          ),
          GoldPlatedPotTile(
            Title: "HGL 01",
            Imgurl: imgurl,
            text: "Text",
            Weight: "450",
            Height: "5",
            Breadth: "2",
            Price: "750.00",
          ),
          GoldPlatedPotTile(
            Title: "HGL 01",
            text: "Text",
            Imgurl: imgurl,
            Weight: "450",
            Height: "5",
            Breadth: "2",
            Price: "750.00",
          ),
          GoldPlatedPotTile(
            Title: "HGL 01",
            text: "Text",
            Imgurl: imgurl,
            Weight: "450",
            Height: "5",
            Breadth: "2",
            Price: "750.00",
          ),
          GoldPlatedPotTile(
            Title: "HGL 01",
            text: "Text",
            Weight: "450",
            Height: "5",
            Imgurl: imgurl,
            Breadth: "2",
            Price: "750.00",
          ),
        ],
      ),
    );
  }
}

class GoldPlatedPotTile extends StatelessWidget {
  String Title, text, Imgurl, Weight, Height, Breadth, Price;

  GoldPlatedPotTile({
    this.Price,
    this.Breadth,
    this.Height,
    this.Weight,
    this.Title,
    this.text,
    this.Imgurl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: <Widget>[
            Image.network(Imgurl),
            Text("Code : $Title"),
            Text(text),
            Text("Weight : $Weight grams"),
            Text("Height : $Height"),
            Text("Breadth : $Breadth"),
            Text("Price : Rs $Price/-"),
          ],
        ),
      ),
    );
  }
}
