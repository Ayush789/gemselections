import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gemselections/Pages/astrology/matchmaking.dart';
import 'package:gemselections/Pages/mainscaffold.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart';

class WesternAstrologyPage extends StatefulWidget {
  @override
  _WesternAstrologyPageState createState() => _WesternAstrologyPageState();
}

class _WesternAstrologyPageState extends State<WesternAstrologyPage> {
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
                      builder: (context) => WesternSinglePage(
                            predicate: "western_horoscope",
                          )));
            },
            child: Text("Western Horoscope"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WesternSinglePage(
                            predicate: "western_chart_data",
                          )));
            },
            child: Text("Western Chart Data"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WesternSinglePage(
                            predicate: "tropical_transits/daily",
                          )));
            },
            child: Text("Daily Tropical Transits"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WesternSinglePage(
                            predicate: "tropical_transits/weekly",
                          )));
            },
            child: Text("Weekly Tropical Transits"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WesternSinglePage(
                            predicate: "tropical_transits/monthly",
                          )));
            },
            child: Text("Monthly Tropical Transits"),
          ),
        ],
      ),
    );
  }
}

class WesternSinglePage extends StatefulWidget {
  String predicate;

  WesternSinglePage({this.predicate});

  @override
  _WesternSinglePageState createState() => _WesternSinglePageState();
}

class _WesternSinglePageState extends State<WesternSinglePage> {
  TextEditingController nameController = TextEditingController(),
      tzoneController = TextEditingController(),
      lat_controller = TextEditingController(),
      lon_controller = TextEditingController();
  final dateFormat = DateFormat("EEEE, MMMM d, yyyy 'at' h:mma");
  DateTime date;

  Future<Map<String, dynamic>> submitForm(Map<String, dynamic> data) async {
    String url = "https://json.astrologyapi.com/v1/" + widget.predicate;
    //print(data);
    //print(url);

    String userid = "601696", APIKey = "8510e537bcc424e154a3860e70e92209";
    String basicauth = "Basic " + base64Encode(utf8.encode("$userid:$APIKey"));
    //print(basicauth);

    var resp = await post(
      url,
      headers: {'Authorization': basicauth, 'Content-Type': 'application/json'},
      body: utf8.encode(json.encode(data)),
    );

    //print(resp.body);
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
          TextFormField(
            controller: nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Name",
            ),
          ),
          DateTimePickerFormField(
            format: dateFormat,
            decoration: InputDecoration(
              labelText: "Date and Time of Birth",
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue)),
            ),
            onChanged: (dt) => setState(() => date = dt),
          ),
          TextFormField(
            textInputAction: TextInputAction.next,
            controller: lat_controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "Birth Latitude"),
          ),
          TextFormField(
            textInputAction: TextInputAction.next,
            controller: lon_controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "Birth Longitude"),
          ),
          TextFormField(
            controller: tzoneController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Time Zone",
            ),
          ),
          RaisedButton(
            color: Colors.blue,
            onPressed: () {
              Map<String, dynamic> data = {
                "day": date.day,
                "month": date.month,
                "year": date.year,
                "hour": date.hour,
                "min": date.minute,
                "lat": lat_controller.text,
                "lon": lon_controller.text,
                "tzone": tzoneController.text,
              };
              Map<String, dynamic> results = {};
              submitForm(data).then((val) {
                results = val;
                //print(results);
                if (results != null) {
                  //print("Results Type: ${results.runtimeType}");
                  //print(widget.predicate);
                  Widget nextWidget;
                  switch (widget.predicate) {
                    case "western_horoscope":
                      nextWidget = WesternHoroscopePage(
                        data: results,
                      );
                      break;
                    case "western_chart_data":
                      nextWidget = WesternChartDataPage(
                        data: results,
                      );
                      break;
                    case "tropical_transits/daily":
                      nextWidget = TropicalTransitsDailyPage(
                        data: results,
                      );
                      break;
                    case "tropical_transits/weekly":
                      nextWidget = TropicalTransitsWeeklyPage(
                        data: results,
                      );
                      break;
                    case "tropical_transits/monthly":
                      nextWidget = TropicalTransitsMonthlyPage(
                        data: results,
                      );
                      break;
                    default:
                      break;
                  }
                  //print(nextWidget);
                  if (nextWidget != null)
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => nextWidget));
                } else {
                  //print("No Results");
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
    );
  }
}

class WesternHoroscopePage extends StatelessWidget {
  dynamic data;

