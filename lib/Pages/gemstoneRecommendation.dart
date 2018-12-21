import 'package:flutter/material.dart';
import 'package:gemselections/Pages/mainscaffold.dart';

class GemStoneRecommendation extends StatefulWidget {
  @override
  _GemStoneRecommendationState createState() => _GemStoneRecommendationState();
}

class _GemStoneRecommendationState extends State<GemStoneRecommendation> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: ListView(
        children: <Widget>[
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media"),
          Form(
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Name",
                    border: OutlineInputBorder(),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Place of Birth",
                    border: OutlineInputBorder(),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Time of Birth",
                    border: OutlineInputBorder(),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    border: OutlineInputBorder(),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Date of birth",
                    border: OutlineInputBorder(),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Quations",
                    border: OutlineInputBorder(),
                  ),
                ),
                RaisedButton(
                  child: Text("Submit"),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
