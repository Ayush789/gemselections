import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';


class HaraPukhrajPage extends StatefulWidget {
  @override
  _HaraPukhrajPageState createState() => _HaraPukhrajPageState();
}

class _HaraPukhrajPageState extends State<HaraPukhrajPage> {
  int v1;

  void showPrice1(int v1, BuildContext context) {
     Map<int, List<int>> values = {
       1 :[ 0, 13725,
        19825,
        25925,
        32025,
        38125,
        44225,
        50325,
        56425,
        62525,
        68625
        ],
        2 : [0,  6975,
        10075,
        13175,
        16275,
        19375,
        22475,
        25575,
        28675,
        31775,
        34875
        ],
        3 : [0,4725,
        6825,
        8925,
        11025,
        13125,
        15225,
        17325,
        19425,
        21525,
        23625
        ],
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
                   Text(
            "HARA PUKHRAJ | GREEN SAPPHIRE",
            style: TextStyle( fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
                  Text("Weight : INR"),
                  Text(""),
                  Text("2.25 ratti Rs ${values[v1][1]}/-"),
                  Text("3.25 ratti Rs ${values[v1][2]}/-"),
                  Text("4.25 ratti Rs ${values[v1][3]}/-"),
                  Text("5.25 ratti Rs ${values[v1][4]}/-"),
                  Text("6.25 ratti Rs ${values[v1][5]}/-"),
                  Text("7.25 ratti Rs ${values[v1][6]}/-"),
                  Text("8.25 ratti Rs ${values[v1][7]}/-"),
                  Text("9.25 ratti Rs ${values[v1][8]}/-"),
                  Text("10.25 ratti Rs ${values[v1][9]}/-"),
                  Text("11.25 ratti Rs ${values[v1][10]}/-"),
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
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: <Widget>[
             Container(
            height: 150.0,
            padding: EdgeInsets.all(30.0),
            child: FadeInImage(
              placeholder: AssetImage(placeholder),
              image: NetworkImage(
                  "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fhara-pukhraj.jpg?alt=media&token=d7c140ff-0a7c-40af-8708-cab89c3aee1c"),
            ),
          ),
         Text(
            "HARA PUKHRAJ | GREEN SAPPHIRE",
            style: TextStyle(color: Colors.green, fontSize: 20.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
         
           Container(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            child: GestureDetector(
              child: FadeInImage(
                placeholder: AssetImage(placeholder),
                image: NetworkImage(
                    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/YoutubeImages%2Fgreen_saphire.jpeg?alt=media&token=f6565ebb-b553-4efc-bfc2-2ecb48c735ad"),
              ),
              onTap: () => LaunchYoutube(precious_you_link[13]),
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
       Padding(padding: EdgeInsets.only(top: 10.0),),
        Text("  Select Qulaity to know price", style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.green),),
       Card(
         child: DropdownButtonHideUnderline(
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
                     ],
                     onChanged: (int x){
                       showPrice1(x, context);
                     },
           ),
         ),
       ),
       Padding(padding: EdgeInsets.only(top: 10.0),),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 7.0),
            child: Column(
              children: <Widget>[
                Text(
                    " Hara Pukhraj : At Gem Selections we have a range of Hara Pukhraj i.e., Hara Pukhraj from \n"),
                    Text("Rs. 2100/ Rt to Rs. 31000/ Rt.", style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("\nYou can have a look at these collections and decide what you want as per your requirement and budget.\n\nWhat ever you buy comes with a Lab Certificate, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna.\n\nThis gem of Venus ,it gives one glamour and radiance which makes one stand apart from the crowd .It improves sex appeal , improves the innovative powers and megha shakti , worn by people who want to stand apart and be remebered like actors, models ,players etc. People in public relations can also benefit a lot from it. Quality : Premium ,\n\n\n"),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
