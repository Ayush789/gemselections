import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gemselections/Pages/diamonds.dart';
import 'package:gemselections/Pages/mainscaffold.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:gemselections/main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';

class JwelleryPage extends StatefulWidget {
  @override
  _JwelleryPageState createState() => _JwelleryPageState();
}

class _JwelleryPageState extends State<JwelleryPage> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8.0),
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CreateYourOwnJewelleryPage()));
              },
              child: Column(
                children: <Widget>[
                  Image.asset("assets/category_create_your_own_cewellery.png"),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DiamondPage()));
              },
              child: Column(
                children: <Widget>[
                  Image.asset("assets/category_diamond_jewellery.png"),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GemStuddedJewelleryPage()));
              },
              child: Column(
                children: <Widget>[
                  Image.asset("assets/category_gem_studded_jewellery.png"),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => JewelleryViewPage(
                              type: "Victorian",
                            )));
              },
              child: Column(
                children: <Widget>[
                  Image.asset("assets/category_victorian_jewellery_.png"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class JewelleryViewPage extends StatefulWidget {
  String type = "";

  JewelleryViewPage({@required this.type});

  @override
  _JewelleryViewPageState createState() => _JewelleryViewPageState();
}

class _JewelleryViewPageState extends State<JewelleryViewPage> {
  @override
  Widget build(BuildContext context) {
    DocumentReference ref =
        Firestore.instance.collection("AppData").document("Jewellery");
    double w = MediaQuery.of(context).size.width;

    return MainScaffold(
      body: Column(
        children: <Widget>[
          Container(height: 100.0, width: 200.0, color: Colors.red),
          Expanded(
            child: FutureBuilder(
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.done) {
                  print(snap.data.data);
                  return GridView.count(
                    padding: EdgeInsets.all(0.0),
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    children: List.generate(snap.data.data[widget.type].length,
                        (index) {
                      return Container(
                        child: Image.network(
                          snap.data.data[widget.type][index],
                          height: w / 2,
                        ),
                      );
                    }),
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
              future: ref.get(),
            ),
          )
        ],
      ),
    );
  }
}

class CreateYourOwnJewelleryPage extends StatefulWidget {
  @override
  _CreateYourOwnJewelleryPageState createState() =>
      _CreateYourOwnJewelleryPageState();
}

class _CreateYourOwnJewelleryPageState
    extends State<CreateYourOwnJewelleryPage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  File imageToSend = null;
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController(),
      emailController = TextEditingController(),
      phoneController = TextEditingController();

  void _uploadFromGallery() async {
    var img = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      imageToSend = img;
    });
  }

  void _uploadFromCamera() async {
    var img = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      imageToSend = img;
    });
  }

  Future uploadImage(String name, String email, String phone) async {
    print("Uploading");
    StorageReference storageReference = FirebaseStorage.instance.ref().child(
        "UserData/Orders/$email-${DateTime.now().millisecondsSinceEpoch}.jpg");
    StorageUploadTask task = storageReference.putFile(imageToSend);
    task.onComplete.then((ref) {
      print("Uploaded");
      ref.ref.getDownloadURL().then((str) {
        print(str);

        var ref = Firestore.instance.collection("Orders");
        Map<String, List<Map<String, String>>> data = {
          "${name} : ${DateTime.now().toString()}": [
            {"Name": name},
            {"Email": email},
            {"Phone": phone},
            {"Image": str}
          ]
        };
        print("Adding ${data}");

        Firestore.instance.runTransaction((trx) async {
          print("Running Transaction");
          ref.add(data).then((ref) {
            print("Got ref ${ref}");
            _scaffoldKey.currentState.showSnackBar(
                SnackBar(content: Text("Your Order has been recorded.")));
          }).catchError((e) {
            print(e);
          });
        });

        print("Added");
      }).catchError((e) {
        print(e);
      });
    }).catchError((e) {
      print(e);
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      key: _scaffoldKey,
      body: ListView(
        children: <Widget>[
          (imageToSend == null)
              ? Container(
                  height: w / 2,
                  width: w / 3,
                  color: Colors.grey,
                )
              : Image.file(
                  imageToSend,
                  height: w / 2,
                  width: w / 3,
                ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                onPressed: _uploadFromGallery,
                child: Text("Gallery"),
              ),
              RaisedButton(
                onPressed: _uploadFromCamera,
                child: Text("Camera"),
              ),
            ],
          ),
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Please Enter Name";
                    }
                  },
                  controller: nameController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: "Name",
                  ),
                  keyboardType: TextInputType.text,
                ),
                TextFormField(
                  validator: (value) {
                    Pattern pattern =
                        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                    RegExp regex = new RegExp(pattern);
                    if (!regex.hasMatch(value))
                      return 'Please Enter Valid Email';
                  },
                  controller: emailController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mail),
                    labelText: "Email",
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                TextFormField(
                  validator: (value) {
                    if (value.length != 10) {
                      return "Please Enter Valid 10 Digit Mobile Number";
                    }
                  },
                  controller: phoneController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    labelText: "Phone",
                  ),
                  keyboardType: TextInputType.number,
                ),
                (imageToSend != null)
                    ? RaisedButton(
                        child: Text("Submit"),
                        onPressed: () {
                          print("Pressed Submit");
                          print(nameController.text);
                          print("1");
                          if (_formKey.currentState.validate()) {
                            print("Uploading");
                            uploadImage(nameController.text,
                                emailController.text, phoneController.text);
                          }
                        },
                      )
                    : RaisedButton(
                        child: Text("Submit"),
                        onPressed: null,
                      )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class GemStuddedJewelleryPage extends StatefulWidget {
  @override
  _GemStuddedJewelleryPageState createState() =>
      _GemStuddedJewelleryPageState();
}

class _GemStuddedJewelleryPageState extends State<GemStuddedJewelleryPage> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: ListView(
        children: <Widget>[
          Image.asset("assets/category_gem_studded_jewellery.png"),
          Container(
            padding: EdgeInsets.all(8.0),
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => JewelleryViewPage(
                              type: "GemStuddedSets",
                            )));
              },
              child: Column(
                children: <Widget>[
                  Image.asset("assets/category_victorian_jewellery_.png"),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => JewelleryViewPage(
                              type: "GemStuddedPendants",
                            )));
              },
              child: Column(
                children: <Widget>[
                  Image.asset("assets/category_victorian_jewellery_.png"),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => JewelleryViewPage(
                              type: "GemStuddedTops",
                            )));
              },
              child: Column(
                children: <Widget>[
                  Image.asset("assets/category_victorian_jewellery_.png"),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => JewelleryViewPage(
                              type: "GemStuddedRings",
                            )));
              },
              child: Column(
                children: <Widget>[
                  Image.asset("assets/category_victorian_jewellery_.png"),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => JewelleryViewPage(
                              type: "GemStuddedBracelets",
                            )));
              },
              child: Column(
                children: <Widget>[
                  Image.asset("assets/category_victorian_jewellery_.png"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
