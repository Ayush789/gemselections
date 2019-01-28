import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gemselections/Pages/mainscaffold.dart';
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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MatchInputPage(
                            predicate: "birth_details",
                          )));
            },
            child: Text("Match Birth Details"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MatchInputPage(
                            predicate: "ashtakoot_points",
                          )));
            },
            child: Text("Match Ashtakoot Details"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MatchInputPage(
                            predicate: "obstructions",
                          )));
            },
            child: Text("Match Vedha(Obstructions)"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MatchInputPage(
                            predicate: "astro_details",
                          )));
            },
            child: Text("Match Astro Details"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MatchInputPage(
                            predicate: "planet_details",
                          )));
            },
            child: Text("Match Planet Details"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MatchInputPage(
                            predicate: "manglik_report",
                          )));
            },
            child: Text("Match Manglik Report"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MatchInputPage(
                            predicate: "making_report",
                          )));
            },
            child: Text("Match Making Report"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MatchInputPage(
                            predicate: "simple_report",
                          )));
            },
            child: Text("Match Simple Report"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MatchInputPage(
                            predicate: "making_detailed_report",
                          )));
            },
            child: Text("Match Making Simple Report"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MatchInputPage(
                            predicate: "dashakoot_points",
                          )));
            },
            child: Text("Match Daskakoot Points"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MatchInputPage(
                            predicate: "match_percentage",
                          )));
            },
            child: Text("Match Percentage"),
          ),
        ],
      ),
    );
  }
}

class MatchInputPage extends StatefulWidget {
  String predicate;

  MatchInputPage({this.predicate});

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

  Future<dynamic> submitForm(Map<String, dynamic> data) async {
    String url = "https://json.astrologyapi.com/v1/match_" + widget.predicate;
    print(data);
    print(url);

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

  final focus1 = FocusNode(),
      focus2 = FocusNode(),
      focus3 = FocusNode(),
      focus4 = FocusNode(),
      focus5 = FocusNode(),
      focus6 = FocusNode(),
      focus7 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enter Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Text("Male Details"),
            Form(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: DateTimePickerFormField(
                      format: dateFormat,
                      decoration: InputDecoration(
                        labelText: "Date and Time of Birth",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue)),
                      ),
                      onChanged: (dt) => setState(() => male_date = dt),
                      onFieldSubmitted: (v) {
                        FocusScope.of(context).requestFocus(focus1);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TextFormField(
                      focusNode: focus1,
                      textInputAction: TextInputAction.next,
                      controller: male_lat_controller,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Birth Latitude"),
                      onFieldSubmitted: (v) {
                        FocusScope.of(context).requestFocus(focus2);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TextFormField(
                      focusNode: focus2,
                      textInputAction: TextInputAction.next,
                      controller: male_lon_controller,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Birth Longitude"),
                      onFieldSubmitted: (v) {
                        FocusScope.of(context).requestFocus(focus3);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TextFormField(
                      focusNode: focus3,
                      controller: male_tzone,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Birth Time Zone"),
                    ),
                  ),
                ],
              ),
            ),
            Text("Female Details"),
            Form(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: DateTimePickerFormField(
                      format: dateFormat,
                      decoration: InputDecoration(
                        labelText: "Date and Time of Birth",
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (dt) => setState(() => female_date = dt),
                      onFieldSubmitted: (v) {
                        FocusScope.of(context).requestFocus(focus5);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TextFormField(
                      focusNode: focus5,
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (v) {
                        FocusScope.of(context).requestFocus(focus6);
                      },
                      controller: female_lat_controller,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Birth Latitude"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TextFormField(
                      focusNode: focus6,
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (v) {
                        FocusScope.of(context).requestFocus(focus7);
                      },
                      controller: female_lon_controller,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Birth Longitude"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TextFormField(
                      focusNode: focus7,
                      controller: female_tzone,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Birth Time Zone"),
                    ),
                  ),
                ],
              ),
            ),
            RaisedButton(
              color: Colors.blue,
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
                dynamic results= {};
                submitForm(data).then((val) {
                  results = val;
                  if (results != null) {
                    print("Results Type: ${results.runtimeType}");
                    //var male = results['male_astro_details'];
                    //print(male['ascendant']);
                    //print(male.runtimeType);
                    print(widget.predicate);
                    Widget nextWidget;
                    switch (widget.predicate) {
                      case "birth_details":
                        nextWidget = MatchBirthResultsPage(
                          data: results,
                        );
                        break;

                      case "astro_details":
                        nextWidget = MatchAstroResultsPage(
                          data: results,
                        );
                        break;
                      case "ashtakoot_points":
                        nextWidget = MatchAshtakootPointsPage(
                          data: results,
                        );
                        break;
                      case "obstructions":
                        nextWidget = MatchObstructionPage(
                          data: results,
                        );
                        break;
                      case "planet_details":
                        nextWidget = MatchPlanetPage(
                          data: results,
                        );
                        break;
                      case "manglik_report":
                        nextWidget = MatchManglikPage(
                          data: results,
                        );
                        break;
                      case "making_report":
                        nextWidget = MakingReportPage(
                          data: results,
                        );
                        break;
                      case "simple_report":
                        nextWidget = MakingReportPage(
                          data: results,
                        );
                        break;
                      case "making_detailed_report":
                        nextWidget = MatchDetailedReportPage(
                          data: results,
                        );
                        break;
                      case "dashakoot_points":
                        nextWidget = MatchDashakootPage(
                          data: results,
                        );
                        break;
                      case "match_percentage":
                        nextWidget = MatchPercentage(
                          data: results,
                        );
                        break;

                      default:
                        break;
                    }
                    print(nextWidget);
                    if (nextWidget != null)
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => nextWidget));
                  } else {
                    print("No Results");
                  }
                });
              },
              child: Text(
                "Sumbit",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ResultTableBox extends StatelessWidget {
  Color boxcolor;
  dynamic data;
  String Title;

  ResultTableBox({this.data, this.Title, this.boxcolor});

  @override
  Widget build(BuildContext context) {
    //print("data: $data");
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: boxcolor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              Title,
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
            Table(
              children: rowsFromData(data),
            )
          ],
        ),
      ),
    );
  }

  List<TableRow> rowsFromData(dynamic data) {
    List<TableRow> ans = [];
    for (int i = 0; i < data.keys.toList().length; i++) {
      ans.add(TableRow(
        children: [
          Text(
            "${data.keys.toList()[i].toString()[0].toUpperCase()}${data.keys.toList()[i].toString().substring(1)}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(data[data.keys.toList()[i]].toString()),
        ],
      ));
    }

    return ans;
  }
}

