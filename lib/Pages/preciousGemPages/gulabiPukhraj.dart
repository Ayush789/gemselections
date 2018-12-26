import 'package:flutter/material.dart';

class GulabiPukhrajPage extends StatefulWidget {
  @override
  _GulabiPukhrajPageState createState() => _GulabiPukhrajPageState();
}

class _GulabiPukhrajPageState extends State<GulabiPukhrajPage> {
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
                  Text("2.25 ratti GulabiPukhraj Stone Rs ${values[1]}/-"),
                  Text("3.25 ratti GulabiPukhraj Stone Rs ${values[2]}/-"),
                  Text("4.25 ratti GulabiPukhraj Stone Rs ${values[3]}/-"),
                  Text("5.25 ratti GulabiPukhraj Stone Rs ${values[4]}/-"),
                  Text("6.25 ratti GulabiPukhraj Stone Rs ${values[5]}/-"),
                  Text("7.25 ratti GulabiPukhraj Stone Rs ${values[6]}/-"),
                  Text("8.25 ratti GulabiPukhraj Stone Rs ${values[7]}/-"),
                  Text("9.25 ratti GulabiPukhraj Stone Rs ${values[8]}/-"),
                  Text("10.25 ratti GulabiPukhraj Stone Rs ${values[9]}/-"),
                  Text("11.25 ratti GulabiPukhraj Stone Rs ${values[10]}/-"),
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
        title: Text("Pink Sapphire"),
      ),
      body: ListView(
        children: <Widget>[
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fpink-sapphire.jpg?alt=media"),
          Text(
            "GULABI PUKHRAJ|PINK SAPPHIRE",
            style: TextStyle(color: Colors.purple, fontSize: 20.0),
          ),
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media"),
          Text(" Pink Sapphire : At Gem Selections we have a range of Pink Sapphire i.e., Gulabi Pukhraj from Rs. 2100/ Rt to Rs. 31000/ Rt.\n\nYou can have a look at these collections and decide what you want as per your requirement and budget.\n\nWhat ever you buy comes with a Lab Certificate, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna.\n\nIt is also known as Pink Sapphire. It is pink in color. It is very cold gem stone and repersent Saturn. It should be worn in gold on the second finger of right hand. Pink Sapphire removes evil effects of Saturn. It has the magical power. Pink Sapphire (Gulabi Pukhraj) if act positively it can take a person to the heights that he or she has never imagined whereas on the other hand if it has its negative impact then it can have the worse effect on the person wearing it,"),
          RaisedButton(
            child: Text("See Prices"),
            onPressed: (){
              showPrice1(context);
            },
          ),
        ],
      ),
    );
  }
}
