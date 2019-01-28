import 'dart:convert';

import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:gemselections/Pages/astrology/matchmaking.dart';
import 'package:gemselections/Pages/mainscaffold.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class IndianAstrologyPage extends StatefulWidget {
  @override
  _IndianAstrologyPageState createState() => _IndianAstrologyPageState();
}

class _IndianAstrologyPageState extends State<IndianAstrologyPage> {
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
                      builder: (context) => IndianSinglePage(
                            predicate: "general_house_report/sun",
                          )));
            },
            child: Text("General House Report : Sun"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => IndianSinglePage(
                            predicate: "general_house_report/moon",
                          )));
            },
            child: Text("General House Report : Moon"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => IndianSinglePage(
                            predicate: "general_house_report/mars",
                          )));
            },
            child: Text("General House Report : Mars"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => IndianSinglePage(
                            predicate: "general_house_report/mercury",
                          )));
            },
            child: Text("General House Report : Mercury"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => IndianSinglePage(
                            predicate: "general_house_report/jupiter",
                          )));
            },
            child: Text("General House Report : Jupiter"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => IndianSinglePage(
                            predicate: "general_house_report/venus",
                          )));
            },
            child: Text("General House Report : Venus"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => IndianSinglePage(
                            predicate: "general_house_report/saturn",
                          )));
            },
            child: Text("General House Report : Saturn"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => IndianSinglePage(
                            predicate: "general_ascendant_report",
                          )));
            },
            child: Text("General Ascendant Report"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => IndianSinglePage(
                            predicate: "planet_nature",
                          )));
            },
            child: Text("Planet Nature"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => IndianSinglePage(
                            predicate: "moon_biorhythm",
                          )));
            },
            child: Text("Moon Biorhythm"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => IndianSinglePage(
                            predicate: "kalsarpa_details",
                          )));
            },
            child: Text("Kalsarpa Details"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => IndianSinglePage(
                            predicate: "basic_astro",
                          )));
            },
            child: Text("Basic Astro Details"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => IndianSinglePage(
                            predicate: "bhav_madhya",
                          )));
            },
            child: Text("Madhya Bhav"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => IndianSinglePage(
                            predicate: "ayanamsha",
                          )));
            },
            child: Text("Ayanamsha"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => IndianSinglePage(
                            predicate: "major_chardasha",
                          )));
            },
            child: Text("Major Chardasha"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => IndianSinglePage(
                            predicate: "current_chardasha",
                          )));
            },
            child: Text("Current Chardasha"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => IndianSinglePage(
                            predicate: "current_chardasha",
                          )));
            },
            child: Text("Sub Chardasha"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => IndianSinglePage(
                            predicate: "current_chardasha",
                          )));
            },
            child: Text("Sub Sub Chardasha"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => IndianSinglePage(
                            predicate: "basic_gem_suggestion",
                          )));
            },
            child: Text("Basic Gem Suggestion"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => IndianSinglePage(
                            predicate: "basic_panchang",
                          )));
            },
            child: Text("Basic Panchang"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => IndianSinglePage(
                            predicate: "planet_panchang",
                          )));
            },
            child: Text("Planet Panchang"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => IndianSinglePage(
                            predicate: "major_yogini_dasha",
                          )));
            },
            child: Text("Yogini Dasha"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => IndianSinglePage(
                            predicate: "numero_report",
                          )));
            },
            child: Text("Numerology Report"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => IndianSinglePage(
                            predicate: "numero_fav_time",
                          )));
            },
            child: Text("Numerology Favourable Time"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => IndianSinglePage(
                            predicate: "numero_place_vastu",
                          )));
            },
            child: Text("Numerology Place Vastu"),
          ),FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => IndianSinglePage(
                            predicate: "numero_prediction/daily",
                          )));
            },
            child: Text("Numerology Prediction"),
          ),
        ],
      ),
    );
  }
}

class IndianSinglePage extends StatefulWidget {
  String predicate;

  IndianSinglePage({this.predicate});

