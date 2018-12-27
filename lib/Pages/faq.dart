import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';
import 'package:gemselections/Pages/mainscaffold.dart';

class FAQPage extends StatefulWidget {
  @override
  _FAQPageState createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: ListView(
        children: <Widget>[
          FAQTile(
            Question: "Pricing of Gemstones",
            Imgurl: imgurl,
            Answer:
                "In this video Mr. Pankaj Khanna, founder of Gem Selections discusses how Gemstones and Diamonds are priced.",
          ),
          FAQTile(
            Question: "Pricing of Gemstones",
            Imgurl: imgurl,
            Answer:
                "In this video Mr. Pankaj Khanna, founder of Gem Selections discusses how Gemstones and Diamonds are priced.",
          ),
          FAQTile(
            Question: "Pricing of Gemstones",
            Imgurl: imgurl,
            Answer:
                "In this video Mr. Pankaj Khanna, founder of Gem Selections discusses how Gemstones and Diamonds are priced.",
          ),
          FAQTile(
            Question: "Pricing of Gemstones",
            Imgurl: imgurl,
            Answer:
                "In this video Mr. Pankaj Khanna, founder of Gem Selections discusses how Gemstones and Diamonds are priced.",
          ),
          FAQTile(
            Question: "Pricing of Gemstones",
            Imgurl: imgurl,
            Answer:
                "In this video Mr. Pankaj Khanna, founder of Gem Selections discusses how Gemstones and Diamonds are priced.",
          ),
          FAQTile(
            Question: "Pricing of Gemstones",
            Imgurl: imgurl,
            Answer:
                "In this video Mr. Pankaj Khanna, founder of Gem Selections discusses how Gemstones and Diamonds are priced.",
          ),
          FAQTile(
            Question: "Pricing of Gemstones",
            Imgurl: imgurl,
            Answer:
                "In this video Mr. Pankaj Khanna, founder of Gem Selections discusses how Gemstones and Diamonds are priced.",
          ),
          FAQTile(
            Question: "Pricing of Gemstones",
            Imgurl: imgurl,
            Answer:
                "In this video Mr. Pankaj Khanna, founder of Gem Selections discusses how Gemstones and Diamonds are priced.",
          ),
        ],
      ),
    );
  }
}

class FAQTile extends StatefulWidget {
  String Question, Imgurl, Answer;

  FAQTile({
    this.Answer,
    this.Imgurl,
    this.Question,
  });

  @override
  FAQTileState createState() {
    return new FAQTileState();
  }
}

class FAQTileState extends State<FAQTile> {
  bool IsVisiable = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        child: (IsVisiable)
            ? Column(
                children: <Widget>[
                  Text(widget.Question),
                  Image.network(widget.Imgurl),
                  Text(widget.Answer),
                ],
              )
            : Container(
                child: Text(widget.Question),
              ),
        onTap: () {
          setState(() {
            IsVisiable = !IsVisiable;
          });
        },
      ),
    );
  }
}
