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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2F1.jpg?alt=media"),
          ),
          FAQTile(
            Question: "Pricing of Gemstones",
            Imgurl:
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2F1.jpg?alt=media",
            Answer:
                "In this video Mr. Pankaj Khanna, founder of Gem Selections discusses how Gemstones and Diamonds are priced.",
          ),
          FAQTile(
            Question: "Testing of Gemstones",
            Imgurl:
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2F2.jpg?alt=media",
            Answer:
                "In this video Mr. Pankaj Khanna, founder of Gem Selections clarifies all the misconceptions in the minds of the people as how are gemstones tested.",
          ),
          FAQTile(
            Question: "Specific Gravity of Gemstones",
            Imgurl:
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2F3.jpg?alt=media",
            Answer:
                "In this video Mr. Pankaj Khanna, founder of Gem Selections discusses about the Specific Gravity  of Gemstones.",
          ),
          FAQTile(
            Question: "How Gemstones work",
            Imgurl:
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2F4.jpg?alt=media",
            Answer:
                "In this video Mr. Pankaj Khanna, founder of Gem Selections discusses about how Gemstones actually work for Astrological purposes.",
          ),
          FAQTile(
            Question: "Which Gemstones to wear",
            Imgurl:
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2F5.jpg?alt=media",
            Answer:
                "In this video Mr. Pankaj Khanna, founder of Gem Selections discusses which Gemstone a person should wear.",
          ),
          FAQTile(
            Question: "Return policy of Gem Selections",
            Imgurl:
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2F6.jpg?alt=media",
            Answer:
                "In this video Mr. Pankaj Khanna, founder of Gem Selections clarifies the Returns Policy of Gem Selections.",
          ),
          FAQTile(
            Question: "Rough Gemstones",
            Imgurl:
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2F7.jpg?alt=media",
            Answer:
                "In this video Mr. Pankaj Khanna, founder of Gem Selections discusses about Rough Gemstones.",
          ),
          FAQTile(
            Question: "Refractive index of Gemstones",
            Imgurl:
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2F8.jpg?alt=media",
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
    double w = MediaQuery.of(context).size.width;
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          child: (IsVisiable)
              ? Column(
                  children: <Widget>[
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            color: Colors.lightBlueAccent,
                            child: Text(
                              widget.Question,
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Image.network(
                      widget.Imgurl,
                      height: w * 0.75,
                    ),
                    Text(widget.Answer),
                  ],
                )
              : Container(
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    color: Colors.lightBlueAccent,
                    child: Text(
                      widget.Question,
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
          onTap: () {
            setState(() {
              IsVisiable = !IsVisiable;
            });
          },
        ),
      ),
    );
  }
}
