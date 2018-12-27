import 'package:flutter/material.dart';
import 'package:gemselections/Pages/handicraft/handicraftScaffold.dart';
import 'package:gemselections/Pages/imageurl.dart';

class SpiritualItemsPage extends StatefulWidget {
  @override
  _SpiritualItemsPageState createState() => _SpiritualItemsPageState();
}

class _SpiritualItemsPageState extends State<SpiritualItemsPage> {
  @override
  Widget build(BuildContext context) {
    return HandicraftScaffold(
      body: ListView(
        children: <Widget>[
          Text("Gold Plated Marble Clocks"),
          SpiritualItemsTile(
            Title:
                "Marbel mobile holder with beautiful watch in it (Code MMW01)",
            Imgurl: imgurl,
            text: "txt",
            Price: "1250",
          ),
          Text("Sizes Availible"),
          Card(
            child: Table(
              children: [
                TableRow(children: [
                  Text("Size"),
                  Text("Weight"),
                  Text("Price"),
                ]),
                TableRow(children: [
                  Text("1\""),
                  Text("70 grams"),
                  Text("\u20B9 151.00"),
                ]),
                TableRow(children: [
                  Text("1\""),
                  Text("70 grams"),
                  Text("\u20B9 151.00"),
                ]),
                TableRow(children: [
                  Text("1\""),
                  Text("70 grams"),
                  Text("\u20B9 151.00"),
                ]),
                TableRow(children: [
                  Text("1\""),
                  Text("70 grams"),
                  Text("\u20B9 151.00"),
                ]),
                TableRow(children: [
                  Text("1\""),
                  Text("70 grams"),
                  Text("\u20B9 151.00"),
                ]),
                TableRow(children: [
                  Text("1\""),
                  Text("70 grams"),
                  Text("\u20B9 151.00"),
                ]),
                TableRow(children: [
                  Text("1\""),
                  Text("70 grams"),
                  Text("\u20B9 151.00"),
                ]),
              ],
            ),
          ),
          SpiritualItemsTile(
            Title:
                "Marbel mobile holder with beautiful watch in it (Code MMW01)",
            Imgurl: imgurl,
            text: "txt",
            Price: "1250",
          ),
          SpiritualItemsTile(
            Title:
                "Marbel mobile holder with beautiful watch in it (Code MMW01)",
            Imgurl: imgurl,
            text: "txt",
            Price: "1250",
          ),
          SpiritualItemsTile(
            Title:
                "Marbel mobile holder with beautiful watch in it (Code MMW01)",
            Imgurl: imgurl,
            text: "txt",
            Price: "1250",
          ),
          SpiritualItemsTile(
            Title:
                "Marbel mobile holder with beautiful watch in it (Code MMW01)",
            Imgurl: imgurl,
            text: "txt",
            Price: "1250",
          ),
        ],
      ),
    );
  }
}

class SpiritualItemsTile extends StatelessWidget {
  String Title, text, Imgurl, Price;

  SpiritualItemsTile({
    this.Price,
    this.Title,
    this.Imgurl,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: <Widget>[
            Image.network(Imgurl),
            Text(Title),
            Text(text),
            Text("Rs $Price/-"),
          ],
        ),
      ),
    );
  }
}
