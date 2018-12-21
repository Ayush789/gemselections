import 'package:flutter/material.dart';

class HaraPukhrajPage extends StatefulWidget {
  @override
  _HaraPukhrajPageState createState() => _HaraPukhrajPageState();
}

class _HaraPukhrajPageState extends State<HaraPukhrajPage> {
  int v1;

  void showPrice1(BuildContext context) {
    List<int> values = [22, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              // height: 100.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("Weight : INR"),
                  Text("Rs ${values[0]}"),
                  Text(""),
                  Text("2.25 ratti HaraPukhraj Stone Rs ${values[1]}/-"),
                  Text("3.25 ratti HaraPukhraj Stone Rs ${values[2]}/-"),
                  Text("4.25 ratti HaraPukhraj Stone Rs ${values[3]}/-"),
                  Text("5.25 ratti HaraPukhraj Stone Rs ${values[4]}/-"),
                  Text("6.25 ratti HaraPukhraj Stone Rs ${values[5]}/-"),
                  Text("7.25 ratti HaraPukhraj Stone Rs ${values[6]}/-"),
                  Text("8.25 ratti HaraPukhraj Stone Rs ${values[7]}/-"),
                  Text("9.25 ratti HaraPukhraj Stone Rs ${values[8]}/-"),
                  Text("10.25 ratti HaraPukhraj Stone Rs ${values[9]}/-"),
                  Text("11.25 ratti HaraPukhraj Stone Rs ${values[10]}/-"),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Green Sapphire"),
      ),
      body: ListView(
        children: <Widget>[
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media"),
          Text(
            "HARA PUKHRAJ | GREEN SAPPHIRE",
            style: TextStyle(color: Colors.purple, fontSize: 20.0),
          ),
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fhara-pukhraj.jpg?alt=media"),
          Text(" Hara Pukhraj : At Gem Selections we have a range of Hara Pukhraj i.e., Hara Pukhraj from <b>Rs. 2100/ Rt to Rs. 31000/ Rt.</b>\n\nYou can have a look at these collections and decide what you want as per your requirement and budget.\n\nWhat ever you buy comes with a Lab Certificate, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna.\n\nThis gem of Venus ,it gives one glamour and radiance which makes one stand apart from the crowd .It improves sex appeal , improves the innovative powers and megha shakti , worn by people who want to stand apart and be remebered like actors, models ,players etc. People in public relations can also benefit a lot from it. Quality : Premium ,\n\n\n"),
          RaisedButton(
            child: Text("Show Prices"),
            onPressed: (){
              showPrice1(context);
            },
          ),
        ],
      ),
    );
  }
}
