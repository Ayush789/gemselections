import 'package:flutter/material.dart';
import 'package:gemselections/Pages/handicraft/handicraftScaffold.dart';
import 'package:gemselections/Pages/imageurl.dart';

class HandicraftGiftsPage extends StatefulWidget {
  @override
  _HandicraftGiftsPageState createState() => _HandicraftGiftsPageState();
}

class _HandicraftGiftsPageState extends State<HandicraftGiftsPage> {
  @override
  Widget build(BuildContext context) {
    return HandicraftScaffold(
      body: ListView(
        children: <Widget>[
          Text("Gold Plated Marble Clocks"),
          HandicraftGiftsTile(
            Title:
                "Marbel mobile holder with beautiful watch in it (Code MMW01)",
            Imgurl: imgurl,
            text: "txt",
            Price: "1250",
          ),
          HandicraftGiftsTile(
            Title:
                "Marbel mobile holder with beautiful watch in it (Code MMW01)",
            Imgurl: imgurl,
            text: "txt",
            Price: "1250",
          ),
          HandicraftGiftsTile(
            Title:
                "Marbel mobile holder with beautiful watch in it (Code MMW01)",
            Imgurl: imgurl,
            text: "txt",
            Price: "1250",
          ),
          HandicraftGiftsTile(
            Title:
                "Marbel mobile holder with beautiful watch in it (Code MMW01)",
            Imgurl: imgurl,
            text: "txt",
            Price: "1250",
          ),
          HandicraftGiftsTile(
            Title:
                "Marbel mobile holder with beautiful watch in it (Code MMW01)",
            Imgurl: imgurl,
            text: "txt",
            Price: "1250",
          ),
          HandicraftGiftsTile(
            Title:
                "Marbel mobile holder with beautiful watch in it (Code MMW01)",
            Imgurl: imgurl,
            text: "txt",
            Price: "1250",
          ),
          HandicraftGiftsTile(
            Title:
                "Marbel mobile holder with beautiful watch in it (Code MMW01)",
            Imgurl: imgurl,
            text: "txt",
            Price: "1250",
          ),
          HandicraftGiftsTile(
            Title:
                "Marbel mobile holder with beautiful watch in it (Code MMW01)",
            Imgurl: imgurl,
            text: "txt",
            Price: "1250",
          ),
          HandicraftGiftsTile(
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

class HandicraftGiftsTile extends StatelessWidget {
  String Title, text, Imgurl, Price;

  HandicraftGiftsTile({
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
