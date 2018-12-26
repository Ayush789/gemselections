import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';
import 'package:gemselections/Pages/mainscaffold.dart';

class SaphticItemsPage extends StatefulWidget {
  @override
  _SaphticItemsPageState createState() => _SaphticItemsPageState();
}

class _SaphticItemsPageState extends State<SaphticItemsPage> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: ListView(
        children: <Widget>[
          SaphticTile(
            Title: "Saphtic Shivlinga",
            text: "Text",
            ImgUrl: imgurl,
            Price: "500",
          ),
          SaphticTile(
            Title: "Saphtic Shivlinga",
            text: "Text",
            ImgUrl: imgurl,
            Price: "500",
          ),
          SaphticTile(
            Title: "Saphtic Shivlinga",
            text: "Text",
            ImgUrl: imgurl,
            Price: "500",
          ),
          SaphticTile(
            Title: "Saphtic Shivlinga",
            text: "Text",
            ImgUrl: imgurl,
            Price: "500",
          ),
          SaphticTile(
            Title: "Saphtic Shivlinga",
            text: "Text",
            ImgUrl: imgurl,
            Price: "500",
          ),
          SaphticTile(
            Title: "Saphtic Shivlinga",
            text: "Text",
            ImgUrl: imgurl,
            Price: "500",
          ),
          SaphticTile(
            Title: "Saphtic Shivlinga",
            text: "Text",
            ImgUrl: imgurl,
            Price: "500",
          ),
          SaphticTile(
            Title: "Saphtic Shivlinga",
            text: "Text",
            ImgUrl: imgurl,
            Price: "500",
          ),
        ],
      ),
    );
  }
}

class SaphticTile extends StatelessWidget {
  String ImgUrl, Title, text, Price;

  SaphticTile({
    this.Price,
    this.Title,
    this.ImgUrl,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: <Widget>[
            Image.network(ImgUrl),
            Text(Title),
            Text(text),
            Text("Price : Rs.$Price/-"),
          ],
        ),
      ),
    );
  }
}
