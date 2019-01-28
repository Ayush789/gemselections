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
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WesternSinglePage(
                            predicate: "solar_return_details",
                          )));
            },
            child: Text("Solar Return Details"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WesternSinglePage(
                            predicate: "solar_return_planets",
                          )));
            },
            child: Text("Solar Return Planets"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WesternSinglePage(
                            predicate: "solar_return_house_cusps",
                          )));
            },
            child: Text("Solar Return Planets Houses"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WesternSinglePage(
                            predicate: "lunar_metrics",
                          )));
            },
            child: Text("Lunar Metrics"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WesternDoublePage(
                            predicate: "synastry_horoscope",
                          )));
            },
            child: Text("Synastry Horoscope"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WesternSinglePage(
                            predicate: "personality_report/tropical",
                          )));
            },
            child: Text("Personality Report"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WesternSinglePage(
                            predicate: "romantic_personality_report/tropical",
                          )));
            },
            child: Text("Romantic Personality Report"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WesternSinglePage(
                            predicate:
                                "personalized_planet_prediction/daily/moon",
                          )));
            },
            child: Text("Personalised Planet Report"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WesternDoublePage(
                            predicate: "friendship_report/tropical",
                          )));
            },
            child: Text("Friendship Report Horoscope"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WesternDoublePage(
                            predicate: "karma_destiny_report/tropical",
                          )));
            },
            child: Text("Karma Destiny Report"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WesternDoublePage(
                            predicate: "love_compatibility_report/tropical",
                          )));
            },
            child: Text("Love Compatibility Report"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WesternSinglePage(
                            predicate: "romantic_forecast_report/tropical",
                          )));
            },
            child: Text("Romantic Forecast Report"),
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

  Future<dynamic> submitForm(Map<String, dynamic> data) async {
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

    print(resp.body);
    if (resp.statusCode == 200)
      return json.decode(resp.body);
    else
      return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enter Details"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Name",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DateTimePickerFormField(
              format: dateFormat,
              decoration: InputDecoration(
                labelText: "Date and Time of Birth",
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue)),
              ),
              onChanged: (dt) => setState(() => date = dt),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              controller: lat_controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Birth Latitude"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              controller: lon_controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Birth Longitude"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: tzoneController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Time Zone",
              ),
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
              dynamic results= {};
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
                    case "solar_return_details":
                      nextWidget = SolarReturnDetailsPage(
                        data: results,
                      );
                      break;
                    case "solar_return_planets":
                      nextWidget = SolarPlnetDetailsPage(
                        data: results,
                      );
                      break;
                    case "solar_return_house_cusps":
                      nextWidget = SolarPlanetHousesPage(
                        data: results,
                      );
                      break;
                    case "lunar_metrics":
                      nextWidget = LunarMetricsPage(
                        data: results,
                      );
                      break;
                    case "personality_report/tropical":
                      nextWidget = PersonalityReportPage(
                        data: results,
                      );
                      break;
                    case "romantic_personality_report/tropical":
                      nextWidget = RomanticPersonalityReportPage(
                        data: results,
                      );
                      break;
                    case "personalized_planet_prediction/daily/sun":
                      nextWidget = PersonalisedPlanetReportPage(
                        data: results,
                      );
                      break;
                    case "romantic_forecast_report/tropical":
                      nextWidget = RomanticForecastPage(
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

class WesternDoublePage extends StatefulWidget {
  String predicate;

  WesternDoublePage({this.predicate});

  @override
  _WesternDoublePageState createState() => _WesternDoublePageState();
}

class _WesternDoublePageState extends State<WesternDoublePage> {
  TextEditingController p_nameController = TextEditingController(),
      p_tzoneController = TextEditingController(),
      p_lat_controller = TextEditingController(),
      p_lon_controller = TextEditingController();
  final dateFormat = DateFormat("EEEE, MMMM d, yyyy 'at' h:mma");
  DateTime p_date = DateTime.now();

  TextEditingController s_nameController = TextEditingController(),
      s_tzoneController = TextEditingController(),
      s_lat_controller = TextEditingController(),
      s_lon_controller = TextEditingController();
  DateTime s_date = DateTime.now();

  Future<dynamic> submitForm(Map<String, dynamic> data) async {
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

    print(resp.body);
    if (resp.statusCode == 200)
      return json.decode(resp.body);
    else
      return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enter Details"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.blue,
            child: Text("Enter Primary Data",
              style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: p_nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Name",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DateTimePickerFormField(
              format: dateFormat,
              decoration: InputDecoration(
                labelText: "Date and Time of Birth",
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue)),
              ),
              onChanged: (dt) => setState(() => p_date = dt),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              controller: p_lat_controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Birth Latitude"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              controller: p_lon_controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Birth Longitude"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: p_tzoneController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Time Zone",
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.blue,
            child: Text(
              "Enter Secondary Data",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: s_nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Name",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DateTimePickerFormField(
              format: dateFormat,
              decoration: InputDecoration(
                labelText: "Date and Time of Birth",
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue)),
              ),
              onChanged: (dt) => setState(() => s_date = dt),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              controller: s_lat_controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Birth Latitude"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              controller: s_lon_controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Birth Longitude"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: s_tzoneController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Time Zone",
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          RaisedButton(
            color: Colors.blue,
            onPressed: () {
              Map<String, dynamic> data = {
                "p_day": p_date.day,
                "p_month": p_date.month,
                "p_year": p_date.year,
                "p_hour": p_date.hour,
                "p_min": p_date.minute,
                "p_lat": p_lat_controller.text,
                "p_lon": p_lon_controller.text,
                "p_tzone": p_tzoneController.text,
                "s_day": s_date.day,
                "s_month": s_date.month,
                "s_year": s_date.year,
                "s_hour": s_date.hour,
                "s_min": s_date.minute,
                "s_lat": s_lat_controller.text,
                "s_lon": s_lon_controller.text,
                "s_tzone": s_tzoneController.text,
              };
              dynamic results= {};
              submitForm(data).then((val) {
                results = val;
                //print(results);
                if (results != null) {
                  //print("Results Type: ${results.runtimeType}");
                  //print(widget.predicate);
                  Widget nextWidget;
                  switch (widget.predicate) {
                    case "synastry_horoscope":
                      nextWidget = SynastryHoroscopePage(
                        data: results,
                      );
                      break;
                    case "friendship_report/tropical":
                      nextWidget = FriendshipReportPage(
                        data: results,
                      );
                      break;
                    case "karma_destiny_report/tropical":
                      nextWidget = KarmaDestinyReportPage(
                        data: results,
                      );
                      break;
                    case "love_compatibility_report/tropical":
                      nextWidget = LoveCompatibilityReportPage(
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
    //data1[j]=="1";
    while (true) {
      try {
        data1[j] == "1";
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
    //data1[j]=="1";
    while (true) {
      try {
        data1[j] == "1";
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
    //data1[j]=="1";
    while (true) {
      try {
        data1[j] == "1";
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
    //data1[j]=="1";
    while (true) {
      try {
        data1[j] == "1";
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
    //data1[j]=="1";
    while (true) {
      try {
        data1[j] == "1";
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
    //data1[j]=="1";
    while (true) {
      try {
        data1[j] == "1";
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
    //data1[j]=="1";
    while (true) {
      try {
        data1[j] == "1";
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

class SolarReturnDetailsPage extends StatelessWidget {
  dynamic data;

  SolarReturnDetailsPage({this.data});

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
                Text("Native Birth Date: ${data["native_birth_date"]}"),
                Text("Native Age: ${data["native_age"]}"),
                Text("Solr Return Date: ${data["solar_return_date"]}"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SolarPlnetDetailsPage extends StatelessWidget {
  dynamic data;

  SolarPlnetDetailsPage({this.data});

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
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: getPlanets(data),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  List<Widget> getPlanets(dynamic data1) {
    List<Widget> ans = [];
    int j = 0;
    //print(j);
    //data1[j]=="1";
    while (true) {
      try {
        data1[j] == "1";
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
              Text(
                data1["name"].toString(),
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              Text("Full Degree: ${data1[i]["fullDegree"].toString()}"),
              Text("Norm Degree: ${data1[i]["normDegree"].toString()}"),
              Text("Is Retro: ${data1[i]["isRetro"].toString()}"),
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

class SolarPlanetHousesPage extends StatelessWidget {
  dynamic data;

  SolarPlanetHousesPage({this.data});

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
                  "Houses",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: getSolarReturnHouses(data["houses"]),
                ),
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text(
                  "Ascendant",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(data["ascendant"].toString()),
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text(
                  "Midheaven",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(data["midheaven"].toString()),
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text(
                  "Vertex",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(data["vertex"].toString()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> getSolarReturnHouses(dynamic data1) {
    List<Widget> ans = [];
    int j = 0;
    //print(j);
    //data1[j]=="1";
    while (true) {
      try {
        print(data1[j].toString());
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
              Text(
                data1[i]["house"].toString(),
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              Text("Sign : ${data1[i]["sign"].toString()}"),
              Text("Degree: ${data1[i]["degree"].toString()}"),
              Divider(),
            ],
          ),
        ),
      );
    }
    return ans;
  }
}

class LunarMetricsPage extends StatelessWidget {
  dynamic data;

  LunarMetricsPage({this.data});

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
                  "Lunar Metrics",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("Month :${data["month"]}"),
                Text("Within Perigee Range :${data["within_perigee_range"]}"),
                Text("Distance :${data["distance"]}"),
                Text("Within Apogee Range :${data["within_apogee_range"]}"),
                Text("Apogee Distance :${data["apogee_distance"]}"),
              ],
            ),
            color: Colors.lightBlueAccent,
          )
        ],
      ),
    );
  }
}

class SynastryHoroscopePage extends StatelessWidget {
  dynamic data;

  SynastryHoroscopePage({this.data});

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
                  "First",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: getfirst(data["first"]),
                )
              ],
            ),
            color: Colors.lightBlueAccent,
          ),
          ComfyBox(
            color: Colors.pinkAccent,
            child: Column(
              children: <Widget>[
                Text(
                  "Second",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: getfirst(data["second"]),
                )
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text(
                  "Synastry House 1",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: gethouses(data["synastry"]["house_1"]),
                )
              ],
            ),
          ),
          ComfyBox(
            color: Colors.pinkAccent,
            child: Column(
              children: <Widget>[
                Text(
                  "Synastry House 2",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: gethouses(data["synastry"]["house_2"]),
                )
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text(
                  "Synastry Aspects",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: getaspects(data["synastry"]["aspects"]),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> getfirst(dynamic data1) {
    List<Widget> ans = [];
    int j = 0;
    //print(j);
    //data1[j]=="1";
    while (true) {
      try {
        data1[j] == "1";
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
              Text(
                data1[i]["name"].toString(),
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              Text("Full Degree: ${data1[i]["full_degree"].toString()}"),
              Text("Norm Degree: ${data1[i]["norm_degree"].toString()}"),
              Text("Speed: ${data1[i]["speed"].toString()}"),
              Text("Is Retro: ${data1[i]["isRetro"].toString()}"),
              Text("Sign: ${data1[i]["sign"].toString()}"),
              Text("Sign Id: ${data1[i]["sign_id"].toString()}"),
              Text("House: ${data1[i]["house"].toString()}"),
              Divider(),
            ],
          ),
        ),
      );
    }
    return ans;
  }

  List<Widget> gethouses(dynamic data1) {
    List<Widget> ans = [];
    int j = 0;
    //print(j);
    //data1[j]=="1";
    while (true) {
      try {
        data1[j] == "1";
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
              Text(
                data1[i]["name"].toString(),
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              Text("Synastry House: ${data1[i]["synastry_house"].toString()}"),
              Divider(),
            ],
          ),
        ),
      );
    }
    return ans;
  }

  List<Widget> getaspects(dynamic data1) {
    List<Widget> ans = [];
    int j = 0;
    //print(j);
    //data1[j]=="1";
    while (true) {
      try {
        data1[j] == "1";
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
              Text("First: ${data1[i]["first"].toString()}"),
              Text("Second: ${data1[i]["second"].toString()}"),
              Text("Type: ${data1[i]["type"].toString()}"),
              Text("Orb: ${data1[i]["orb"].toString()}"),
              Divider(),
            ],
          ),
        ),
      );
    }
    return ans;
  }
}

class PersonalityReportPage extends StatelessWidget {
  dynamic data;

  PersonalityReportPage({this.data});

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
                  "Report",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Text(data["report"].toString()),
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text(
                  "Spiritual Lesson",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Text(data["spiritual_lesson"].toString()),
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text(
                  "Key Quality",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Text(data["key_quality"].toString()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RomanticPersonalityReportPage extends StatelessWidget {
  dynamic data;

  RomanticPersonalityReportPage({this.data});

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
                  "Report",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: getReport(data["report"]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  List<Widget> getReport(dynamic data1) {
    List<Widget> ans = [];
    int j = 0;
    //print(j);
    //data1[j]=="1";
    while (true) {
      try {
        //data1[j]=="1";
        data1[j] == "1";
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
              Text("${data1[i].toString()}"),
              Divider(),
            ],
          ),
        ),
      );
    }
    return ans;
  }
}

class PersonalisedPlanetReportPage extends StatelessWidget {
  dynamic data;

  PersonalisedPlanetReportPage({this.data});

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
                  "Report Date",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(data["report_date"].toString()),
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text(
                  "Report",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: getReport(data["personalised_report"]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  List<Widget> getReport(dynamic data1) {
    List<Widget> ans = [];
    int j = 0;
    //print(j);
    //data1[j]=="1";
    while (true) {
      try {
        //data1[j]=="1";
        data1[j] == "1";
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
              Text("${data1[i].toString()}"),
              Divider(),
            ],
          ),
        ),
      );
    }
    return ans;
  }
}

class FriendshipReportPage extends StatelessWidget {
  dynamic data;

  FriendshipReportPage({this.data});

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
                  "Report",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: getReport(data["friendship_report"]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  List<Widget> getReport(dynamic data1) {
    List<Widget> ans = [];
    int j = 0;
    //print(j);
    //data1[j]=="1";
    while (true) {
      try {
        //data1[j]=="1";
        data1[j] == "1";
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
              Text("${data1[i].toString()}"),
              Divider(),
            ],
          ),
        ),
      );
    }
    return ans;
  }
}

class KarmaDestinyReportPage extends StatelessWidget {
  dynamic data;

  KarmaDestinyReportPage({this.data});

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
                  "Report",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: getReport(data["karma_destiny_report"]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  List<Widget> getReport(dynamic data1) {
    List<Widget> ans = [];
    int j = 0;
    //print(j);
    //data1[j]=="1";
    while (true) {
      try {
        //data1[j]=="1";
        data1[j] == "1";
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
              Text("${data1[i].toString()}"),
              Divider(),
            ],
          ),
        ),
      );
    }
    return ans;
  }
}

class LoveCompatibilityReportPage extends StatelessWidget {
  dynamic data;

  LoveCompatibilityReportPage({this.data});

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
                  "Report",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: getReport(data["love_report"]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  List<Widget> getReport(dynamic data1) {
    List<Widget> ans = [];
    int j = 0;
    //print(j);
    //data1[j]=="1";
    while (true) {
      try {
        //data1[j]=="1";
        data1[j] == "1";
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
              Text("${data1[i].toString()}"),
              Divider(),
            ],
          ),
        ),
      );
    }
    return ans;
  }
}

class RomanticForecastPage extends StatelessWidget {
  dynamic data;

  RomanticForecastPage({this.data});

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
                  "Romantic Forecast",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Column(
            children: getReport(data["romantic_forecast"]),
          )
        ],
      ),
    );
  }

  List<Widget> getReport(dynamic data1) {
    List<Widget> ans = [];
    int j = 0;
    //print(j);
    //data1[j]=="1";
    while (true) {
      try {
        //data1[j]=="1";
        data1[j] == "1";
        j++;
        if (j > 10000) break;
      } catch (e) {
        break;
      }
    }

    //print(j);
    for (int i = 0; i < j; i++) {
      ans.add(
        ComfyBox(
          color: Colors.lightBlueAccent,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                    "Planet Postition: ${data1[i]["planet_position"].toString()}"),
                Text("Date: ${data1[i]["date"].toString()}"),
                Text("Forecast: ${data1[i]["forecast"].toString()}"),
                Divider(),
              ],
            ),
          ),
        ),
      );
    }
    return ans;
  }
}

List<Widget> getMonPhases(dynamic data1) {
  List<Widget> ans = [];
  int j = 0;
  //print(j);
  //data1[j]=="1";
  while (true) {
    try {
      data1[j] == "1";
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
            Text(
              data1["name"].toString(),
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            Text("Full Degree: ${data1[i]["fullDegree"].toString()}"),
            Text("Norm Degree: ${data1[i]["normDegree"].toString()}"),
            Text("Is Retro: ${data1[i]["isRetro"].toString()}"),
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