class MatchBirthResultsPage extends StatelessWidget {
  dynamic data;

  MatchBirthResultsPage({this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
      ),
      body: ListView(
        children: [
          ResultTableBox(
            Title: "Male Details",
            data: data["male_astro_details"],
            boxcolor: Colors.lightBlueAccent,
          ),
          ResultTableBox(
            Title: "Female Details",
            data: data["female_astro_details"],
            boxcolor: Colors.pinkAccent,
          ),
        ],
      ),
    );
  }
}

class MatchAstroResultsPage extends StatelessWidget {
  dynamic data;

  MatchAstroResultsPage({this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
      ),
      body: ListView(
        children: [
          ResultTableBox(
            data: data["male_astro_details"],
            Title: "Male Details",
            boxcolor: Colors.lightBlueAccent,
          ),
          ResultTableBox(
            data: data["female_astro_details"],
            Title: "Female Details",
            boxcolor: Colors.pinkAccent,
          )
        ],
      ),
    );
  }
}

class MatchAshtakootPointsPage extends StatelessWidget {
  dynamic data;

  MatchAshtakootPointsPage({this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
      ),
      body: ListView(
        children: [
          ComfyBox(
            child: Column(
              children: <Widget>[
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Varna",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(data["varna"]["description"]),
                      Text("Male   : ${data["varna"]["male_koot_attribute"]}"),
                      Text(
                          "Female : ${data["varna"]["female_koot_attribute"]}"),
                      Text(
                          "Points : ${data["varna"]["received_points"].toString()}"),
                      Divider(),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Vashya",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(data["vashya"]["description"]),
                      Text("Male   : ${data["vashya"]["male_koot_attribute"]}"),
                      Text(
                          "Female : ${data["vashya"]["female_koot_attribute"]}"),
                      Text(
                          "Points : ${data["vashya"]["received_points"].toString()}"),
                      Divider(),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Tara",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(data["tara"]["description"]),
                      Text(
                          "Points : ${data["tara"]["received_points"].toString()}"),
                      Divider(),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Yoni",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(data["yoni"]["description"]),
                      Text(
                          "Points : ${data["yoni"]["received_points"].toString()}"),
                      Divider(),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Maitri",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(data["maitri"]["description"]),
                      Text("Male   : ${data["maitri"]["male_koot_attribute"]}"),
                      Text(
                          "Female : ${data["maitri"]["female_koot_attribute"]}"),
                      Text(
                          "Points : ${data["maitri"]["received_points"].toString()}"),
                      Divider(),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Gan",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(data["gan"]["description"]),
                      Text("Male   : ${data["gan"]["male_koot_attribute"]}"),
                      Text("Female : ${data["gan"]["female_koot_attribute"]}"),
                      Text(
                          "Points : ${data["gan"]["received_points"].toString()}"),
                      Divider(),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Bhakut",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(data["bhakut"]["description"]),
                      Text("Male   : ${data["bhakut"]["male_koot_attribute"]}"),
                      Text(
                          "Female : ${data["bhakut"]["female_koot_attribute"]}"),
                      Text(
                          "Points : ${data["bhakut"]["received_points"].toString()}"),
                      Divider(),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Nadi",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(data["nadi"]["description"]),
                      Text("Male   : ${data["nadi"]["male_koot_attribute"]}"),
                      Text("Female : ${data["nadi"]["female_koot_attribute"]}"),
                      Text(
                          "Points : ${data["nadi"]["received_points"].toString()}"),
                      Divider(),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Total",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text("Total Points : ${data["total"]["total_points"]}"),
                      Text(
                          "Received Points : ${data["total"]["received_points"]}"),
                      Text(
                          "Minimum Points : ${data["total"]["minimum_required"]}"),
                      Divider(),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Conclusion",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text("${data["conclusion"]["report"]}"),
                      Divider(),
                    ],
                  ),
                ),
              ],
            ),
            color: Colors.lightBlueAccent,
          ),
        ],
      ),
    );
  }
}