  WesternHoroscopePage({this.data});

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
                  "Planet Details",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: getWidgets(data["planets"]),
                )
              ],
            ),
            color: Colors.lightBlueAccent,
          ),
          ComfyBox(
            child: Column(
              children: <Widget>[
                Text(
                  "House Details",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: getHouse(data["houses"]),
                )
              ],
            ),
            color: Colors.lightBlueAccent,
          ),
          ComfyBox(
            child: Column(
              children: <Widget>[
                Text(
                  "Ascendant: ${data["ascendant"]}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            color: Colors.lightBlueAccent,
          ),
          ComfyBox(
            child: Column(
              children: <Widget>[
                Text(
                  "Mid Heaven: ${data["midheaven"]}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            color: Colors.lightBlueAccent,
          ),
          ComfyBox(
            child: Column(
              children: <Widget>[
                Text(
                  "Vertex: ${data["vertex"]}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            color: Colors.lightBlueAccent,
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  data["lilith"]["name"].toString(),
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(
                    "Full Degrees: ${data["lilith"]["full_degree"].toString()}"),
                Text(
                    "Normal Dregees: ${data["lilith"]["norm_degree"].toString()}"),
                Text("Speed: ${data["lilith"]["speed"].toString()}"),
                Text("Retro: ${data["lilith"]["isRetro"].toString()}"),
                Text("Sign: ${data["lilith"]["sign"].toString()}"),
                Text("Sign Lord: ${data["lilith"]["signLord"].toString()}"),
                Text("House: ${data["lilith"]["house"].toString()}"),
              ],
            ),
          ),
          ComfyBox(
            child: Column(
              children: <Widget>[
                Text(
                  "Aspects",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: getAspects(data["aspects"]),
                )
              ],
            ),
            color: Colors.lightBlueAccent,
          ),
        ],
      ),
    );
  }

  List<Widget> getWidgets(dynamic data1) {
    List<Widget> ans = [];
    for (int i = 0; i < 13; i++) {
      ans.add(
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                data1[i]["name"].toString(),
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text("Full Degrees: ${data1[i]["full_degree"].toString()}"),
              Text("Normal Dregees: ${data1[i]["norm_degree"].toString()}"),
              Text("Speed: ${data1[i]["speed"].toString()}"),
              Text("Retro: ${data1[i]["isRetro"].toString()}"),
              Text("Sign: ${data1[i]["sign"].toString()}"),
              Text("Sign Lord: ${data1[i]["signLord"].toString()}"),
              Text("House: ${data1[i]["house"].toString()}"),
              Divider(),
            ],
          ),
        ),
      );
    }
    return ans;
  }

  List<Widget> getHouse(dynamic data1) {
    List<Widget> ans = [];
    for (int i = 0; i < 12; i++) {
      ans.add(
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                data1[i]["house"].toString(),
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text("Sign: ${data1[i]["sign"].toString()}"),
              Text("Dregees: ${data1[i]["degree"].toString()}"),
              Divider(),
            ],
          ),
        ),
      );
    }
    return ans;
  }

  List<Widget> getAspects(dynamic data1) {
    List<Widget> ans = [];
    for (int i = 0; i < 12; i++) {
      ans.add(
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                  "Aspecting Planet: ${data1[i]["aspecting_planet"].toString()}"),
              Text(
                  "Aspected Planet: ${data1[i]["aspected_planet"].toString()}"),
              Text(
                  "Aspecting Planet Id: ${data1[i]["aspecting_planet_id"].toString()}"),
              Text(
                  "Aspected Planet Id: ${data1[i]["aspected_planet_id"].toString()}"),
              Text("Type: ${data1[i]["type"].toString()}"),
              Text("Orb: ${data1[i]["orb"].toString()}"),
              Text("Diff: ${data1[i]["diff"].toString()}"),
              Divider(),
            ],
          ),
        ),
      );
    }
    return ans;
  }
}

class WesternChartDataPage extends StatelessWidget {
  dynamic data;

