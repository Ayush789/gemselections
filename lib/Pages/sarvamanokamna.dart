import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';
import 'package:gemselections/Pages/mainscaffold.dart';

class SarvaManokamnaPage extends StatefulWidget {
  @override
  _SarvaManokamnaPageState createState() => _SarvaManokamnaPageState();
}

class _SarvaManokamnaPageState extends State<SarvaManokamnaPage> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: ListView(
        children: <Widget>[
          Image.network(imgurl),
          Text("Data"),
          Card(
            child: Container(
              color: Colors.orange,
              child: Column(
                children: <Widget>[
                  Text("Package"),
                  Image.network(imgurl),
                  Text("Whats in the Package"),
                ],
              ),
            ),
          ),
          Container(
            height: 200.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Card(
                  child: Container(
                    height: 200.0,
                    width: 150.0,
                    child: Image.network(imglist[index]),
                  ),
                );
              },
              itemCount: imglist.length,
            ),
          )
        ],
      ),
    );
  }
}

List<String> imglist = [
  imgurl,
  imgurl,
  imgurl,
  imgurl,
  imgurl,
  imgurl,
  imgurl,
  imgurl,
  imgurl,
];
