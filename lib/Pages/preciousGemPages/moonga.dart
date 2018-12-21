import 'package:flutter/material.dart';

class MoongaPage extends StatefulWidget {
  @override
  _MoongaPageState createState() => _MoongaPageState();
}

class _MoongaPageState extends State<MoongaPage> {
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
                  Text("2.25 ratti Moonga Stone Rs ${values[1]}/-"),
                  Text("3.25 ratti Moonga Stone Rs ${values[2]}/-"),
                  Text("4.25 ratti Moonga Stone Rs ${values[3]}/-"),
                  Text("5.25 ratti Moonga Stone Rs ${values[4]}/-"),
                  Text("6.25 ratti Moonga Stone Rs ${values[5]}/-"),
                  Text("7.25 ratti Moonga Stone Rs ${values[6]}/-"),
                  Text("8.25 ratti Moonga Stone Rs ${values[7]}/-"),
                  Text("9.25 ratti Moonga Stone Rs ${values[8]}/-"),
                  Text("10.25 ratti Moonga Stone Rs ${values[9]}/-"),
                  Text("11.25 ratti Moonga Stone Rs ${values[10]}/-"),
                ],
              ),
            ),
          );
        });
  }

  void showPrice2(BuildContext context) {
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
                  Text("2.25 ratti Moonga Stone Rs ${values[1]}/-"),
                  Text("3.25 ratti Moonga Stone Rs ${values[2]}/-"),
                  Text("4.25 ratti Moonga Stone Rs ${values[3]}/-"),
                  Text("5.25 ratti Moonga Stone Rs ${values[4]}/-"),
                  Text("6.25 ratti Moonga Stone Rs ${values[5]}/-"),
                  Text("7.25 ratti Moonga Stone Rs ${values[6]}/-"),
                  Text("8.25 ratti Moonga Stone Rs ${values[7]}/-"),
                  Text("9.25 ratti Moonga Stone Rs ${values[8]}/-"),
                  Text("10.25 ratti Moonga Stone Rs ${values[9]}/-"),
                  Text("11.25 ratti Moonga Stone Rs ${values[10]}/-"),
                ],
              ),
            ),
          );
        });
  }

  void showPrice3(BuildContext context) {
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
                  Text("2.25 ratti Moonga Stone Rs ${values[1]}/-"),
                  Text("3.25 ratti Moonga Stone Rs ${values[2]}/-"),
                  Text("4.25 ratti Moonga Stone Rs ${values[3]}/-"),
                  Text("5.25 ratti Moonga Stone Rs ${values[4]}/-"),
                  Text("6.25 ratti Moonga Stone Rs ${values[5]}/-"),
                  Text("7.25 ratti Moonga Stone Rs ${values[6]}/-"),
                  Text("8.25 ratti Moonga Stone Rs ${values[7]}/-"),
                  Text("9.25 ratti Moonga Stone Rs ${values[8]}/-"),
                  Text("10.25 ratti Moonga Stone Rs ${values[9]}/-"),
                  Text("11.25 ratti Moonga Stone Rs ${values[10]}/-"),
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
      ),
      body: ListView(
        children: <Widget>[
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media"),
          Text(
            "MOONGA | CORAL",
            style: TextStyle(color: Colors.purple, fontSize: 20.0),
          ),
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media"),
        Text("  Moonga : At Gem Selections we have a range of Moonga i.e., Moonga from Rs. 325/ Rt to Rs. 1100/ Rt.\n\nYou can have a look at these collections and decide what you want as per your requirement and budget.\n\nWhat ever you buy comes with a Lab Certificate, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna.      \n\Moonga ( Coral ): This is the gem of Hanumanjee ,it bestows upon a person courage and strength. This also improves the muscular system and improve the capability of bone-marrow to produce red blood cells .It improves the process of absorption of oxygen by the lungs and there by gives strength to the entire body and removes many diseases which are not understood by the medical profession . This also removes the effect of tantra and evil spirits. If you have uncomfortable dreams this is a must for you . Quality : Premium      \n\nRED CORAL (MOONGA) IS AVAILABLE WITH US FROM Rs. 425.00 Per Ratti TO Rs. 1800.00 Per Ratti DEPENDING ON QUALITY AND SIZE.\n\n\t<b>  TRIANGULAR RED CORAL\n\tUPTO 6.25 RATTI RS. 650.00 PER RATTI\n\t7.25 RATTI TO 11.25 RATTI RS. 850.00 PER RATTI\n\t11.25 RATTI TO 31 RATTI RS. 1500.00 PER RATTI</b>"),
          FlatButton(
            onPressed: () => showPrice1(context),
            child: Image.network(
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fjapanese-coral.jpg?alt=media"),
          ),

          FlatButton(
            onPressed: () => showPrice2(context),
            child: Image.network(
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fitalian_Coral.jpg?alt=media"),
          ),

          FlatButton(
            onPressed: () => showPrice3(context),
            child: Image.network(
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fsri-lankan-coral.jpg?alt=media"),
          ),
        ],
      ),
    );
  }
}