  WesternChartDataPage({this.data});

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
                  "House Details",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: getHouse(data["houses"]),
                )
              ],
            ),
            color: Colors.lightBlueAccent,
          ),
          ComfyBox(
            child: Column(
              children: <Widget>[
                Text(
                  "Aspects",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: getAspects(data["aspects"]),
                )
              ],
            ),
            color: Colors.lightBlueAccent,
          ),
        ],
      ),
    );
  }

  List<Widget> getHouse(dynamic data1) {
    List<Widget> ans = [];
    for (int i = 0; i < 12; i++) {
      ans.add(
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                data1[i]["house_id"].toString(),
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text("Start Degrees: ${data1[i]["start_degree"].toString()}"),
              Text("End Degree: ${data1[i]["end_degree"].toString()}"),
              Text("Sign: ${data1[i]["sign"].toString()}"),
              Divider(),
            ],
          ),
        ),
      );
    }
    return ans;
  }

  List<Widget> getAspects(dynamic data1) {
    List<Widget> ans = [];
    for (int i = 0; i < 12; i++) {
      ans.add(
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                  "Aspecting Planet: ${data1[i]["aspecting_planet"].toString()}"),
              Text(
                  "Aspected Planet: ${data1[i]["aspected_planet"].toString()}"),
              Text(
                  "Aspecting Planet Id: ${data1[i]["aspecting_planet_id"].toString()}"),
              Text(
                  "Aspected Planet Id: ${data1[i]["aspected_planet_id"].toString()}"),
              Text("Type: ${data1[i]["type"].toString()}"),
              Text("Orb: ${data1[i]["orb"].toString()}"),
              Text("Diff: ${data1[i]["diff"].toString()}"),
              Divider(),
            ],
          ),
        ),
      );
    }
    return ans;
  }
}

class TropicalTransitsDailyPage extends StatelessWidget {
  dynamic data;

