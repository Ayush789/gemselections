import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';


class GulabiPukhrajPage extends StatefulWidget {
  @override
  _GulabiPukhrajPageState createState() => _GulabiPukhrajPageState();
}

class _GulabiPukhrajPageState extends State<GulabiPukhrajPage> {
  int v1;

  void showPrice1(int v1, BuildContext context) {
    Map<int, List<int>> values = {
        1: [31000,
        69750,
        100750,
        131750,
        162750,
        193750,
        224750,
        255750,
        286750,
        317750,
        348750
        ],
      2: [1800, 40500, 58500, 76500, 94500, 112500, 13050, 148500, 166500, 184500, 202500],
      3: [1100, 2475, 3575, 4675, 5775, 6875, 7975, 9075, 10175, 11275, 12375],
      4: [8100,
        18225,
        26325,
        34425,
        42525,
        50625,
        58725,
        66825,
        74925,
        83025,
        91125],

    };

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
                    Text(
                        "GULABI PUKHRAJ | PINK SAPPHIRE",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                  Text("Rs ${values[v1][0]} per ratii"),
                  Text(""),
                  Text("2.25 ratti Stone Rs ${values[v1][1]}/-"),
                  Text("3.25 ratti Stone Rs ${values[v1][2]}/-"),
                  Text("4.25 ratti Stone Rs ${values[v1][3]}/-"),
                  Text("5.25 ratti Stone Rs ${values[v1][4]}/-"),
                  Text("6.25 ratti Stone Rs ${values[v1][5]}/-"),
                  Text("7.25 ratti Stone Rs ${values[v1][6]}/-"),
                  Text("8.25 ratti Stone Rs ${values[v1][7]}/-"),
                  Text("9.25 ratti Stone Rs ${values[v1][8]}/-"),
                  Text("10.25 ratti Stone Rs ${values[v1][9]}/-"),
                  Text("11.25 ratti Stone Rs ${values[v1][10]}/-"),
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
        backgroundColor: Colors.pink,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 150.0,
            padding: EdgeInsets.all(30.0),
            child: FadeInImage(
              placeholder: AssetImage(placeholder),
              image: NetworkImage(
                  "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fpink-sapphire.jpg?alt=media"),
            ),
          ),
         
               Text(
            "GULABI PUKHRAJ | PINK SAPPHIRE",
            style: TextStyle(color: Colors.pink, fontSize: 20.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
           Container(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            child: GestureDetector(
              child: FadeInImage(
                placeholder: AssetImage(placeholder),
                image: NetworkImage(
                    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/YoutubeImages%2Fpink_sapphire.jpeg?alt=media&token=b7113e4d-68e5-47d8-a7e1-aca73c60604c"),
              ),
              onTap: () => LaunchYoutube(precious_you_link[6]),
            ),
             decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 20.0,
                  offset: new Offset(5.0, 15.0),
                ),
              ],
            ),
          ),
           Padding(
            padding: EdgeInsets.only(top: 10.0),
          ),
           Text("  Select Qulaity to know price", style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.pink),),
          Builder(
            builder: (context) => Card( 
             
              child:DropdownButtonHideUnderline(
            child: DropdownButton(
              hint: Text("  Select One"),
                  items: [
                    DropdownMenuItem<int>(
                      child: Text("A Quality"),
                      value: 1,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("B Quality"),
                      value: 2,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("C Quality"),
                      value: 3,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("D Quality"),
                      value: 4,
                    ),
                  ],
                  onChanged: (int x) {
                    showPrice1(x, context);
                  },
                ),
            ),
            ),
          ),
           Padding(
            padding: EdgeInsets.only(top: 10.0),
          ),
          Container(
             padding: EdgeInsets.symmetric(horizontal: 7.0),
            child: Text(
              " Pink Sapphire : At Gem Selections we have a range of Pink Sapphire i.e., Gulabi Pukhraj from Rs. 2100/ Rt to Rs. 31000/ Rt.\n\nYou can have a look at these collections and decide what you want as per your requirement and budget.\n\nWhat ever you buy comes with a Lab Certificate, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna.\n\nIt is also known as Pink Sapphire. It is pink in color. It is very cold gem stone and repersent Saturn. It should be worn in gold on the second finger of right hand. Pink Sapphire removes evil effects of Saturn. It has the magical power. Pink Sapphire (Gulabi Pukhraj) if act positively it can take a person to the heights that he or she has never imagined whereas on the other hand if it has its negative impact then it can have the worse effect on the person wearing it,"),
          ),
             Padding(
            padding: EdgeInsets.only(top: 10.0),
          ),
        
         
        ],
      ),
    );
  }
}