class MatchObstructionPage extends StatelessWidget {
  dynamic data;

  MatchObstructionPage({this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
      ),
      body: ListView(
        children: [
          ComfyBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Vedha Report",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(data["vedha_report"]),
                (data["is_present"])
                    ? Text("Vedha Name: ${data["vedha_name"]}")
                    : Container(),
              ],
            ),
            color: Colors.lightBlueAccent,
          )
        ],
      ),
    );
  }
}

class MatchPlanetPage extends StatelessWidget {
  dynamic data;

  MatchPlanetPage({this.data});

  @override
  Widget build(BuildContext context) {
    print(data["male_planet_details"].length);
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
      ),
      body: ListView(
        children: [
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: getWidgets(data["male_planet_details"]),
            ),
          ),
          ComfyBox(
            color: Colors.pinkAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: getWidgets(data["female_planet_details"]),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> getWidgets(dynamic data1) {
    List<Widget> ans = [];
    for (int i = 0; i < 10; i++) {
      ans.add(
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                data1[i]["name"].toString(),
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text("Full Degrees: ${data1[i]["fullDegree"].toString()}"),
              Text("Normal Dregees: ${data1[i]["normDegree"].toString()}"),
              Text("Speed: ${data1[i]["speed"].toString()}"),
              Text("Retro: ${data1[i]["isRetro"].toString()}"),
              Text("Sign: ${data1[i]["sign"].toString()}"),
              Text("Sign Lord: ${data1[i]["signLord"].toString()}"),
              Text("Nakshatra: ${data1[i]["nakshatra"].toString()}"),
              Text("Nakshatra Lord: ${data1[i]["nakshatraLord"].toString()}"),
              Text("House: ${data1[i]["house"].toString()}"),
              Divider(),
            ],
          ),
        ),
      );
    }
    return ans;
  }
}

class MatchManglikPage extends StatelessWidget {
  dynamic data;