  TropicalTransitsDailyPage({this.data});

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
                  "Transtion Date",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(data["transit_date"]),
              ],
            ),
            color: Colors.lightBlueAccent,
          ),
          ComfyBox(
            child: Column(
              children: <Widget>[
                Text(
                  "Ascendant",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(data["ascendant"]),
              ],
            ),
            color: Colors.lightBlueAccent,
          ),
          ComfyBox(
            child: Column(
              children: <Widget>[
                Text(
                  "Transit House",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: getTransitHouse(data["transit_house"]),
                )
              ],
            ),
            color: Colors.lightBlueAccent,
          ),
          ComfyBox(
            child: Column(
              children: <Widget>[
                Text(
                  "Transit Relation",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: getTransitRelation(data["transit_relation"]),
                )
              ],
            ),
            color: Colors.lightBlueAccent,
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text(
                  "Moon Phase",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: getMoonPhases(data["moon_phase"]),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  List<Widget> getTransitHouse(dynamic data1) {
    List<Widget> ans = [];
    int j = 0;
    //print(j);
    //print(data1[j]);
    while (true) {
      try {
        print(data1[j]);
        j++;
        if (j > 10000) break;
      } catch (e) {
        break;
      }
    }

    //print(j);
    for (int i = 0; i < j; i++) {
      ans.add(
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Planet: ${data1[i]["planet"].toString()}"),
              Text("Natal Sign: ${data1[i]["natal_sign"].toString()}"),
              Text("Transit House: ${data1[i]["transit_house"].toString()}"),
              Text("Retrograde: ${data1[i]["is_retrograde"] ? "Yes" : "No"}"),
              Divider(),
            ],
          ),
        ),
      );
    }
    return ans;
  }

  List<Widget> getTransitRelation(dynamic data1) {
    List<Widget> ans = [];
    int j = 0;
    //print(j);
    //print(data1[j]);
    while (true) {
      try {
        print(data1[j]);
        j++;
        if (j > 10000) break;
      } catch (e) {
        break;
      }
    }

    //print(j);
    for (int i = 0; i < j; i++) {
      ans.add(
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Transit Planet: ${data1[i]["transit_planet"].toString()}"),
              Text("Natal Planet: ${data1[i]["natal_planet"].toString()}"),
              Text("Type: ${data1[i]["type"].toString()}"),
              Text("Orb: ${data1[i]["orb"]}"),
              Divider(),
            ],
          ),
        ),
      );
    }
    return ans;
  }

  List<Widget> getMoonPhases(dynamic data1) {
    List<Widget> ans = [];
    int j = 0;
    //print(j);
    //print(data1[j]);
    while (true) {
      try {
        print(data1[j]);
        j++;
        if (j > 10000) break;
      } catch (e) {
        break;
      }
    }

    //print(j);
    for (int i = 0; i < j; i++) {
      ans.add(
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Phase Type: ${data1[i]["phase_type"].toString()}"),
              Text("Date: ${data1[i]["date"].toString()}"),
              Text("Sign: ${data1[i]["sign"].toString()}"),
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

class TropicalTransitsWeeklyPage extends StatelessWidget {
  dynamic data;

  TropicalTransitsWeeklyPage({this.data});

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
                  "Transtion Week",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text("${data["week_start_date"]} - ${data["week_end_date"]}"),
              ],
            ),
            color: Colors.lightBlueAccent,
          ),
          ComfyBox(
            child: Column(
              children: <Widget>[
                Text(
                  "Ascendant",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(data["ascendant"]),
              ],
            ),
            color: Colors.lightBlueAccent,
          ),
          ComfyBox(
            child: Column(
              children: <Widget>[
                Text(
                  "Transit Relation",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: getTransitRelation(data["transit_relation"]),
                )
              ],
            ),
            color: Colors.lightBlueAccent,
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text(
                  "Moon Phase",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: getMoonPhases(data["moon_phase"]),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  List<Widget> getTransitRelation(dynamic data1) {
    List<Widget> ans = [];
    int j = 0;
    //print(j);
    //print(data1[j]);
    while (true) {
      try {
        print(data1[j]);
        j++;
        if (j > 10000) break;
      } catch (e) {
        break;
      }
    }

    //print(j);
    for (int i = 0; i < j; i++) {
      ans.add(
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Transit Planet: ${data1[i]["transit_planet"].toString()}"),
              Text("Natal Planet: ${data1[i]["natal_planet"].toString()}"),
              Text("Type: ${data1[i]["type"].toString()}"),
              Text("Orb: ${data1[i]["orb"]}"),
              Divider(),
            ],
          ),
        ),
      );
    }
    return ans;
  }

  List<Widget> getMoonPhases(dynamic data1) {
    List<Widget> ans = [];
    int j = 0;
    //print(j);
    //print(data1[j]);
    while (true) {
      try {
        print(data1[j]);
        j++;
        if (j > 10000) break;
      } catch (e) {
        break;
      }
    }

    //print(j);
    for (int i = 0; i < j; i++) {
      ans.add(
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Phase Type: ${data1[i]["phase_type"].toString()}"),
              Text("Date: ${data1[i]["date"].toString()}"),
              Text("Sign: ${data1[i]["sign"].toString()}"),
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

class TropicalTransitsMonthlyPage extends StatelessWidget {
  dynamic data;

  TropicalTransitsMonthlyPage({this.data});

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
                  "Transtion Month",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text("${data["month_start_date"]} - ${data["month_end_date"]}"),
              ],
            ),
            color: Colors.lightBlueAccent,
          ),
          ComfyBox(
            child: Column(
              children: <Widget>[
                Text(
                  "Ascendant",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(data["ascendant"]),
              ],
            ),
            color: Colors.lightBlueAccent,
          ),
          ComfyBox(
            child: Column(
              children: <Widget>[
                Text(
                  "Transit Relation",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: getTransitRelation(data["transit_relation"]),
                )
              ],
            ),
            color: Colors.lightBlueAccent,
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text(
                  "Moon Phase",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: getMoonPhases(data["moon_phase"]),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  List<Widget> getTransitRelation(dynamic data1) {
    List<Widget> ans = [];
    int j = 0;
    //print(j);
    //print(data1[j]);
    while (true) {
      try {
        print(data1[j]);
        j++;
        if (j > 10000) break;
      } catch (e) {
        break;
      }
    }

    //print(j);
    for (int i = 0; i < j; i++) {
      ans.add(
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Transit Planet: ${data1[i]["transit_planet"].toString()}"),
              Text("Natal Planet: ${data1[i]["natal_planet"].toString()}"),
              Text("Type: ${data1[i]["type"].toString()}"),
              Text("Orb: ${data1[i]["orb"]}"),
              Divider(),
            ],
          ),
        ),
      );
    }
    return ans;
  }

  List<Widget> getMoonPhases(dynamic data1) {
    List<Widget> ans = [];
    int j = 0;
    //print(j);
    //print(data1[j]);
    while (true) {
      try {
        print(data1[j]);
        j++;
        if (j > 10000) break;
      } catch (e) {
        break;
      }
    }

    //print(j);
    for (int i = 0; i < j; i++) {
      ans.add(
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Phase Type: ${data1[i]["phase_type"].toString()}"),
              Text("Date: ${data1[i]["date"].toString()}"),
              Text("Sign: ${data1[i]["sign"].toString()}"),
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
