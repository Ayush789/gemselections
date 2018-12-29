import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gemselections/Pages/mainscaffold.dart';
import 'package:datetime_picker_formfield/time_picker_formfield.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart';

class MatchMakingPage extends StatefulWidget {
  @override
  _MatchMakingPageState createState() => _MatchMakingPageState();
}

class _MatchMakingPageState extends State<MatchMakingPage> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: ListView(
        children: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MatchInputPage()));
            },
            child: Text("Match Birth Details"),
          ),
          FlatButton(
            onPressed: () {},
            child: Text("Match Birth Details"),
          ),
          FlatButton(
            onPressed: () {},
            child: Text("Match Birth Details"),
          ),
          FlatButton(
            onPressed: () {},
            child: Text("Match Birth Details"),
          ),
          FlatButton(
            onPressed: () {},
            child: Text("Match Birth Details"),
          ),
          FlatButton(
            onPressed: () {},
            child: Text("Match Birth Details"),
          ),
          FlatButton(
            onPressed: () {},
            child: Text("Match Birth Details"),
          ),
          FlatButton(
            onPressed: () {},
            child: Text("Match Birth Details"),
          ),
          FlatButton(
            onPressed: () {},
            child: Text("Match Birth Details"),
          ),
          FlatButton(
            onPressed: () {},
            child: Text("Match Birth Details"),
          ),
          FlatButton(
            onPressed: () {},
            child: Text("Match Birth Details"),
          ),
          FlatButton(
            onPressed: () {},
            child: Text("Match Birth Details"),
          ),
          FlatButton(
            onPressed: () {},
            child: Text("Match Birth Details"),
          ),
        ],
      ),
    );
  }
}

class MatchInputPage extends StatefulWidget {
  @override
  _MatchInputPageState createState() => _MatchInputPageState();
}

class _MatchInputPageState extends State<MatchInputPage> {
  final dateFormat = DateFormat("EEEE, MMMM d, yyyy 'at' h:mma");
  DateTime male_date;
  TextEditingController male_lat_controller = TextEditingController(),
      male_lon_controller = TextEditingController(),
      male_tzone = TextEditingController();
  DateTime female_date;
  TextEditingController female_lat_controller = TextEditingController(),
      female_lon_controller = TextEditingController(),
      female_tzone = TextEditingController();

  Future<Map<String, dynamic>> submitForm(Map<String, dynamic> data) async {
    String url = "https://json.astrologyapi.com/v1/match_birth_details";
    print(data);

    String userid = "601696", APIKey = "8510e537bcc424e154a3860e70e92209";
    String basicauth = "Basic " + base64Encode(utf8.encode("$userid:$APIKey"));
    print(basicauth);

    var resp = await post(
      url,
      headers: {'Authorization': basicauth, 'Content-Type': 'application/json'},
      body: utf8.encode(json.encode(data)),
    );

    print(resp.body);
    if (resp.statusCode == 200)
      return json.decode(resp.body);
    else
      return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Text("Male Details"),
          Form(
            child: Column(
              children: <Widget>[
                DateTimePickerFormField(
                  format: dateFormat,
                  decoration: InputDecoration(
                    labelText: "Date and Time of Birth",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (dt) => setState(() => male_date = dt),
                ),
                TextFormField(
                  controller: male_lat_controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Birth Latitude"),
                ),
                TextFormField(
                  controller: male_lon_controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Birth Longitude"),
                ),
                TextFormField(
                  controller: male_tzone,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Birth Time Zone"),
                ),
              ],
            ),
          ),
          Text("Female Details"),
          Form(
            child: Column(
              children: <Widget>[
                DateTimePickerFormField(
                  format: dateFormat,
                  decoration: InputDecoration(
                    labelText: "Date and Time of Birth",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (dt) => setState(() => female_date = dt),
                ),
                TextFormField(
                  controller: female_lat_controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Birth Latitude"),
                ),
                TextFormField(
                  controller: female_lon_controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Birth Longitude"),
                ),
                TextFormField(
                  controller: female_tzone,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Birth Time Zone"),
                ),
              ],
            ),
          ),
          RaisedButton(
            onPressed: () {
              Map<String, dynamic> data = {
                "m_day": male_date.day,
                "m_month": male_date.month,
                "m_year": male_date.year,
                "m_hour": male_date.hour,
                "m_min": male_date.minute,
                "m_lat": male_lat_controller.text,
                "m_lon": male_lon_controller.text,
                "m_tzone": male_tzone.text,
                "f_day": female_date.day,
                "f_month": female_date.month,
                "f_year": female_date.year,
                "f_hour": female_date.hour,
                "f_min": female_date.minute,
                "f_lat": female_lat_controller.text,
                "f_lon": female_lon_controller.text,
                "f_tzone": female_tzone.text
              };
              Map<String, dynamic> results = {};
              submitForm(data).then((val) {
                results = val;
                if (results != null) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MatchMakingResults(
                                results: results,
                              )));
                } else {
                  print("No Results");
                }
              });
            },
            child: Text("Sumbit"),
          )
        ],
      ),
    );
  }
}

class MatchMakingResults extends StatefulWidget {
  Map<String, dynamic> results;

  MatchMakingResults({this.results});

  @override
  _MatchMakingResultsState createState() => _MatchMakingResultsState();
}

class _MatchMakingResultsState extends State<MatchMakingResults> {
  @override
  List<TableRow> getmaleRows(List male, String name, Map<String, dynamic> res) {
    List<TableRow> ans = [];

    for (int i = 0; i < male.length; i++) {
      ans.add(TableRow(children: [
        Text(
          "${male[i][0].toUpperCase()}${male[i].substring(1)}",
          //"${male[i].substring(1)}",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
        ),
        Text(res[name][male[i]].toString()),
      ]));
    }
    return ans;
  }

  Widget build(BuildContext context) {
    print(
        "Widget Results ${widget.results["male_astro_details"].keys.toList()[1]}");
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
      ),
      body: ListView(children: <Widget>[
        Container(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.lightBlueAccent,
            ),
            child: Table(
                children: getmaleRows(
                    widget.results["male_astro_details"].keys.toList(),
                    "male_astro_details",
                    widget.results)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.pinkAccent,
            ),
            child: Table(
                children: getmaleRows(
                    widget.results["female_astro_details"].keys.toList(),
                    "female_astro_details",
                    widget.results)),
          ),
        ),
      ]),
    );
  }
}
