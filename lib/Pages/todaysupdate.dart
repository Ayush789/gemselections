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
                    Padding(padding: EdgeInsets.only(top: 50.0),),
                    Text(
                      "Todays Update",
                      style: TextStyle(fontSize: 30.0, fontStyle: FontStyle.italic),
                    )
                  ],
                ),
                TodaysUpdateTile(
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
      text: map[i]['Text'],
      Imgurl: map[i]['Imgurl'],
    ));
  }
  return ans;
}

class TodaysUpdateTile extends StatelessWidget {
  String  text, Imgurl;

  TodaysUpdateTile({

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
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 3.0),
                borderRadius: BorderRadius.circular(10.0),
                //color: Colors.lightBlueAccent,
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom:15.0),
                    child: Text(
                      text,
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ),
                  (Imgurl != "") ? Image.network(Imgurl) : Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
