import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:gemselections/Pages/mainscaffold.dart';

class TodaysUpdate extends StatefulWidget {
  @override
  _TodaysUpdateState createState() => _TodaysUpdateState();
}

class _TodaysUpdateState extends State<TodaysUpdate> {
  DocumentReference ref =
      Firestore.instance.collection("AppData").document("TodaysUpdate");

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: FutureBuilder(
        builder: (context, snap) {
          if (snap.data != null) {
            return ListView(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Todays Update",
                      style: TextStyle(fontSize: 30.0),
                    )
                  ],
                ),
                TodaysUpdateTile(
                  Title: snap.data.data['todaysUpdate']
                      [snap.data.data['todaysUpdate'].length - 1]['Title'],
                  text: snap.data.data['todaysUpdate']
                      [snap.data.data['todaysUpdate'].length - 1]['Text'],
                  Imgurl: snap.data.data['todaysUpdate']
                      [snap.data.data['todaysUpdate'].length - 1]['Imgurl'],
                ),
              ],
            );
          } else {
            return CircularProgressIndicator();
          }
        },
        future: ref.get(),
      ),
    );
  }
}

List<TodaysUpdateTile> tilesfromdata(List<dynamic> map) {
  List<TodaysUpdateTile> ans = [];
  for (int i = map.length - 1; i >= 0 && i > map.length - 2; i--) {
    print(map[i]);
    ans.add(TodaysUpdateTile(
      Title: map[i]['Title'],
      text: map[i]['Text'],
      Imgurl: map[i]['Imgurl'],
    ));
  }
  return ans;
}

class TodaysUpdateTile extends StatelessWidget {
  String Title, text, Imgurl;

  TodaysUpdateTile({
    this.Title,
    this.text,
    this.Imgurl = "",
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: <Widget>[
            Text(
              Title,
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 20.0),
            ),
            (Imgurl != "") ? Image.network(Imgurl) : Container(),
            Text(text),
          ],
        ),
      ),
    );
  }
}