  MatchManglikPage({this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
      ),
      body: ListView(
        children: [
          ComfyBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: getContainers("male"),
            ),
            color: Colors.lightBlueAccent,
          ),
          ComfyBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: getContainers("female"),
            ),
            color: Colors.pinkAccent,
          ),
        ],
      ),
    );
  }

  List<Widget> getContainers(String type) {
    List<Widget> report = [];
    report.add(
      Text(
        "${type == "male" ? "Male" : "Female"} Report",
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
    );
    report.add(Text(
      "Based on aspect",
      style: TextStyle(fontWeight: FontWeight.bold),
    ));
    //print(data[type]["manglik_present_rule"]["based_on_aspect"].length);

    for (int i = 0;
        i < data[type]["manglik_present_rule"]["based_on_aspect"].length;
        i++) {
      report
          .add(Text(data[type]["manglik_present_rule"]["based_on_aspect"][i]));
    }

    report.add(Text(
      "Based on house",
      style: TextStyle(fontWeight: FontWeight.bold),
    ));

    for (int i = 0;
        i < data[type]["manglik_present_rule"]["based_on_house"].length;
        i++) {
      report.add(Text(data[type]["manglik_present_rule"]["based_on_house"][i]));
    }
    if (data[type]["manglik_cancel_rule"].length > 0)
      report.add(Text(
        "Manglik ecancellation rules",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
      ));

    for (int i = 0; i < data[type]["manglik_cancel_rule"].length; i++) {
      report.add(Text(data[type]["manglik_cancel_rule"][i]));
    }

    report.add(Text(
      "Is Manglik Cancelled?: ${data["male"]["is_mars_manglik_cancelled"] ? "Yes" : "No"}",
      style: TextStyle(fontWeight: FontWeight.bold),
    ));
    report.add(Text(
      "Manglik Status:${data["male"]["manglik_status"]}",
      style: TextStyle(fontWeight: FontWeight.bold),
    ));
    report.add(Text(
      "Percentage Manglik Present: ${data["male"]["percentage_manglik_present"]}",
      style: TextStyle(fontWeight: FontWeight.bold),
    ));
    report.add(Text(
      "Percentage Manglik After Cancellation: ${data["male"]["percentage_manglik_after_cancellation"]}",
      style: TextStyle(fontWeight: FontWeight.bold),
    ));
    report.add(Text(
      "Manglik Report: ",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
    ));
    report.add(Text("${data["male"]["manglik_report"]}"));
    report.add(Text(
      "Is Manglik: ${data["male"]["is_present"] ? "Yes" : "No"}",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
        color: Colors.red,
      ),
    ));

    return report;
  }
}

class ComfyBox extends StatelessWidget {
  Widget child;
  Color color;

  ComfyBox({this.child, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: child,
      ),
    );
  }
}

class MakingReportPage extends StatelessWidget {
  dynamic data;