  @override
  _IndianSinglePageState createState() => _IndianSinglePageState();
}

class _IndianSinglePageState extends State<IndianSinglePage> {
  TextEditingController nameController = TextEditingController(),
      tzoneController = TextEditingController(),
      lat_controller = TextEditingController(),
      lon_controller = TextEditingController();
  final dateFormat = DateFormat("EEEE, MMMM d, yyyy 'at' h:mma");
  DateTime date;

  Future<dynamic> submitForm(Map<String, dynamic> data) async {
    String url = "https://json.astrologyapi.com/v1/" + widget.predicate;
    //print(data);
    print(url);

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
              keyboardType: TextInputType.number,
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
              dynamic results = {};
              submitForm(data).then((val) {
                results = val;
                //print(results);
                if (results != null) {
                  //print("Results Type: ${results.runtimeType}");
                  //print(widget.predicate);
                  Widget nextWidget;
                  switch (widget.predicate) {
                    case "general_house_report/sun":
                      nextWidget = GeneralHouseReportSun(
                        data: results,
                      );
                      break;
                    case "general_house_report/moon":
                      nextWidget = GeneralHouseReportSun(
                        data: results,
                      );
                      break;
                    case "general_house_report/mars":
                      nextWidget = GeneralHouseReportSun(
                        data: results,
                      );
                      break;
                    case "general_house_report/mercury":
                      nextWidget = GeneralHouseReportSun(
                        data: results,
                      );
                      break;
                    case "general_house_report/jupiter":
                      nextWidget = GeneralHouseReportSun(
                        data: results,
                      );
                      break;
                    case "general_house_report/venus":
                      nextWidget = GeneralHouseReportSun(
                        data: results,
                      );
                      break;
                    case "general_house_report/saturn":
                      nextWidget = GeneralHouseReportSun(
                        data: results,
                      );
                      break;
                    case "general_ascendant_report":
                      nextWidget = GeneralAscendentReportPage(
                        data: results,
                      );
                      break;
                    case "planet_nature":
                      nextWidget = PlanetNatureReport(
                        data: results,
                      );
                      break;
                    case "moon_biorhythm":
                      nextWidget = MoonBiorhythmPage(
                        data: results,
                      );
                      break;
                    case "kalsarpa_details":
                      nextWidget = KalSarpDetails(
                        data: results,
                      );
                      break;
                    case "basic_astro":
                      nextWidget = BasicAstroPage(
                        data: results,
                      );
                      break;
                    case "bhav_madhya":
                      nextWidget = BhavMadhyaPage(
                        data: results,
                      );
                      break;
                    case "ayanamsha":
                      nextWidget = AyanmashaPage(
                        data: results,
                      );
                      break;
                    case "major_chardasha":
                      nextWidget = MajorCharDasha(
                        data: results,
                      );
                      break;
                    case "current_chardasha":
                      nextWidget = CurrentCharDasha(
                        data: results,
                      );
                      break;
                    case "sub_chardasha":
                      nextWidget = SubCharDasha(
                        data: results,
                      );
                      break;
                    case "basic_gem_suggestion":
                      nextWidget = GemstoneSuggestion(
                        data: results,
                      );
                      break;
                    case "basic_panchang":
                      nextWidget = BasicPanchang(
                        data: results,
                      );
                      break;
                    case "planet_panchang":
                      nextWidget = PlanetPanchang(
                        data: results,
                      );
                      break;
                    case "major_yogini_dasha":
                      nextWidget = YoginiDasha(
                        data: results,
                      );
                      break;
                    case "numero_report":
                      nextWidget = NumerologyReport(
                        data: results,
                      );
                      break;
                    case "numero_fav_time":
                      nextWidget = NumerologyFavourlableTime(
                        data: results,
                      );
                      break;
                    case "numero_place_vastu":
                      nextWidget = NumerologyPlaceVastu(
                        data: results,
                      );
                      break;
                    case "numero_prediction/daily":
                      nextWidget = NumerologyDailyPrediction(
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

class IndianDoublePage extends StatefulWidget {
  String predicate;

  IndianDoublePage({this.predicate});

  @override
  _IndianDoublePageState createState() => _IndianDoublePageState();
}

class _IndianDoublePageState extends State<IndianDoublePage> {
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
            color: Colors.blue,
            child: Text("Enter Primary Data"),
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
            color: Colors.blue,
            child: Text("Enter Secondary Data"),
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
              Map<String, dynamic> results = {};
              submitForm(data).then((val) {
                results = val;
                //print(results);
                if (results != null) {
                  //print("Results Type: ${results.runtimeType}");
                  //print(widget.predicate);
                  Widget nextWidget;
                  switch (widget.predicate) {
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

class GeneralHouseReportSun extends StatelessWidget {
  dynamic data;

  GeneralHouseReportSun({this.data});

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
                  data["planet"],
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(data["house_report"])
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GeneralAscendentReportPage extends StatelessWidget {
  dynamic data;

  GeneralAscendentReportPage({this.data});

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
                  data["asc_report"]["ascendant"],
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(data["asc_report"]["report"])
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PlanetNatureReport extends StatelessWidget {
  dynamic data;

  PlanetNatureReport({this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
      ),
      body: ListView(
        children: [
          ComfyBox(
            color: Colors.lightGreenAccent,
            child: Column(
              children: <Widget>[
                Text(
                  "Good",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: data["GOOD"].length,
                  itemBuilder: (context, index) => Text(
                        data["GOOD"][index],
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                ),
              ],
            ),
          ),
          ComfyBox(
            color: Colors.orange,
            child: Column(
              children: <Widget>[
                Text(
                  "Bad",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: data["BAD"].length,
                  itemBuilder: (context, index) => Text(
                        data["BAD"][index],
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                ),
              ],
            ),
          ),
          ComfyBox(
            color: Colors.red,
            child: Column(
              children: <Widget>[
                Text(
                  "Killer",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: data["KILLER"].length,
                  itemBuilder: (context, index) => Text(
                        data["KILLER"][index],
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                ),
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text(
                  "Yogakraka",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: data["YOGAKARAKA"].length,
                  itemBuilder: (context, index) => Text(
                        data["YOGAKARAKA"][index],
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
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

class MoonBiorhythmPage extends StatelessWidget {
  dynamic data;

  MoonBiorhythmPage({this.data});

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Birth Pakshi",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text(data["birth_pakshi"],
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Divider(),
                Text("Name Letter",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                ListView.builder(
                  itemBuilder: (context, i) =>
                      Text(data["birth_pakshi_details"]["name_letter"][i]),
                  itemCount: data["birth_pakshi_details"]["name_letter"].length,
                  shrinkWrap: true,
                ),
                Divider(),
                Text("Death Day",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                ListView.builder(
                  itemBuilder: (context, i) =>
                      Text(data["birth_pakshi_details"]["death_day"][i]),
                  itemCount: data["birth_pakshi_details"]["death_day"].length,
                  shrinkWrap: true,
                ),
                Divider(),
                Text("Day Ruling Days",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                ListView.builder(
                  itemBuilder: (context, i) =>
                      Text(data["birth_pakshi_details"]["day_ruling_days"][i]),
                  itemCount:
                      data["birth_pakshi_details"]["day_ruling_days"].length,
                  shrinkWrap: true,
                ),
                Divider(),
                Text("Night Ruling Days",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                ListView.builder(
                  itemBuilder: (context, i) => Text(
                      data["birth_pakshi_details"]["night_ruling_days"][i]),
                  itemCount:
                      data["birth_pakshi_details"]["night_ruling_days"].length,
                  shrinkWrap: true,
                ),
                Divider(),
                Text("Color", style: TextStyle(fontWeight: FontWeight.bold)),
                Text(data["birth_pakshi_details"]["color"]),
                Divider(),
                Text("Direction",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text(data["birth_pakshi_details"]["direction"]),
                Divider(),
                Text("Enemy", style: TextStyle(fontWeight: FontWeight.bold)),
                ListView.builder(
                  itemBuilder: (context, i) =>
                      Text(data["birth_pakshi_details"]["enemy"][i]),
                  itemCount: data["birth_pakshi_details"]["enemy"].length,
                  shrinkWrap: true,
                ),
                Divider(),
                Text("Friend", style: TextStyle(fontWeight: FontWeight.bold)),
                ListView.builder(
                  itemBuilder: (context, i) =>
                      Text(data["birth_pakshi_details"]["friend"][i]),
                  itemCount: data["birth_pakshi_details"]["friend"].length,
                  shrinkWrap: true,
                ),
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Requested Day",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text(data["requested_day"]),
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Activity Cycle",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text("Day", style: TextStyle(fontWeight: FontWeight.bold)),
                ListView.builder(
                  itemBuilder: (context, i) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                              "Start Time : ${data["activity_cycle"]["day"][i]["start_time"].toString()}"),
                          Text(
                              "End Time : ${data["activity_cycle"]["day"][i]["end_time"].toString()}"),
                          Text(
                              "Start Hours : ${data["activity_cycle"]["day"][i]["start_hours"].toString()}"),
                          Text(
                              "End Hours : ${data["activity_cycle"]["day"][i]["end_hours"].toString()}"),
                          Text(
                              "Activity : ${data["activity_cycle"]["day"][i]["activity"].toString()}"),
                          Divider()
                        ],
                      ),
                  itemCount: data["activity_cycle"]["day"].length,
                  shrinkWrap: true,
                ),
                Text("Night", style: TextStyle(fontWeight: FontWeight.bold)),
                ListView.builder(
                  itemBuilder: (context, i) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                              "Start Time : ${data["activity_cycle"]["night"][i]["start_time"].toString()}"),
                          Text(
                              "End Time : ${data["activity_cycle"]["night"][i]["end_time"].toString()}"),
                          Text(
                              "Start Hours : ${data["activity_cycle"]["night"][i]["start_hours"].toString()}"),
                          Text(
                              "End Hours : ${data["activity_cycle"]["night"][i]["end_hours"].toString()}"),
                          Text(
                              "Activity : ${data["activity_cycle"]["night"][i]["activity"].toString()}"),
                          Divider()
                        ],
                      ),
                  itemCount: data["activity_cycle"]["night"].length,
                  shrinkWrap: true,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class KalSarpDetails extends StatelessWidget {
  dynamic data;

  KalSarpDetails({this.data});

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
                Text("Present : ${data["present"] ? "Yes" : "No"}",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text("${data["type"] ?? ""}",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          (data["report"] != null)
              ? ComfyBox(
                  color: Colors.lightBlueAccent,
                  child: Column(
                    children: <Widget>[
                      Text("Report",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          )),
                      Text(data["report"]["report"]),
                    ],
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}

class BasicAstroPage extends StatelessWidget {
  dynamic data;

  BasicAstroPage({this.data});

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
                Text("Varna",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text(data["Varna"]),
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text("Vashya",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text(data["Vashya"]),
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text("Yoni",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text(data["Yoni"]),
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text("Sign Lord",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text(data["sign_lord"].toString()),
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text("Sign",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text(data["sign"].toString()),
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text("Naksahtra",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text(data["Naksahtra"]),
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text("Naksahtra Lord",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text(data["naksahtra_lord"]),
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text("Nakshatra Charan",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text(data["nakshatra_charan"].toString()),
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text("Name Alphabet",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text(data["name_alphabet"].toString()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BhavMadhyaPage extends StatelessWidget {
  dynamic data;

  BhavMadhyaPage({this.data});

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
                Text("Ascendant",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text(data["ascendant"].toString(),
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text("Mid Heaven",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text(data["midheaven"].toString(),
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text("Ayanamsha",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text(data["ayanamsha"].toString(),
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text("Madhya Bhav",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                ListView.builder(
                  physics: ScrollPhysics(),
                  itemBuilder: (c, i) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(data["bhav_madhya"][i]["sign"].toString(),
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              )),
                          Text(
                              "Degree ${data["bhav_madhya"][i]["degree"].toString()}"),
                          Text(
                              "House ${data["bhav_madhya"][i]["house"].toString()}"),
                          Text(
                              "Normal Degree ${data["bhav_madhya"][i]["norm_degree"].toString()}"),
                          Divider(),
                        ],
                      ),
                  itemCount: data["bhav_madhya"].length,
                  shrinkWrap: true,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AyanmashaPage extends StatelessWidget {
  dynamic data;

  AyanmashaPage({this.data});

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
                Text("Ayanamsha",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Divider(),
                ListView.builder(
                  itemBuilder: (c, i) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(data[i]["type"],
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                            data[i]["degree"].toString(),
                          ),
                          Text(
                            data[i]["formatted"],
                          ),
                          Divider()
                        ],
                      ),
                  physics: ScrollPhysics(),
                  itemCount: data.length,
                  shrinkWrap: true,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MajorCharDasha extends StatelessWidget {
  dynamic data;

  MajorCharDasha({this.data});

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
                Text("Major Char Dasha",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                ListView.builder(
                  itemBuilder: (c, i) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(data[i]["sign_name"],
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(data[i]["duration"]),
                          Text(
                              "${data[i]["start_date"]} - ${data[i]["end_date"]}"),
                          Divider()
                        ],
                      ),
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: data.length,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CurrentCharDasha extends StatelessWidget {
  dynamic data;

  CurrentCharDasha({this.data});

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
                Text("Dasha Date",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text(data["dasha_date"])
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text("Major Dasha",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text(data["major_dasha"]["sign_name"],
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text(data["major_dasha"]["duration"].toString()),
                Text(
                    "${data["major_dasha"]["start_date"].toString()} - ${data["major_dasha"]["end_date"].toString()}"),
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text("Sub Dasha",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text(data["sub_dasha"]["sign_name"],
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text(data["sub_dasha"]["duration"].toString()),
                Text(
                    "${data["sub_dasha"]["start_date"].toString()} - ${data["sub_dasha"]["end_date"].toString()}"),
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text("Sub Sub Dasha",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text(data["sub_sub_dasha"]["sign_name"],
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text(
                    "${data["sub_sub_dasha"]["start_date"].toString()} - ${data["sub_sub_dasha"]["end_date"].toString()}"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SubCharDasha extends StatelessWidget {
  dynamic data;

  SubCharDasha({this.data});

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
                Text("Major Dasha",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text(data["major_dasha"]["sign_name"],
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text(data["major_dasha"]["duration"].toString()),
                Text(
                    "${data["major_dasha"]["start_date"].toString()} - ${data["major_dasha"]["end_date"].toString()}"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GemstoneSuggestion extends StatelessWidget {
  dynamic data;

  GemstoneSuggestion({this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
      ),
      body: ListView(
        children: [
          ComfyBox(
            color: Colors.lightGreenAccent,
            child: Column(
              children: <Widget>[
                Text("Life",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text("Primary Gem : ${data["LIFE"]["name"]}",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text("Semi Gem : ${data["LIFE"]["semi_gem"]}"),
                Text("Wear Finger : ${data["LIFE"]["wear_finger"]}"),
                Text("Weight Caret : ${data["LIFE"]["weight_caret"]}"),
                Text("Wear Metal : ${data["LIFE"]["wear_metal"]}"),
                Text("Wear Day : ${data["LIFE"]["wear_day"]}"),
                Text("Gem Deity: ${data["LIFE"]["gem_deity"]}"),
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text("Benefic",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text("Primary Gem : ${data["BENEFIC"]["name"]}",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text("Semi Gem : ${data["BENEFIC"]["semi_gem"]}"),
                Text("Wear Finger : ${data["BENEFIC"]["wear_finger"]}"),
                Text("Weight Caret : ${data["BENEFIC"]["weight_caret"]}"),
                Text("Wear Metal : ${data["BENEFIC"]["wear_metal"]}"),
                Text("Wear Day : ${data["BENEFIC"]["wear_day"]}"),
                Text("Gem Deity: ${data["BENEFIC"]["gem_deity"]}"),
              ],
            ),
          ),
          ComfyBox(
            color: Colors.pinkAccent,
            child: Column(
              children: <Widget>[
                Text("Lucky",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text("Primary Gem : ${data["LUCKY"]["name"]}",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text("Semi Gem : ${data["LUCKY"]["semi_gem"]}"),
                Text("Wear Finger : ${data["LUCKY"]["wear_finger"]}"),
                Text("Weight Caret : ${data["LUCKY"]["weight_caret"]}"),
                Text("Wear Metal : ${data["LUCKY"]["wear_metal"]}"),
                Text("Wear Day : ${data["LUCKY"]["wear_day"]}"),
                Text("Gem Deity: ${data["LUCKY"]["gem_deity"]}"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BasicPanchang extends StatelessWidget {
  dynamic data;

  BasicPanchang({this.data});

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
                Text("Day",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text(data["day"].toString(),
                    style: TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text("Tithi",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text(data["tithi"].toString(),
                    style: TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text("Yog",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text(data["yog"].toString(),
                    style: TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text("Nakshatra",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text(data["nakshatra"].toString(),
                    style: TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text("Karan",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text(data["karan"].toString(),
                    style: TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text("Sunrise",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text(data["sunrise"].toString(),
                    style: TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text("Sunset",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text(data["sunset"].toString(),
                    style: TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PlanetPanchang extends StatelessWidget {
  dynamic data;

  PlanetPanchang({this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
      ),
      body: ListView.builder(
        itemBuilder: (c, i) => ComfyBox(
              color: Colors.lightBlueAccent,
              child: Column(
                children: <Widget>[
                  Text(data[i]["name"],
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      )),
                  Text("Full Degree : ${data[i]["fullDegree"].toString()}"),
                  Text("Norm Degree : ${data[i]["normDegree"].toString()}"),
                  Text("Is Retro : ${data[i]["isRetro"]}"),
                  Text("Sign Lord : ${data[i]["sign_lord"]}"),
                  Text("Nakshatra : ${data[i]["nakshatra"]}"),
                  Text("Nakshatra Lord : ${data[i]["nakshatra_lord"]}"),
                ],
              ),
            ),
        itemCount: data.length,
      ),
    );
  }
}

class YoginiDasha extends StatelessWidget {
  dynamic data;

  YoginiDasha({this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
      ),
      body: ListView.builder(
        itemBuilder: (c, i) => ComfyBox(
              color: Colors.lightBlueAccent,
              child: Column(
                children: <Widget>[
                  Text(data[i]["dasha_name"],
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      )),
                  Text("Start Date : ${data[i]["start_date"].toString()}"),
                  Text("End Date : ${data[i]["end_date"].toString()}"),
                  Text("Duration : ${data[i]["duration"].toString()}"),
                ],
              ),
            ),
        itemCount: data.length,
      ),
    );
  }
}

class NumerologyReport extends StatelessWidget {
  dynamic data;

  NumerologyReport({this.data});

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
                Text(data["title"],
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text(data["description"]),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class NumerologyFavourlableTime extends StatelessWidget {
  dynamic data;

  NumerologyFavourlableTime({this.data});

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
                Text(data["title"],
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text(data["description"]),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class NumerologyPlaceVastu extends StatelessWidget {
  dynamic data;

  NumerologyPlaceVastu({this.data});

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
                Text(data["title"],
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text(data["description"]),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class NumerologyDailyPrediction extends StatelessWidget {
  dynamic data;

  NumerologyDailyPrediction({this.data});

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
                Text("Prediction",style : TextStyle(fontSize:18.0,fontWeight:FontWeight.bold,)),
                Text(data["prediction"]),
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text("Lucky Color",style : TextStyle(fontSize:18.0,fontWeight:FontWeight.bold,)),
                Text(data["lucky_color"]),
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text("Lucky Number",style : TextStyle(fontSize:18.0,fontWeight:FontWeight.bold,)),
                Text(data["lucky_number"]),
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text("Prediction Date",style : TextStyle(fontSize:18.0,fontWeight:FontWeight.bold,)),
                Text(data["prediction_date"]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}