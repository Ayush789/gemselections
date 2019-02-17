import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';
import 'package:gemselections/Pages/mainpage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:gemselections/main.dart';

void showItemDialog(Map<String, dynamic> message) {
  print("Got Message ${message["data"]}");

  switch (message["data"]["type"]) {
    case "article":
      showDialog(
        context: notifkey.currentContext,
        builder: (c) => AlertDialog(
              title: Text("A new Article is there"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    message["notification"]["title"],
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    message["notification"]["body"],
                  ),
                ],
              ),
              actions: <Widget>[
                RaisedButton(
                  color: Colors.red,
                  child: Text(
                    "Dismiss",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pop(notifkey.currentContext);
                  },
                ),
                RaisedButton(
                  color: Colors.blue,
                  child: Text(
                    "View",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async {
                    if (await canLaunch(message["data"]["url"])) {
                      launch(message["data"]["url"]);
                    } else {
                      print("Cannot launch ${message["data"]["url"]}");
                    }

                    Navigator.pop(notifkey.currentContext);
                  },
                ),
              ],
            ),
      );
      break;
    case "video":
      showDialog(
        context: notifkey.currentContext,
        builder: (c) => AlertDialog(
              title: Text("A new Video is there"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    message["notification"]["title"],
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    message["notification"]["body"],
                  ),
                ],
              ),
              actions: <Widget>[
                RaisedButton(
                  color: Colors.red,
                  child: Text(
                    "Dismiss",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pop(notifkey.currentContext);
                  },
                ),
                RaisedButton(
                  color: Colors.blue,
                  child: Text(
                    "View",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async {
                    launchYoutube(message["data"]["vidid"]);
                    Navigator.pop(notifkey.currentContext);
                  },
                ),
              ],
            ),
      );
      break;
  }
}

Future navigateToItemDetail(Map<String, dynamic> message) async {
  //print("Got Message ${message["url"]}");

  switch (message["type"]) {
    case "article":
                if (await canLaunch(message["url"])) {
                  launch(message["url"]);
                } else {
                  print("Cannot launch ${message["url"]}");
                }
    break;
    case "video":
                launchYoutube(message["vidid"]);
      break;
  }
/*
  switch (message["data"]["type"]) {
    case "article":
      if (await canLaunch(message["data"]["url"])) {
        launch(message["data"]["url"]);
      } else {
        print("Cannot launch ${message["data"]["url"]}");
      }
      break;
    case "video":
      launchYoutube(message["data"]["vidid"]);
      break;
  }*/
}
