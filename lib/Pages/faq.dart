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
            Question: "Testing of Gemstones",
            Imgurl: imgurl,
            Answer:
                "In this video Mr. Pankaj Khanna, founder of Gem Selections clarifies all the misconceptions in the minds of the people as how are gemstones tested.",
          ),
          FAQTile(
            Question: "Specific Gravity of Gemstones",
            Imgurl: imgurl,
            Answer:
                "In this video Mr. Pankaj Khanna, founder of Gem Selections discusses about the Specific Gravity  of Gemstones.",
          ),
          FAQTile(
            Question: "How Gemstones work",
            Imgurl: imgurl,
            Answer:
                "In this video Mr. Pankaj Khanna, founder of Gem Selections discusses about how Gemstones actually work for Astrological purposes.",
          ),
          FAQTile(
            Question: "Which Gemstones to wear",
            Imgurl: imgurl,
            Answer:
                "In this video Mr. Pankaj Khanna, founder of Gem Selections discusses which Gemstone a person should wear.",
          ),
          FAQTile(
            Question: "Return policy of Gem Selections",
            Imgurl: imgurl,
            Answer:
                "In this video Mr. Pankaj Khanna, founder of Gem Selections clarifies the Returns Policy of Gem Selections.",
          ),
          FAQTile(
            Question: "Rough Gemstones",
            Imgurl: imgurl,
            Answer:
                "In this video Mr. Pankaj Khanna, founder of Gem Selections discusses about Rough Gemstones.",
          ),
          FAQTile(
            Question: "Refractive index of Gemstones",
            Imgurl: imgurl,
            Answer:
                "In this video Mr. Pankaj Khanna, founder of Gem Selections discusses about Refractive Index of Gemstones.",
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
