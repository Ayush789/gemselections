import 'package:flutter/material.dart';
import 'package:gemselections/Pages/handicraft/handicraftScaffold.dart';
import 'package:gemselections/Pages/imageurl.dart';

class SpiritualGiftsPage extends StatefulWidget {
  @override
  _SpiritualGiftsPageState createState() => _SpiritualGiftsPageState();
}

class _SpiritualGiftsPageState extends State<SpiritualGiftsPage> {
  @override
  Widget build(BuildContext context) {
    return HandicraftScaffold(
      body: ListView(
        children: <Widget>[
          SpiritualGiftsTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Size: "9 inch",
          ),
          SpiritualGiftsTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Size: "9 inch",
          ),
          SpiritualGiftsTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Size: "9 inch",
          ),
          SpiritualGiftsTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Size: "9 inch",
          ),
          SpiritualGiftsTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Size: "9 inch",
          ),
          SpiritualGiftsTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Size: "9 inch",
          ),
          SpiritualGiftsTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Size: "9 inch",
          ),
          SpiritualGiftsTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Size: "9 inch",
          ),
          SpiritualGiftsTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Size: "9 inch",
          ),
          SpiritualGiftsTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Size: "9 inch",
          ),
          SpiritualGiftsTile(
            Code: "GPP01",
            text: "Data",
            Imgurl: imgurl,
            Weight: "250",
            Size: "9 inch",
          ),
        ],
      ),
    );
  }
}

class SpiritualGiftsTile extends StatelessWidget {
  String Code, text, Imgurl, Weight, Size, Price;

  SpiritualGiftsTile({
    this.Price,
    this.Size,
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
            Text("Size : $Size"),
            Text("Price : $Price"),
          ],
        ),
      ),
    );
  }
}
