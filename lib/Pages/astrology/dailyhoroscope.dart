import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gemselections/Pages/astrology/matchmaking.dart';
import 'package:gemselections/Pages/mainscaffold.dart';
import 'package:http/http.dart';

class DailyHoroscopes extends StatefulWidget {
  @override
  _DailyHoroscopesState createState() => _DailyHoroscopesState();
}

class _DailyHoroscopesState extends State<DailyHoroscopes> {
  int v1 = 1, v2 = 1;

  Future<Map<String, dynamic>> submitForm(int zodiacSign, int time) async {
    String url = "https://json.astrologyapi.com/v1/horoscope_prediction/";

    switch (time) {
      case 1:
        url = url + "daily/";
        break;
      case 2:
        url = url + "daily/next/";
        break;
      case 3:
        url = url + "daily/previous/";
        break;
      case 4:
        url = url + "weekly/";
        break;
      case 5:
        url = url + "monthly/";
        break;
    }

    switch (zodiacSign) {
      case 1:
        url = url + "aries";
        break;
      case 2:
        url = url + "taurus";
        break;
      case 3:
        url = url + "gemini";
        break;
      case 4:
        url = url + "cancer";
        break;
      case 5:
        url = url + "leo";
        break;
      case 6:
        url = url + "virgo";
        break;
      case 7:
        url = url + "libra";
        break;
      case 8:
        url = url + "scorpio";
        break;
      case 9:
        url = url + "sagittarius";
        break;
      case 10:
        url = url + "capricorn";
        break;
      case 11:
        url = url + "aquarius";
        break;
      case 12:
        url = url + "pisces";
        break;
    }
    //print(data);
    print(url);

    String userid = "601696", APIKey = "8510e537bcc424e154a3860e70e92209";
    String basicauth = "Basic " + base64Encode(utf8.encode("$userid:$APIKey"));
    //print(basicauth);

    var resp = await post(
      url,
      headers: {'Authorization': basicauth, 'Content-Type': 'application/json'},
    );

    print(resp.body);
    if (resp.statusCode == 200)
      return json.decode(resp.body);
    else
      return null;
  }

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.blue,
            child: Text("Daily Horoscope"),
          ),
          Form(
            child: Column(
              children: <Widget>[
                DropdownButtonFormField(
                  items: [
                    DropdownMenuItem<int>(
                      child: Text("Aries (Mar 21 - Apr 19)"),
                      value: 1,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("Taurus (Apr 20 - May 20)"),
                      value: 2,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("Gemini (May 21 - Jun 19)"),
                      value: 3,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("Cancer (Jun 20 - Jul 22)"),
                      value: 4,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("Leo (Jul 23 - Aug 22)"),
                      value: 5,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("Virgo (Aug 23 - Sep 22)"),
                      value: 6,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("Libra (Sep 23 - Oct 22)"),
                      value: 7,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("Scorpio (Oct 23 - Nov 21)"),
                      value: 8,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("Sagittarius (Nov 22 - Dec 21)"),
                      value: 9,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("Capricorn (Dec 22 - Jan 19)"),
                      value: 10,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("Aquarius (Jan 18 - Feb 18)"),
                      value: 11,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("Pisces (Feb 19 - Mar 20)"),
                      value: 12,
                    ),
                  ],
                  value: v1,
                  onChanged: (x) {
                    setState(() {
                      v1 = x;
                    });
                  },
                ),
                DropdownButtonFormField(
                  items: [
                    DropdownMenuItem<int>(
                      child: Text("Today"),
                      value: 1,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("Tomorrow"),
                      value: 2,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("Yesterday"),
                      value: 3,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("Weekly"),
                      value: 4,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("Monthly"),
                      value: 5,
                    ),
                  ],
                  value: v2,
                  onChanged: (x) {
                    setState(() {
                      v2 = x;
                    });
                  },
                ),
                RaisedButton(
                  onPressed: () {
                    submitForm(v1, v2).then((val) {
                      if (val != null) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DailyHoroscopePage(
                                  data: val,
                                ),
                          ),
                        );
                      }
                    });
                  },
                  child: Text("Get Horoscope"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DailyHoroscopePage extends StatelessWidget {
  dynamic data;

  DailyHoroscopePage({this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daily Horoscope"),
      ),
      body: ListView(
        children: [
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text(
                  "Sun Sign",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(data["sun_sign"].toString()),
              ],
            ),
          ),
          ComfyBox(
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
                Text(
                  "Prediction",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: getPredictions(data["prediction"]),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> getPredictions(dynamic data1) {
    List<Widget> ans = [];
    int j = 0;
    //print(j);
    //data1[j]=="1";
    print(data1.runtimeType);
    if (!(data1 is List<dynamic>)) {
      return [Text(data1.toString())];
    }
    while (true) {
      try {
        data1[j] == "1";
        j++;
        if (j > 10000) break;
      } catch (e) {
        break;
      }
    }

    print(j);
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
