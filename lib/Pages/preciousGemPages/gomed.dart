import 'package:flutter/material.dart';

class GomedPage extends StatefulWidget {
  @override
  _GomedPageState createState() => _GomedPageState();
}

class _GomedPageState extends State<GomedPage> {
  int v1;

  void showPrice1(BuildContext context) {
    Map<int, List<int>> values = {
      1: [22, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
      2: [33, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
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
                  Text("Rs ${values[v1][0]}"),
                  Text(""),
                  Text("2.25 ratti Gomed Stone Rs ${values[v1][1]}/-"),
                  Text("3.25 ratti Gomed Stone Rs ${values[v1][2]}/-"),
                  Text("4.25 ratti Gomed Stone Rs ${values[v1][3]}/-"),
                  Text("5.25 ratti Gomed Stone Rs ${values[v1][4]}/-"),
                  Text("6.25 ratti Gomed Stone Rs ${values[v1][5]}/-"),
                  Text("7.25 ratti Gomed Stone Rs ${values[v1][6]}/-"),
                  Text("8.25 ratti Gomed Stone Rs ${values[v1][7]}/-"),
                  Text("9.25 ratti Gomed Stone Rs ${values[v1][8]}/-"),
                  Text("10.25 ratti Gomed Stone Rs ${values[v1][9]}/-"),
                  Text("11.25 ratti Gomed Stone Rs ${values[v1][10]}/-"),
                ],
              ),
            ),
          );
        });
  }

  void showPrice2(int v1, BuildContext context) {
    Map<int, List<int>> values = {
      1: [22, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
      2: [33, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
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
                  Text("Rs ${values[v1][0]}"),
                  Text(""),
                  Text("2.25 ratti Gomed Stone Rs ${values[v1][1]}/-"),
                  Text("3.25 ratti Gomed Stone Rs ${values[v1][2]}/-"),
                  Text("4.25 ratti Gomed Stone Rs ${values[v1][3]}/-"),
                  Text("5.25 ratti Gomed Stone Rs ${values[v1][4]}/-"),
                  Text("6.25 ratti Gomed Stone Rs ${values[v1][5]}/-"),
                  Text("7.25 ratti Gomed Stone Rs ${values[v1][6]}/-"),
                  Text("8.25 ratti Gomed Stone Rs ${values[v1][7]}/-"),
                  Text("9.25 ratti Gomed Stone Rs ${values[v1][8]}/-"),
                  Text("10.25 ratti Gomed Stone Rs ${values[v1][9]}/-"),
                  Text("11.25 ratti Gomed Stone Rs ${values[v1][10]}/-"),
                ],
              ),
            ),
          );
        });
  }

  Widget bottomData(int x) {
    if (x == 1) {
      return Column(
        children: <Widget>[Text("At Gem Selections, we have Gomed Stone ranging from Rs.110 per ratti to Rs.3100 per ratti.\nThese days Garnets and raisin made stone are being sold with the support of self made certificates. If you want a real Gomed, never buy one, unless you have visited <b>Gem Selections, Shop No.8, A-3 DDA Market, Janakpuri, New Delhi - 110058</b>\nYou get Natural Gomed Stone only at Gem Selections, so you must visit us, in your own interest, so that you get a Real Gomed Stone with Govt. Lab Certificate.\nYou can have a look at these collections and decide what you want as per your requirement and budget.\n\nWhat ever you buy comes with a Lab Certificate, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna.\n\nGomed is a variety of Grossular, a Calcium Aluminium mineral of the Garnet family.\nThe name comes from Greek word which means a Garnet of lower hardness and density than most Garnets of the Garnet family.\n\nThis is a Gem of Rahu (Dragon\’s Head ) Rahu gives mental tensions- unnecessary worries and strained relationships .Wearing its gem gives one mental peace and freedom from worries. Rahu is said to give professional excellence and demolishes the enemies power by its strong force.\n\n\t\tGaya Gomed\n\tOrissa Gomed\n\tAfrican Gomed\n\tCeylonese Gomed\n\nGomed if found mainly in India and Sri Lanka. It is also found in Brazil and California and recently mines have been found in Africa.\n\n<b>Benefits of Wearing Gomed Benefits of Wearing Gomed </b>\n\t\t1. It reduces un necessary tensions and gives positive disposition to people where Rahu is favorably placed.\n\t\t2. Gomed can reduce stomach ailments.\n\t\t3. Gomed is said to have powers to weaken the enemies.\n\t\t4. This Gemstone is very potent weapon against enemies of all sorts especially the hidden enemies.\n\t\t5. It Rahu is well placed then a big Gomed of 11 to 21 ratti can be worn. This can give the wearer very fast rise in profession and turn the opponents into pulp.6. Powers of a good quality Gomed can change the game in favour of the wearer if correctly recommended and properly worn.7. In politics and public life this can do wonders.")],
      );
    }
    if (x == 2) {
      return Column(
        children: <Widget>[
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fgaya-gomed.jpg?alt=media"),
          Text("  <b>Gaya Gomed:</b> At Gem Selections we have a range of Gaya Gomed i.e., Hessonite from Rs. 50/ Rt to Rs. 3100/ Rt.\n\nYou can have a look at these collections and decide what you want as per your requirement and budget.\n\nWhat ever you buy comes with a Lab Certificate, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna.\n\nThis is a Gem of Rahu (Dragon\’s Head ) Rahu gives mental tensions- unnecessary worries and strained relationships .Wearing its gem gives one mental peace and freedom from worries. Rahu is said to give professional excellence and demolishes the enemies power by its strong force.")
        ],
      );
    }
    if (x == 3) {
      return Column(
        children: <Widget>[
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Forrisa-gomed.jpg?alt=media"),
          Text("  At Gem Selections we have a range of Orissa Gomed i.e., Hessonite from Rs. 50/ Rt to Rs. 3100/ Rt.\n\nYou can have a look at these collections and decide what you want as per your requirement and budget.\n\nWhat ever you buy comes with a Lab Certificate, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna.\n\nThis is a Gem of Rahu (Dragon\’s Head ) Rahu gives mental tensions- unnecessary worries and strained relationships .Wearing its gem gives one mental peace and freedom from worries. Rahu is said to give professional excellence and demolishes the enemies power by its strong force.")],

      );
    }
    if (x == 4) {
      return Column(
        children: <Widget>[Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fafrican-gomed.jpg?alt=media"),
          Text("At Gem Selections we have a range of African Gomed i.e., Hessonite from Rs. 50/ Rt to Rs. 3100/ Rt.\n\nYou can have a look at these collections and decide what you want as per your requirement and budget.\n\nWhat ever you buy comes with a Lab Certificate, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna.\n\nThis is a Gem of Rahu (Dragon\’s Head) Rahu gives mental tensions- unnecessary worries and strained relationships .Wearing its gem gives one mental peace and freedom from worries. Rahu is said to give professional excellence and demolishes the enemies power by its strong force.")],
      );
    }
    if (x == 5) {
      return Column(
        children: <Widget>[Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fafrican-gomed.jpg?alt=media"),
          Text("At Gem Selections we have a range of Celone Gomed i.e., Hessonite from Rs. 50/ Rt to Rs. 3100/ Rt.\n\nYou can have a look at these collections and decide what you want as per your requirement and budget.\n\nWhat ever you buy comes with a Lab Certificate, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna.\n\nThis is a Gem of Rahu (Dragon\’s Head ) Rahu gives mental tensions- unnecessary worries and strained relationships .Wearing its gem gives one mental peace and freedom from worries. Rahu is said to give professional excellence and demolishes the enemies power by its strong force.")],
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Purple Sapphire"),
      ),
      body: ListView(
        children: <Widget>[
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fafrican-gomed.jpg?alt=media"),
          Text(
            "GOMED|HESSONITE",
            style: TextStyle(color: Colors.purple, fontSize: 20.0),
          ),
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media"),
          Text("Select One"),
          DropdownButton(
            items: [
              DropdownMenuItem<int>(
                child: Text("Gomed Info"),
                value: 1,
              ),
              DropdownMenuItem<int>(
                child: Text("Ceylon Info"),
                value: 2,
              ),
              DropdownMenuItem<int>(
                child: Text("Bankock Info"),
                value: 3,
              ),
              DropdownMenuItem<int>(
                child: Text("Treated Gomed"),
                value: 4,
              ),
              DropdownMenuItem<int>(
                child: Text("Treated Gomed"),
                value: 5,
              ),
            ],
            onChanged: (int x) {
              setState(() {
                v1 = x;
              });
            },
          ),
          Text("Select Qulaity to know price"),
          Text("Ceylon Gomed"),
          Builder(
            builder: (context) => RaisedButton(
                  onPressed: () => showPrice1(context),
                  child: Text("Show Price"),
                ),
          ),
          bottomData(v1),
        ],
      ),
    );
  }
}
