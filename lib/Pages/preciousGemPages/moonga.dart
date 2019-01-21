import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';


class MoongaPage extends StatefulWidget {
  @override
  _MoongaPageState createState() => _MoongaPageState();
}

class _MoongaPageState extends State<MoongaPage> {
  int v1;

  void showPrice1(BuildContext context) {
    List<int> values = [0,731, 1056, 1381,1706, 2031, 2356, 4331, 4856, 5381, 5906, 13475, 14575, 15675, 16775, 17875, 36225, 38325, 40425, 42525, 44625];

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              // height: 100.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(" Italian Coral : At Gem Selections we have a range of Itallian Coral i.e., Moonga from Rs. 325/ Rt to Rs. 1100/ Rt.\n"),
                  Text("Weight : INR"),
                  Text(""),
                  Text("2.25 ratti Rs ${values[1]}/-"),
                  Text("3.25 ratti Rs ${values[2]}/-"),
                  Text("4.25 ratti Rs ${values[3]}/-"),
                  Text("5.25 ratti Rs ${values[4]}/-"),
                  Text("6.25 ratti Rs ${values[5]}/-"),
                  Text("7.25 ratti Rs ${values[6]}/-"),
                  Text("8.25 ratti Rs ${values[7]}/-"),
                  Text("9.25 ratti Rs ${values[8]}/-"),
                  Text("10.25 ratti Rs ${values[9]}/-"),
                  Text("11.25 ratti Rs ${values[10]}/-"),
                 Text("12.25 ratti Rs ${values[11]}/-"),
                  Text("13.25 ratti Rs ${values[12]}/-"),
                  Text("14.25 ratti Rs ${values[13]}/-"),
                  Text("15.25 ratti Rs ${values[14]}/-"),
                  Text("16.25 ratti Rs ${values[15]}/-"),
                  Text("17.25 ratti Rs ${values[16]}/-"),
                  Text("18.25 ratti Rs ${values[17]}/-"),
                   Text("19.25 ratti Rs ${values[18]}/-"),
                  Text("20.25 ratti Rs ${values[19]}/-"),
                ],
              ),
            ),
          );
        });
  }

  void showPrice2(BuildContext context) {
    List<int> values = [0, 2475,3575, 4675, 5775, 6875, 7975,17325, 19425, 21525, 23625];

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              // height: 100.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(" Japanese coral : At Gem Selections we have a range of Japanese Coral i.e., Japanese Moonga from Rs. 325/ Rt to Rs. 1100/ Rt.\n"),
                    Text("Weight : INR"),
                  Text(""),
                  Text("2.25 ratti Rs ${values[1]}/-"),
                  Text("3.25 ratti Rs ${values[2]}/-"),
                  Text("4.25 ratti Rs ${values[3]}/-"),
                  Text("5.25 ratti Rs ${values[4]}/-"),
                  Text("6.25 ratti Rs ${values[5]}/-"),
                  Text("7.25 ratti Rs ${values[6]}/-"),
                  Text("8.25 ratti Rs ${values[7]}/-"),
                  Text("9.25 ratti Rs ${values[8]}/-"),
                  Text("10.25 ratti Rs ${values[9]}/-"),
                  Text("11.25 ratti Rs ${values[10]}/-"),
                ],
              ),
            ),
          );
        });
  }

  void showPrice3(BuildContext context) {
    List<int> values = [0, 281, 406];

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              // height: 100.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("  Sri Lankan Coral : At Gem Selections we have a range of Sri Lankan Coral i.e., Moonga from Rs. 325/ Rt to Rs. 1100/ Rt\n"),
                    Text("Weight : INR"),
                  Text(""),
                  Text("2.25 ratti Rs ${values[1]}/-"),
                  Text("3.25 ratti Rs ${values[2]}/-"),
                 
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
        title: Text("Red Coral"),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: <Widget>[
             Container(
            height: 150.0,
            padding: EdgeInsets.all(30.0),
            child: FadeInImage(
              placeholder: AssetImage(placeholder),
              image: NetworkImage(
                  "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FRed-Coral.jpg?alt=media&token=a27e47f8-83a7-47d4-9c5b-dd8b93b885dc"),
            ),
          ),
         Text(
            "MOONGA | CORAL",
            style: TextStyle(color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
         
           Container(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            child: GestureDetector(
              child: FadeInImage(
                placeholder: AssetImage(placeholder),
                image: NetworkImage(
                    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/YoutubeImages%2Fmoonga.jpeg?alt=media&token=d830d3d1-cd84-48be-8cb6-614d645e3e81"),
              ),
              onTap: () => LaunchYoutube(precious_you_link[10]),
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
          Container(
            padding: EdgeInsets.symmetric(horizontal: 7.0),
            child: Column(
              
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top:10.0),),
             
            Text("Moonga", style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
            Text("At Gem Selections we have a range of Moonga i.e., Moonga from Rs. 325/ Rt to Rs. 1100/ Rt.\n\nYou can have a look at these collections and decide what you want as per your requirement and budget.\n\nWhat ever you buy comes with a Lab Certificate, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna.\n\nMoonga ( Coral ): This is the gem of Hanumanjee ,it bestows upon a person courage and strength. This also improves the muscular system and improve the capability of bone-marrow to produce red blood cells .It improves the process of absorption of oxygen by the lungs and there by gives strength to the entire body and removes many diseases which are not understood by the medical profession . This also removes the effect of tantra and evil spirits. If you have uncomfortable dreams this is a must for you . Quality : Premium\n\nRED CORAL (MOONGA) IS AVAILABLE WITH US FROM Rs. 425.00 Per Ratti TO Rs. 1800.00 Per Ratti DEPENDING ON QUALITY AND SIZE.\n\n\t"),
            Text("TRIANGULAR RED CORAL\n\tUPTO 6.25 RATTI RS. 650.00 PER RATTI\n\t7.25 RATTI TO 11.25 RATTI RS. 850.00 PER RATTI\n\t11.25 RATTI TO 31 RATTI RS. 1500.00 PER RATTI", style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
            Padding(padding: EdgeInsets.only(top: 10.0)),
             ],
            ),
          ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: <Widget>[
                  Flexible(
                                    child: GestureDetector(
                                  child: Card(
                      child: Column(
                        children: <Widget>[
                         
                          Image.network(
                              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fjapanese-coral.jpg?alt=media"),
                               Text("ITALIAN CORAL", textAlign: TextAlign.center,),
                        ],
                      ),
          ),
          onTap:() => showPrice1(context) ,
                    ),
                  ),
               
          Flexible(
                        child: GestureDetector(
                                                child: Card(
                
                child: Column(
                  children: <Widget>[
                     
                    Image.network(
                        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fitalian_Coral.jpg?alt=media"),
                         Text("JAPANESE CORAL", textAlign: TextAlign.center),
                  ],
                ),
              ),
              onTap:() => showPrice2(context) ,
                        ),
          ),
          Flexible(
                        child: GestureDetector(
                                                child: Card(
               
                child: Column(
                  children: <Widget>[
                     
                    Image.network(
                        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fsri-lankan-coral.jpg?alt=media"),
                         Text("SRI LANKAN CORAL", textAlign: TextAlign.center),
                  ],
                ),
              ),
               onTap:() => showPrice3(context) ,
                        ),
          ),
           ],
              ),
            ),
        ],
      ),
    );
  }
}
