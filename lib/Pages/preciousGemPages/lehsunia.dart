import 'package:flutter/material.dart';

class LehsuniaPage extends StatefulWidget {
  @override
  _LehsuniaPageState createState() => _LehsuniaPageState();
}

class _LehsuniaPageState extends State<LehsuniaPage> {
  int v1;

  void showPrice1(int v1, BuildContext context) {
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
                  Text("2.25 ratti Lehsunia Stone Rs ${values[v1][1]}/-"),
                  Text("3.25 ratti Lehsunia Stone Rs ${values[v1][2]}/-"),
                  Text("4.25 ratti Lehsunia Stone Rs ${values[v1][3]}/-"),
                  Text("5.25 ratti Lehsunia Stone Rs ${values[v1][4]}/-"),
                  Text("6.25 ratti Lehsunia Stone Rs ${values[v1][5]}/-"),
                  Text("7.25 ratti Lehsunia Stone Rs ${values[v1][6]}/-"),
                  Text("8.25 ratti Lehsunia Stone Rs ${values[v1][7]}/-"),
                  Text("9.25 ratti Lehsunia Stone Rs ${values[v1][8]}/-"),
                  Text("10.25 ratti Lehsunia Stone Rs ${values[v1][9]}/-"),
                  Text("11.25 ratti Lehsunia Stone Rs ${values[v1][10]}/-"),
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
                  Text("2.25 ratti Lehsunia Stone Rs ${values[v1][1]}/-"),
                  Text("3.25 ratti Lehsunia Stone Rs ${values[v1][2]}/-"),
                  Text("4.25 ratti Lehsunia Stone Rs ${values[v1][3]}/-"),
                  Text("5.25 ratti Lehsunia Stone Rs ${values[v1][4]}/-"),
                  Text("6.25 ratti Lehsunia Stone Rs ${values[v1][5]}/-"),
                  Text("7.25 ratti Lehsunia Stone Rs ${values[v1][6]}/-"),
                  Text("8.25 ratti Lehsunia Stone Rs ${values[v1][7]}/-"),
                  Text("9.25 ratti Lehsunia Stone Rs ${values[v1][8]}/-"),
                  Text("10.25 ratti Lehsunia Stone Rs ${values[v1][9]}/-"),
                  Text("11.25 ratti Lehsunia Stone Rs ${values[v1][10]}/-"),
                ],
              ),
            ),
          );
        });
  }

  Widget bottomData(int x) {
    if (x == 1) {
      return Column(
        children: <Widget>[Text("Lehsunia : At Gem Selections we have a range of Cats Eye i.e., Lehsunia from Rs. 50/ Rt to Rs. 3100/ Rt.\n\nYou can have a look at these collections and decide what you want as per your requirement and budget.\n\nWhat ever you buy comes with a Lab Certificate, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna.\n\nThis is a Gem of Ketu (Dragon\’s Tail ) .By wearing this gem one is able to subdue his enemies and is able to remove the effect of any negative forces working on him. This gives one social recognition and sudden spurts of growth. It protects from Erratic income and bestows stability in life. This is the gem of Moksha and frees one from the cycles of life and death.")],
      );
    }
    if (x == 2) {
      return Column(
        children: <Widget>[
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fchrysoberyl-cats-eye.jpg?alt=media"),
          Text("CHRYSOBERYL CATS EYE: This is the most coveted variety of Cat\'s Eye. These Gemstones have a sharply defined and slightly iridesecent ray or eye effect as it is known.\n\nThe Gemstones found in yellow or greenish - brown colour are the best in looks and are highly priced like all cats eyes, the ray appears at its best under a single sight or in direct sunlight. Multiple or differed illuminations spouls the effect.\n\nPrice : Rs. 1100/Rt to Rs. 5100/Rt.\n\nThis is a Gem of Ketu (Dragon\’s Tail ) .By wearing this gem one is able to subdue his enemies and is able to remove the effect of any negative forces working on him. This gives one social recognition and sudden spurts of growth. It protects from Erratic income and bestows stability in life. This is the gem of Moksha and frees one from the cycles of life and death.")
        ],
      );
    }
    if (x == 3) {
      return Column(
        children: <Widget>[
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fquartz-cats-eye.jpg?alt=media"),
          Text("Quartz Cats Eye : At Gem Selections we have a range of Quartz Cats Eye i.e., Lehsunia from Rs. 50/ Rt to Rs. 3100/ Rt.\n\nYou can have a look at these collections and decide what you want as per your requirement and budget.\n\nWhat ever you buy comes with a Lab Certificate, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna.\n\nThis is a Gem of Ketu (Dragon\’s Tail ) .By wearing this gem one is able to subdue his enemies and is able to remove the effect of any negative forces working on him. This gives one social recognition and sudden spurts of growth. It protects from Erratic income and bestows stability in life. This is the gem of Moksha and frees one from the cycles of life and death.")],
      );
    }
    if (x == 4) {
      return Column(
        children: <Widget>[
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fapatite-cats-eye.jpg?alt=media"),
          Text("Apatite Cats Eye\n\nYou can have a look at these collections and decide what you want as per your requirement and budget.\n\nWhat ever you buy comes with a Lab Certificate, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna.\n\nThis is a Gem of Ketu (Dragon\’s Tail ) .By wearing this gem one is able to subdue his enemies and is able to remove the effect of any negative forces working on him. This gives one social recognition and sudden spurts of growth. It protects from Erratic income and bestows stability in life. This is the gem of Moksha and frees one from the cycles of life and death.")],
      );
    }
     if (x == 5) {
      return Column(
        children: <Widget>[
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fsillimanite-cats-eye.jpg?alt=media"),
          Text("Sillimanite Cats Eye\n\nYou can have a look at these collections and decide what you want as per your requirement and budget.\n\nWhat ever you buy comes with a Lab Certificate, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna.\n\nThis is a Gem of Ketu (Dragon\’s Tail ) .By wearing this gem one is able to subdue his enemies and is able to remove the effect of any negative forces working on him. This gives one social recognition and sudden spurts of growth. It protects from Erratic income and bestows stability in life. This is the gem of Moksha and frees one from the cycles of life and death.")],
      );
    }
     if (x == 6) {
      return Column(
        children: <Widget>[
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fprehnite-cats-eye.jpg?alt=media"),
          Text("Prehnite Cats Eye :\n\nYou can have a look at these collections and decide what you want as per your requirement and budget.\n\nWhat ever you buy comes with a Lab Certificate, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna.\n\nThis is a Gem of Ketu (Dragon\’s Tail ) .By wearing this gem one is able to subdue his enemies and is able to remove the effect of any negative forces working on him. This gives one social recognition and sudden spurts of growth. It protects from Erratic income and bestows stability in life. This is the gem of Moksha and frees one from the cycles of life and death.")],
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cat's Eye"),
      ),
      body: ListView(
        children: <Widget>[
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media"),
          Text(
            "Baingani Lehsunia",
            style: TextStyle(color: Colors.purple, fontSize: 20.0),
          ),
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media"),
          Text("Select One"),
          DropdownButton(
            items: [
              DropdownMenuItem<int>(
                child: Text("Lehsunia Info"),
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
                child: Text("Treated Lehsunia"),
                value: 4,
              ),
            ],
            onChanged: (int x) {
              setState(() {
                v1 = x;
              });
            },
          ),
          bottomData(v1),
        ],
      ),
    );
  }
}
