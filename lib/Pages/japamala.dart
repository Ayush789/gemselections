import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';
import 'package:gemselections/Pages/mainscaffold.dart';

class JapaMalaPage extends StatefulWidget {
  @override
  _JapaMalaPageState createState() => _JapaMalaPageState();
}

class _JapaMalaPageState extends State<JapaMalaPage> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: ListView(
        children: <Widget>[
          JapaMalaTile(
            ImgUrl: imgurl,
            Title: "Tulsi Mala",
            text: "Data",
            Price: "350",
          ),
          JapaMalaTile(
            ImgUrl: imgurl,
            Title: "Tulsi Mala",
            text: "Data",
            Price: "350",
          ),
          JapaMalaTile(
            ImgUrl: imgurl,
            Title: "Tulsi Mala",
            text: "Data",
            Price: "350",
          ),
          JapaMalaTile(
            ImgUrl: imgurl,
            Title: "Tulsi Mala",
            text: "Data",
            Price: "350",
          ),
          JapaMalaTile(
            ImgUrl: imgurl,
            Title: "Tulsi Mala",
            text: "Data",
            Price: "350",
          ),
          JapaMalaTile(
            ImgUrl: imgurl,
            Title: "Tulsi Mala",
            text: "Data",
            Price: "350",
          ),
          JapaMalaTile(
            ImgUrl: imgurl,
            Title: "Tulsi Mala",
            text: "Data",
            Price: "350",
          ),
          JapaMalaTile(
            ImgUrl: imgurl,
            Title: "Tulsi Mala",
            text: "Data",
            Price: "350",
          ),
          JapaMalaTile(
            ImgUrl: imgurl,
            Title: "Tulsi Mala",
            text: "Data",
            Price: "350",
          ),
          JapaMalaTile(
            ImgUrl: imgurl,
            Title: "Tulsi Mala",
            text: "Data",
            Price: "350",
          ),
          JapaMalaTile(
            ImgUrl: imgurl,
            Title: "Tulsi Mala",
            text: "Data",
            Price: "350",
          ),
          JapaMalaTile(
            ImgUrl: imgurl,
            Title: "Tulsi Mala",
            text: "Data",
            Price: "350",
          ),
          JapaMalaTile(
            ImgUrl: imgurl,
            Title: "Tulsi Mala",
            text: "Data",
            Price: "350",
          ),
        ],
      ),
    );
  }
}

class JapaMalaTile extends StatelessWidget {
  String text, ImgUrl, Title, Price;

  JapaMalaTile({
    this.ImgUrl,
    this.Title,
    this.Price,
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
            Text("Price : Rs$Price/-"),
          ],
        ),
      ),
    );
  }
}
