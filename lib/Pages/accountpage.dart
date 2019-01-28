import 'package:flutter/material.dart';
import 'package:gemselections/Pages/mainscaffold.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseUser user;
GoogleSignIn googleSignIn = GoogleSignIn();

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    if (user != null) {
      return MainScaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                child: Text("Ask a question"),
              ),
              FlatButton(
                onPressed: () {},
                child: Text("Watch GemSeclections\u{2122} Live"),
              ),
              FlatButton(
                onPressed: () {},
                child: Text("Join the Gem Selections\u{2122}  Forums"),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ReadLaterPage()));
                },
                child: Text("Saved as Read Later"),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WatchLater()));
                },
                child: Text("Saved as Watch Later"),
              ),
              FlatButton(
                onPressed: () {},
                child: Text("Give Feedback."),
              ),
            ],
          ),
        ),
      );
    } else {
      return MainScaffold(
        body: Column(
          children: <Widget>[
            FlatButton(
              onPressed: () {
                setState(() {
                  signIn().then((fuser) {
                    setState(() {
                      user = fuser;
                    });
                  }).catchError((e) {
                    print("Error $e");
                  });
                });
              },
              child: Text("Sign In"),
            ),
            FlatButton(
              onPressed: signOut,
              child: Text("Sign Up"),
            ),
          ],
        ),
      );
    }
  }
}

class ReadLaterPage extends StatefulWidget {
  @override
  _ReadLaterPageState createState() => _ReadLaterPageState();
}

class _ReadLaterPageState extends State<ReadLaterPage> {
  DocumentReference ref =
      Firestore.instance.collection("ReadLater").document(user.uid);

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
        body: FutureBuilder<DocumentSnapshot>(
      future: ref.get(),
      builder: (context, snap) {
        print("0 ${snap.data.data}");
        if (snap.data.data != null) {
          print("1");
          if (snap.data.data != null) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton(
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(snap.data.data.keys.toList()[index]),
                        Text(snap
                            .data.data[snap.data.data.keys.toList()[index]]),
                      ],
                    ),
                  ),
                );
              },
              itemCount: snap.data.data.keys.toList().length,
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    ));
  }
}

class WatchLater extends StatefulWidget {
  @override
  _WatchLaterState createState() => _WatchLaterState();
}

class _WatchLaterState extends State<WatchLater> {
  DocumentReference ref =
      Firestore.instance.collection("WatchLater").document(user.uid);

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
        body: FutureBuilder<DocumentSnapshot>(
      future: ref.get(),
      builder: (context, snap) {
        print("0 ${snap.data.data}");
        if (snap.data.data != null) {
          print("1");
          if (snap.data.data != null) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton(
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(snap.data.data.keys.toList()[index]),
                        Image.network(snap
                            .data.data[snap.data.data.keys.toList()[index]]),
                      ],
                    ),
                  ),
                );
              },
              itemCount: snap.data.data.keys.toList().length,
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    ));
  }
}

Future<FirebaseUser> signIn() async {
  GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;

  FirebaseUser firebaseUser = await FirebaseAuth.instance.signInWithGoogle(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken);

  print("Signed in as ${firebaseUser.displayName} uid ${firebaseUser.uid}");
  return firebaseUser;
}

void signOut() {
  googleSignIn.signOut();
  print("Signed Out");
}

class ReadLaterArticle {
  String Title, Url;

  ReadLaterArticle({
    this.Title,
    this.Url,
  });
}
