import 'package:flutter/material.dart';
import 'package:gemselections/Pages/mainscaffold.dart';

class AbhimantritPage extends StatefulWidget {
  @override
  _AbhimantritPageState createState() => _AbhimantritPageState();
}

class _AbhimantritPageState extends State<AbhimantritPage> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: 
      ListView(
        children: <Widget>[
          Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media"),
          Card(
            child: Text("adfhuadhuhduhh"),
          ),
        ],
      ),
    );
  }
}