  MakingReportPage({this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
      ),
      body: ListView(
        children: [
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text(
                  "Ashtakoota",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Status:  ${data["ashtakoota"]["status"] ? "Yes" : "No"}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  " Points: ${data["ashtakoota"]["received_points"]}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text(
                  "Manglik",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Status:  ${data["manglik"]["status"] ? "Yes" : "No"}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "Male Percentage: ${data["manglik"]["male_percentage"]}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "Female Percentage: ${data["manglik"]["female_percentage"]}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text(
                  "Rajju Dosh",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Status:  ${data["rajju_dosha"]["status"] ? "Yes" : "No"}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text(
                  "Vedha Dosh",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Status:  ${data["vedha_dosha"]["status"] ? "Yes" : "No"}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text(
                  "Conclusion",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  data["conclusion"],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MatchDetailedReportPage extends StatelessWidget {
  dynamic data;

  MatchDetailedReportPage({this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
      ),
      body: ListView(
        children: [
          ComfyBox(
            child: Column(
              children: <Widget>[
                Text(
                  "Ashtakoota",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Varna",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(data["ashtakoota"]["varna"]["description"]),
                      Text(
                          "Male   : ${data["ashtakoota"]["varna"]["male_koot_attribute"]}"),
                      Text(
                          "Female : ${data["ashtakoota"]["varna"]["female_koot_attribute"]}"),
                      Text(
                          "Points : ${data["ashtakoota"]["varna"]["received_points"].toString()}"),
                      Divider(),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Vashya",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(data["ashtakoota"]["vashya"]["description"]),
                      Text(
                          "Male   : ${data["ashtakoota"]["vashya"]["male_koot_attribute"]}"),
                      Text(
                          "Female : ${data["ashtakoota"]["vashya"]["female_koot_attribute"]}"),
                      Text(
                          "Points : ${data["ashtakoota"]["vashya"]["received_points"].toString()}"),
                      Divider(),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Tara",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(data["ashtakoota"]["tara"]["description"]),
                      Text(
                          "Points : ${data["ashtakoota"]["tara"]["received_points"].toString()}"),
                      Divider(),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Yoni",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(data["ashtakoota"]["yoni"]["description"]),
                      Text(
                          "Points : ${data["ashtakoota"]["yoni"]["received_points"].toString()}"),
                      Divider(),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Maitri",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(data["ashtakoota"]["maitri"]["description"]),
                      Text(
                          "Male   : ${data["ashtakoota"]["maitri"]["male_koot_attribute"]}"),
                      Text(
                          "Female : ${data["ashtakoota"]["maitri"]["female_koot_attribute"]}"),
                      Text(
                          "Points : ${data["ashtakoota"]["maitri"]["received_points"].toString()}"),
                      Divider(),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Gan",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(data["ashtakoota"]["gan"]["description"]),
                      Text(
                          "Male   : ${data["ashtakoota"]["gan"]["male_koot_attribute"]}"),
                      Text(
                          "Female : ${data["ashtakoota"]["gan"]["female_koot_attribute"]}"),
                      Text(
                          "Points : ${data["ashtakoota"]["gan"]["received_points"].toString()}"),
                      Divider(),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Bhakut",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(data["ashtakoota"]["bhakut"]["description"]),
                      Text(
                          "Male   : ${data["ashtakoota"]["bhakut"]["male_koot_attribute"]}"),
                      Text(
                          "Female : ${data["ashtakoota"]["bhakut"]["female_koot_attribute"]}"),
                      Text(
                          "Points : ${data["ashtakoota"]["bhakut"]["received_points"].toString()}"),
                      Divider(),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Nadi",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(data["ashtakoota"]["nadi"]["description"]),
                      Text(
                          "Male   : ${data["ashtakoota"]["nadi"]["male_koot_attribute"]}"),
                      Text(
                          "Female : ${data["ashtakoota"]["nadi"]["female_koot_attribute"]}"),
                      Text(
                          "Points : ${data["ashtakoota"]["nadi"]["received_points"].toString()}"),
                      Divider(),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Total",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                          "Total Points : ${data["ashtakoota"]["total"]["total_points"]}"),
                      Text(
                          "Received Points : ${data["ashtakoota"]["total"]["received_points"]}"),
                      Text(
                          "Minimum Points : ${data["ashtakoota"]["total"]["minimum_required"]}"),
                      Divider(),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Conclusion",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text("${data["conclusion"]["report"]}"),
                      Divider(),
                    ],
                  ),
                ),
              ],
            ),
            color: Colors.lightBlueAccent,
          ),
        ],
      ),
    );
  }
}

class MatchDashakootPage extends StatelessWidget {
  dynamic data;

  MatchDashakootPage({this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
      ),
      body: ListView(
        children: [
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Dina",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(data["dina"]["description"]),
                      Text("Male : ${data["dina"]["male_koot_attribute"]}"),
                      Text("Female : ${data["dina"]["female_koot_attribute"]}"),
                      Text("Points : ${data["dina"]["received_points"]}"),
                      Divider(),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Gana",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(data["gana"]["description"]),
                      Text("Male : ${data["gana"]["male_koot_attribute"]}"),
                      Text("Female : ${data["gana"]["female_koot_attribute"]}"),
                      Text("Points : ${data["gana"]["received_points"]}"),
                      Divider(),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Yoni",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(data["yoni"]["description"]),
                      Text("Male : ${data["yoni"]["male_koot_attribute"]}"),
                      Text("Female : ${data["yoni"]["female_koot_attribute"]}"),
                      Text("Points : ${data["yoni"]["received_points"]}"),
                      Divider(),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Rashi",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(data["rashi"]["description"]),
                      Text("Male : ${data["rashi"]["male_koot_attribute"]}"),
                      Text(
                          "Female : ${data["rashi"]["female_koot_attribute"]}"),
                      Text("Points : ${data["rashi"]["received_points"]}"),
                      Divider(),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Rasyadhipati",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(data["rasyadhipati"]["description"]),
                      Text(
                          "Male : ${data["rasyadhipati"]["male_koot_attribute"]}"),
                      Text(
                          "Female : ${data["rasyadhipati"]["female_koot_attribute"]}"),
                      Text(
                          "Points : ${data["rasyadhipati"]["received_points"]}"),
                      Divider(),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Rajju",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(data["rajju"]["description"]),
                      Text("Male : ${data["rajju"]["male_koot_attribute"]}"),
                      Text(
                          "Female : ${data["rajju"]["female_koot_attribute"]}"),
                      Text("Points : ${data["rajju"]["received_points"]}"),
                      Divider(),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Vedha",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(data["rajju"]["description"]),
                      Text("Male : ${data["rajju"]["male_koot_attribute"]}"),
                      Text(
                          "Female : ${data["rajju"]["female_koot_attribute"]}"),
                      Text("Points : ${data["rajju"]["received_points"]}"),
                      Divider(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MatchPercentage extends StatelessWidget {
  dynamic data;

  MatchPercentage({this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
      ),
      body: ListView(
        children: [
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text("Ashtakoota Percentage: ${data["ashtakoota_percentage"]}"),
                Text("Manglik Match Percentage: ${data["manglik_match_percentage"]}"),
                Text("Rajju Match Percentage: ${data["rajju_match_percentage"]}"),
                Text("Vedha Match Percentage: ${data["vedha_match_percentage"]}"),
                Text("Match Percentage: ${data["match_percentage"]}"),
                Text("Match is: ${data["is_match_good"]?"Good":"Bad"}"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
