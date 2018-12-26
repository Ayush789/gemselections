import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';
import 'package:gemselections/Pages/mainscaffold.dart';

class StoneIdolsPage extends StatefulWidget {
  @override
  _StoneIdolsPageState createState() => _StoneIdolsPageState();
}

class _StoneIdolsPageState extends State<StoneIdolsPage> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: ListView(
        children: <Widget>[
          Text("Idols of stone"),
          StoneIdol(
            Title: "Lord Shiva",
            text: "Text",
            Imgurl: imgurl,
            Dimention: "4.75 x 6.5",
            Weight: "625",
            Price: "551",
          ),
          StoneIdol(
            Title: "Lord Shiva",
            text: "Text",
            Imgurl: imgurl,
            Dimention: "4.75 x 6.5",
            Weight: "625",
            Price: "551",
          ),
          StoneIdol(
            Title: "Lord Shiva",
            text: "Text",
            Imgurl: imgurl,
            Dimention: "4.75 x 6.5",
            Weight: "625",
            Price: "551",
          ),
          StoneIdol(
            Title: "Lord Shiva",
            text: "Text",
            Imgurl: imgurl,
            Dimention: "4.75 x 6.5",
            Weight: "625",
            Price: "551",
          ),
          StoneIdol(
            Title: "Lord Shiva",
            text: "Text",
            Imgurl: imgurl,
            Dimention: "4.75 x 6.5",
            Weight: "625",
            Price: "551",
          ),
          StoneIdol(
            Title: "Lord Shiva",
            text: "Text",
            Imgurl: imgurl,
            Dimention: "4.75 x 6.5",
            Weight: "625",
            Price: "551",
          ),
          StoneIdol(
            Title: "Lord Shiva",
            text: "Text",
            Imgurl: imgurl,
            Dimention: "4.75 x 6.5",
            Weight: "625",
            Price: "551",
          ),
          StoneIdol(
            Title: "Lord Shiva",
            text: "Text",
            Imgurl: imgurl,
            Dimention: "4.75 x 6.5",
            Weight: "625",
            Price: "551",
          ),
          StoneIdol(
            Title: "Lord Shiva",
            text: "Text",
            Imgurl: imgurl,
            Dimention: "4.75 x 6.5",
            Weight: "625",
            Price: "551",
          ),
          StoneIdol(
            Title: "Lord Shiva",
            text: "Text",
            Imgurl: imgurl,
            Dimention: "4.75 x 6.5",
            Weight: "625",
            Price: "551",
          ),
          StoneIdol(
            Title: "Lord Shiva",
            text: "Text",
            Imgurl: imgurl,
            Dimention: "4.75 x 6.5",
            Weight: "625",
            Price: "551",
          ),
          StoneIdol(
            Title: "Lord Shiva",
            text: "Text",
            Imgurl: imgurl,
            Dimention: "4.75 x 6.5",
            Weight: "625",
            Price: "551",
          ),
          StoneIdol(
            Title: "Lord Shiva",
            text: "Text",
            Imgurl: imgurl,
            Dimention: "4.75 x 6.5",
            Weight: "625",
            Price: "551",
          ),
          StoneIdol(
            Title: "Lord Shiva",
            text: "Text",
            Imgurl: imgurl,
            Dimention: "4.75 x 6.5",
            Weight: "625",
            Price: "551",
          ),
          StoneIdol(
            Title: "Lord Shiva",
            text: "Text",
            Imgurl: imgurl,
            Dimention: "4.75 x 6.5",
            Weight: "625",
            Price: "551",
          ),
        ],
      ),
    );
  }
}

class StoneIdol extends StatelessWidget {
  String Title, text, Imgurl, Dimention, Weight, Price;

  StoneIdol({
    this.Title,
    this.text,
    this.Imgurl,
    this.Dimention,
    this.Price,
    this.Weight,
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
            Text("Dimention =$Dimention inch"),
            Text("Weight = $Weight grams"),
            Text("Idol Price : Rs $Price/-"),
          ],
        ),
      ),
    );
  }
}
