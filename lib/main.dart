import 'dart:io';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gemselections/Pages/mainpage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:gemselections/Pages/notifications.dart';

final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
GlobalKey<ScaffoldState> notifkey = GlobalKey<ScaffoldState>();

void main() => runApp(GemApp());

class GemApp extends StatefulWidget {
  @override
  _GemAppState createState() => _GemAppState();
}

class _GemAppState extends State<GemApp> {

  @override
  void initState() {
    super.initState();

    _firebaseMessaging.requestNotificationPermissions();
    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        print("onMessage: $message");
        showItemDialog(message);
      },
      onLaunch: (Map<String, dynamic> message) async {
        print("onLaunch: $message");
        navigateToItemDetail(message);
      },
      onResume: (Map<String, dynamic> message) async {
        print("onResume: $message");
        navigateToItemDetail(message);
      },

    );
    _firebaseMessaging.setAutoInitEnabled(true);


  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //key: notifkey,
      debugShowCheckedModeBanner: false,
      title: "IOSD gem app",
      home: Stack(
        children: <Widget>[
          Scaffold(
            key: notifkey,
          ),
          MainPage(),
        ],
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  FirebaseUser user = null;
  GoogleSignIn googleSignIn = GoogleSignIn();
  File image;

  Future<FirebaseUser> signIn() async {
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;
    FirebaseUser firebaseUser = await FirebaseAuth.instance.signInWithGoogle(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);

    print("Signed In as ${firebaseUser.displayName}");
    return firebaseUser;
  }

  Future signOut() async {
    await googleSignIn.signOut();
    print("Signed Out");
  }

  void add() {
    DocumentReference ref =
        Firestore.instance.collection("Test").document("abc");

    Map<String, dynamic> data = {
      "xyz": [1, "2"]
    };
    print("Adding");
    ref.setData(data).whenComplete(() {
      print("Data added");
    }).catchError((e) {
      print("Adding Error $e");
    });
  }

  void update() {
    DocumentReference ref =
        Firestore.instance.collection("Test").document("abc");

    Map<String, dynamic> data = {
      "xyz": [3, "4"]
    };
    print("Adding");
    ref.updateData(data).whenComplete(() {
      print("Data added");
    }).catchError((e) {
      print("Adding Error $e");
    });
  }

  void delete() {
    DocumentReference ref =
        Firestore.instance.collection("Test").document("abc");

    Map<String, dynamic> data = {
      "xyz": [3, "4"]
    };
    print("Adding");
    ref.delete().whenComplete(() {
      print("Data deleted");
    }).catchError((e) {
      print("Adding Error $e");
    });
  }

  void read() {
    DocumentReference ref =
        Firestore.instance.collection("Test").document("abc");

    Map<String, dynamic> data = {
      "xyz": [3, "4"]
    };
    print("Adding");
    ref.get().then((snap) {
      print("Data ${snap.data}");
    }).catchError((e) {
      print("Adding Error $e");
    });
  }

  Future<File> getimage() async {
    File img = await ImagePicker.pickImage(source: ImageSource.camera);
    return img;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                (user != null) ? user.displayName : "Default User",
              ),
              RaisedButton(
                onPressed: () {
                  signIn().then((fuser) {
                    setState(() {
                      user = fuser;
                    });
                  });
                },
                child: Text("Sign In"),
              ),
              RaisedButton(
                onPressed: () {
                  signOut();
                  setState(() {
                    user = null;
                  });
                },
                child: Text("Sign Out"),
              ),
              RaisedButton(
                onPressed: () {
                  add();
                },
                child: Text("Add"),
              ),
              RaisedButton(
                onPressed: () {
                  update();
                },
                child: Text("Update"),
              ),
              RaisedButton(
                onPressed: () {
                  delete();
                },
                child: Text("Delete"),
              ),
              RaisedButton(
                onPressed: () {
                  read();
                },
                child: Text("Read"),
              ),
              RaisedButton(
                onPressed: () {
                  getimage().then((img) {
                    setState(() {
                      image = img;
                    });
                  });
                },
                child: Text("Image"),
              ),
              (image != null) ? Image.file(image) : Container(),
            ],
          ),
        ),
      ),
    );
  }
}

