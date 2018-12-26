import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';
import 'package:gemselections/Pages/mainscaffold.dart';

class YantraPage extends StatefulWidget {
  @override
  _YantraPageState createState() => _YantraPageState();
}

class _YantraPageState extends State<YantraPage> {

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: ListView(
        children: <Widget>[
          Image.network(imgurl),
          Text("Data"),
          Text("Framed Yantras"),
          FramedYantraDropDown(context),
          Text("Locket Yantras"),
          LocketYantraDropDown(context),
          Text("Daan Yantras"),
          DaanYantraDropDown(context),
        ],
      ),
    );
  }
}

Widget FramedYantraDropDown(BuildContext context){
  int v1=1;
  return DropdownButtonFormField(
    items: [
      DropdownMenuItem<int>(
        child: Text("-----NONE----"),
        value: 0,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 1,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 2,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 3,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 4,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 5,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 6,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 7,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 8,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 9,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 10,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 11,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 12,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 13,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 14,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 15,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 16,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 17,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 18,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 19,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 20,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 21,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 22,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 23,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 24,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 25,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 26,
      ),
    ],
    value: v1,
    onChanged: (x) {
      (x != 0)
          ? showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: framedYantraList[x],
            );
          })
          : print("None");
    },
  );
}

Widget LocketYantraDropDown(BuildContext context){
  int v1=1;
  return DropdownButtonFormField(
    items: [
      DropdownMenuItem<int>(
        child: Text("-----NONE----"),
        value: 0,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 1,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 2,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 3,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 4,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 5,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 6,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 7,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 8,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 9,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 10,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 11,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 12,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 13,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 14,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 15,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 16,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 17,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 18,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 19,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 20,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 21,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 22,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 23,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 24,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 25,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 26,
      ),
    ],
    value: v1,
    onChanged: (x) {
      (x != 0)
          ? showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: locketYantraList[x],
            );
          })
          : print("None");
    },
  );
}

Widget DaanYantraDropDown(BuildContext context){
  int v1=1;
  return DropdownButtonFormField(
    items: [
      DropdownMenuItem<int>(
        child: Text("-----NONE----"),
        value: 0,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 1,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 2,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 3,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 4,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 5,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 6,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 7,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 8,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 9,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 10,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 11,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 12,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 13,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 14,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 15,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 16,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 17,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 18,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 19,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 20,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 21,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 22,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 23,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 24,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 25,
      ),
      DropdownMenuItem<int>(
        child: Text("Shri....."),
        value: 26,
      ),
    ],
    value: v1,
    onChanged: (x) {
      (x != 0)
          ? showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: daanYantraList[x],
            );
          })
          : print("None");
    },
  );
}

List<Widget> framedYantraList = [
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
];


List<Widget> locketYantraList = [
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
];


List<Widget> daanYantraList = [
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
  Column(
    children: <Widget>[
      Image.network(imgurl),
      Text("Data"),
    ],
  ),
];
