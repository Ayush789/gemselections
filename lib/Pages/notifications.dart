import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';
import 'package:gemselections/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<String> getSavedUser() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  return pref.getString("UID");
}

Future saveUser(String Uid) async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  print("saving $Uid");
  pref.setString("UID", Uid);
}

Future showItemDialog(Map<String, dynamic> message) async {
  String uid = await getSavedUser();

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
                      DocumentReference ref = Firestore.instance
                          .collection("ReadLater")
                          .document(uid);
                      await ref.updateData({message["data"]["id"]: "1"});
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
                    DocumentReference ref = Firestore.instance
                        .collection("ReadLater")
                        .document(uid);
                    await ref.updateData({message["data"]["vidid"]: "1"});
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
