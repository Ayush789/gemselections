import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';


class LehsuniaPage extends StatefulWidget {
  @override
  _LehsuniaPageState createState() => _LehsuniaPageState();
}

class _LehsuniaPageState extends State<LehsuniaPage> {
  int v1;
  var _controller = ScrollController();

  void showPrice1(int v1, BuildContext context) {
    Map<int, List<int>> values = {
      1: [0, 2475, 3575, 4675, 5775, 6875, 7975, 9075, 10175, 11275, 12375],
      2: [0,1181, 1706, 2231, 2756, 3281, 3806, 4331, 4856, 5381, 5906],
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

  
  Widget bottomData(int x) {
    if (x == 1) {
      return Column(
        children: <Widget>[
          Text(
              "Lehsunia\n", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("At Gem Selections we have a range of Cats Eye i.e., "),
              Text("Lehsunia from Rs. 50/ Rt to Rs. 3100/ Rt.", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("\nYou can have a look at these collections and decide what you want as per your requirement and budget.\n\nWhat ever you buy comes with a Lab Certificate, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna.\n\nThis is a Gem of Ketu (Dragon\’s Tail ) .By wearing this gem one is able to subdue his enemies and is able to remove the effect of any negative forces working on him. This gives one social recognition and sudden spurts of growth. It protects from Erratic income and bestows stability in life. This is the gem of Moksha and frees one from the cycles of life and death.")
        ],
      );
    }
    if (x == 2) {
      return Column(
        children: <Widget>[
          Container(
            height: 150.0,
            child: Image.network(
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fchrysoberyl-cats-eye.jpg?alt=media"),
          ),
          Text(
              "CHRYSOBERYL CATS EYE\n", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("This is the most coveted variety of Cat\'s Eye. These Gemstones have a sharply defined and slightly iridesecent ray or eye effect as it is known.\n\nThe Gemstones found in yellow or greenish - brown colour are the best in looks and are highly priced like all cats eyes, the ray appears at its best under a single sight or in direct sunlight. Multiple or differed illuminations spouls the effect.\n\nPrice : Rs. 1100/Rt to Rs. 5100/Rt.\n\nThis is a Gem of Ketu (Dragon\’s Tail ) .By wearing this gem one is able to subdue his enemies and is able to remove the effect of any negative forces working on him. This gives one social recognition and sudden spurts of growth. It protects from Erratic income and bestows stability in life. This is the gem of Moksha and frees one from the cycles of life and death.")
        ],
      );
    }
    if (x == 3) {
      return Column(
        children: <Widget>[
          Container(
            height: 150.0,
            child: Image.network(
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fquartz-cats-eye.jpg?alt=media"),
          ),
          Text("Select One to know price", style: TextStyle(fontWeight: FontWeight.bold)),
           DropdownButton(
             hint: Text("  Quartz Cat's Eye"),
            items: [
              DropdownMenuItem<int>(
                child: Text("A Quality"),
                value: 1,
              ),
              DropdownMenuItem<int>(
                child: Text("B Quality"),
                value: 2,
              ),
            ],
            onChanged: (int x){
              showPrice1(x, context);
            },
           ),
          Text(
              "Quartz Cats Eye\n", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("At Gem Selections we have a range of Quartz Cats Eye i.e., Lehsunia from Rs. 50/ Rt to Rs. 3100/ Rt.\n\nYou can have a look at these collections and decide what you want as per your requirement and budget.\n\nWhat ever you buy comes with a Lab Certificate, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna.\n\nThis is a Gem of Ketu (Dragon\’s Tail ) .By wearing this gem one is able to subdue his enemies and is able to remove the effect of any negative forces working on him. This gives one social recognition and sudden spurts of growth. It protects from Erratic income and bestows stability in life. This is the gem of Moksha and frees one from the cycles of life and death.")
        ],
      );
    }
    if (x == 4) {
      return Column(
        children: <Widget>[
          Container(
            height: 150.0,
            child: Image.network(
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fapatite-cats-eye.jpg?alt=media"),
          ),
          Text(
              "Apatite Cats Eye", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("\nYou can have a look at these collections and decide what you want as per your requirement and budget.\n\nWhat ever you buy comes with a Lab Certificate, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna.\n\nThis is a Gem of Ketu (Dragon\’s Tail ) .By wearing this gem one is able to subdue his enemies and is able to remove the effect of any negative forces working on him. This gives one social recognition and sudden spurts of growth. It protects from Erratic income and bestows stability in life. This is the gem of Moksha and frees one from the cycles of life and death.")
        ],
      );
    }
    if (x == 5) {
      return Column(
        children: <Widget>[
          Container(
            height: 150.0,
            child: Image.network(
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fsillimanite-cats-eye.jpg?alt=media"),
          ),
          Text(
              "Sillimanite Cats Eye", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("\nYou can have a look at these collections and decide what you want as per your requirement and budget.\n\nWhat ever you buy comes with a Lab Certificate, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna.\n\nThis is a Gem of Ketu (Dragon\’s Tail ) .By wearing this gem one is able to subdue his enemies and is able to remove the effect of any negative forces working on him. This gives one social recognition and sudden spurts of growth. It protects from Erratic income and bestows stability in life. This is the gem of Moksha and frees one from the cycles of life and death.")
        ],
      );
    }
    if (x == 6) {
      return Column(
        children: <Widget>[
          Container(
            height: 150.0,
            child: Image.network(
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fprehnite-cats-eye.jpg?alt=media"),
          ),
          Text(
              "Prehnite Cats Eye :", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("\nYou can have a look at these collections and decide what you want as per your requirement and budget.\n\nWhat ever you buy comes with a Lab Certificate, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna.\n\nThis is a Gem of Ketu (Dragon\’s Tail ) .By wearing this gem one is able to subdue his enemies and is able to remove the effect of any negative forces working on him. This gives one social recognition and sudden spurts of growth. It protects from Erratic income and bestows stability in life. This is the gem of Moksha and frees one from the cycles of life and death.")
        ],
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cat's Eye"),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        controller: _controller,
        children: <Widget>[
            Container(
            height: 150.0,
            padding: EdgeInsets.all(30.0),
            child: FadeInImage(
              placeholder: AssetImage(placeholder),
              image: NetworkImage(
                  "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FCats-Eye.jpg?alt=media&token=08bd15d3-2679-4140-8f72-3303668232f9"),
            ),
          ),
         Text(
            "LEHSUNIA | CAT'S EYE",
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
                    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/YoutubeImages%2Fcats_eye.jpeg?alt=media&token=ae9dc166-09ae-447b-bebe-a5ff8da71102"),
              ),
              onTap: () => LaunchYoutube(precious_you_link[8]),
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
            padding: EdgeInsets.only(top: 10.0),
            child: Text("  Types of Cat's Eye", style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.green),),
          ),
          Card(
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          hint: Text("  Select One"),
                items: [
                  DropdownMenuItem<int>(
                    child: Text("Lehsunia Info"),
                    value: 1,
                  ),
                  DropdownMenuItem<int>(
                    child: Text("Chrysoberyl Cat's Eye"),
                    value: 2,
                  ),
                   DropdownMenuItem<int>(
                    child: Text("Quartz Cat's Eye"),
                    value: 3,
                  ),
                  DropdownMenuItem<int>(
                    child: Text("Apatite Cat's Eye"),
                    value: 4,
                  ),
                  DropdownMenuItem<int>(
                    child: Text("Sillimanite Cat's Eye"),
                    value: 5,
                  ),
                   DropdownMenuItem<int>(
                    child: Text("Prehnite Cat's Eye"),
                    value: 6,
                  ),
                ],
                onChanged: (int x) {
                  setState(() {
                    v1 = x;
                  });
                   Future.delayed(const Duration(milliseconds: 100), () {
                    setState(() {
                      _controller.animateTo(
                          _controller.position.extentInside,
                          curve: Curves.easeInOut,
                          duration: Duration(seconds: 2));
                    });
                  });
                },
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 5.0),),
          Center(child: Text("WEIGHT AVAILABLE FROM 2.25 TO 11.25 RATTI", style: TextStyle(fontWeight: FontWeight.bold),)),
           Padding(
            padding: EdgeInsets.only(top: 10.0),
          ),
          Container(
             padding: EdgeInsets.symmetric(horizontal: 7.0),
            child: bottomData(v1)),
            Padding(
            padding: EdgeInsets.only(bottom: 10.0),
          ),
        ],
      ),
    );
  }
}
