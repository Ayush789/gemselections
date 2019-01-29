import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';


class GomedPage extends StatefulWidget {
  @override
  _GomedPageState createState() => _GomedPageState();
}

class _GomedPageState extends State<GomedPage> {
  int v1;
  var _controller = ScrollController();

  void showPrice1(int v1, BuildContext context) {
    Map<int, List<int>> values = {
      1: [191, 276, 361, 446, 531, 616, 701, 786, 871, 956],
      2: [101, 146,191, 236, 281, 326, 371, 416, 461, 506],
      3: [562,812,1062, 1312, 1562, 1823, 2062, 2312, 2562, 2812],
      4: [1181, 1706, 2231, 2756, 3281, 3806, 4331, 4856, 5381, 5906],
      5: [2475, 3575, 4675, 5775, 6875, 7975, 9075, 10175, 11275, 12375],

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
                  Padding(padding: EdgeInsets.only(top: 10.0),),
                 
                  Text(""),
                  Text("2.25 ratti Stone Rs ${values[v1][0]}/-"),
                  Text("3.25 ratti Stone Rs ${values[v1][1]}/-"),
                  Text("4.25 ratti Stone Rs ${values[v1][2]}/-"),
                  Text("5.25 ratti Stone Rs ${values[v1][3]}/-"),
                  Text("6.25 ratti Stone Rs ${values[v1][4]}/-"),
                  Text("7.25 ratti Stone Rs ${values[v1][5]}/-"),
                  Text("8.25 ratti Stone Rs ${values[v1][6]}/-"),
                  Text("9.25 ratti Stone Rs ${values[v1][7]}/-"),
                  Text("10.25 ratti Stone Rs ${values[v1][8]}/-"),
                  Text("11.25 ratti Stone Rs ${values[v1][9]}/-"),
                ],
              ),
            ),
          );
        });
  }

void certiDialog(int cVal){
  showDialog(
    context: context,
    builder: (BuildContext context){
      return ConstrainedBox(
        constraints: BoxConstraints(maxHeight: 10.0),
              child: AlertDialog(
                // title: Center(child: Text("Tap image to Downlad",
                // style: TextStyle(fontWeight: FontWeight.bold),)),
          content: SizedBox(
            height: 350,
                      child: Stack(
              children: <Widget>[
                  Center(child: CircularProgressIndicator()),
                  Center(child: Builder(
                    builder: (context){
                      if(cVal == 1){
                     return Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fgovt-certified-gaya-gomed.jpg?alt=media&token=0fede20c-7e0f-42ef-ad5c-1050802f507b");
                    }
                    if(cVal == 2){
                      return Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fgovt-certified-orissa-gomed.jpg?alt=media&token=8139e257-54b3-4865-aa2c-86253cd8977e");
                    }
                    }
                   
                  ),
                    ),
              ],
            ),
          )
        ),
      );
    }
  );
}
  // certiDialog(int certi){
  //   return AlertDialog(
  //     content: Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fgovt-certified-gaya-gomed.jpg?alt=media&token=0fede20c-7e0f-42ef-ad5c-1050802f507b")
  //   );
  // }
 
  Widget bottomData(int x) {
    if (x == 1) {
      return Column(
        children: <Widget>[
          Text(
              "At Gem Selections, we have Gomed Stone ranging from Rs.110 per ratti to Rs.3100 per ratti.\nThese days Garnets and raisin made stone are being sold with the support of self made certificates. If you want a real Gomed, never buy one, unless you have visited "),
              Text("Gem Selections, Shop No.8, A-3 DDA Market, Janakpuri, New Delhi - 110058", style: TextStyle(fontWeight: FontWeight.bold),),
              Text("\nYou get Natural Gomed Stone only at Gem Selections, so you must visit us, in your own interest, so that you get a Real Gomed Stone with Govt. Lab Certificate.\nYou can have a look at these collections and decide what you want as per your requirement and budget.\n\nWhat ever you buy comes with a Lab Certificate, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna.\n\nGomed is a variety of Grossular, a Calcium Aluminium mineral of the Garnet family.\nThe name comes from Greek word which means a Garnet of lower hardness and density than most Garnets of the Garnet family.\n\nThis is a Gem of Rahu (Dragon\’s Head ) Rahu gives mental tensions- unnecessary worries and strained relationships .Wearing its gem gives one mental peace and freedom from worries. Rahu is said to give professional excellence and demolishes the enemies power by its strong force.\n\n\t\tGaya Gomed\n\tOrissa Gomed\n\tAfrican Gomed\n\tCeylonese Gomed\n\nGomed if found mainly in India and Sri Lanka. It is also found in Brazil and California and recently mines have been found in Africa.\n\n"),
              Text("Benefits of Wearing Gomed Benefits of Wearing Gomed ", style: TextStyle(fontWeight: FontWeight.bold),),
              Text("\n\t\t1. It reduces un necessary tensions and gives positive disposition to people where Rahu is favorably placed.\n\t\t2. Gomed can reduce stomach ailments.\n\t\t3. Gomed is said to have powers to weaken the enemies.\n\t\t4. This Gemstone is very potent weapon against enemies of all sorts especially the hidden enemies.\n\t\t5. It Rahu is well placed then a big Gomed of 11 to 21 ratti can be worn. This can give the wearer very fast rise in profession and turn the opponents into pulp.6. Powers of a good quality Gomed can change the game in favour of the wearer if correctly recommended and properly worn.7. In politics and public life this can do wonders.")
        ],
      );
    }
    if (x == 2) {
      return Column(
        children: <Widget>[
          Container(
            height: 150.0,
            padding: EdgeInsets.only(bottom: 10.0),
            child: Image.network(
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fgaya-gomed.jpg?alt=media"),
          ),
        
          RaisedButton(
            child: Text("Show Gaya Gomed Price", style: TextStyle(color: Colors.white)),
            color: Colors.red,
            onPressed: ()=>showPrice1(2, context),
          ),
          RaisedButton(
            child: Text("Certificate", style: TextStyle(color: Colors.white)),
            color: Colors.red,
            onPressed: ()=> certiDialog(1),
          ),
          Padding(padding: EdgeInsets.only(top: 10.0),),
          Text(
              "Gaya Gomed", style: TextStyle(fontWeight: FontWeight.bold)),
              Text(" At Gem Selections we have a range of Gaya Gomed i.e., Hessonite from Rs. 50/ Rt to Rs. 3100/ Rt.\n\nYou can have a look at these collections and decide what you want as per your requirement and budget.\n\nWhat ever you buy comes with a Lab Certificate, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna.\n\nThis is a Gem of Rahu (Dragon\’s Head ) Rahu gives mental tensions- unnecessary worries and strained relationships .Wearing its gem gives one mental peace and freedom from worries. Rahu is said to give professional excellence and demolishes the enemies power by its strong force.")
        ],
      );
    }
    if (x == 3) {
      return Column(
        children: <Widget>[
          Container(
            height: 150.0,
            padding: EdgeInsets.only(bottom: 10.0),
            child: Image.network(
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Forrisa-gomed.jpg?alt=media"),
          ),
                RaisedButton(
            child: Text("Show Orrisa Gomed Price", style: TextStyle(color: Colors.white)),
            color: Colors.red,
            onPressed: ()=>showPrice1(3, context),
          ),
          RaisedButton(
            child: Text("Certificate", style: TextStyle(color: Colors.white)),
            color: Colors.red,
             onPressed: ()=> certiDialog(2),
          ),
          Padding(padding: EdgeInsets.only(top: 10.0),),
          Text(
              "  At Gem Selections we have a range of Orissa Gomed i.e., Hessonite from Rs. 50/ Rt to Rs. 3100/ Rt.\n\nYou can have a look at these collections and decide what you want as per your requirement and budget.\n\nWhat ever you buy comes with a Lab Certificate, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna.\n\nThis is a Gem of Rahu (Dragon\’s Head ) Rahu gives mental tensions- unnecessary worries and strained relationships .Wearing its gem gives one mental peace and freedom from worries. Rahu is said to give professional excellence and demolishes the enemies power by its strong force.")
        ],
      );
    }
    if (x == 4) {
      return Column(
        children: <Widget>[
          Container(
            height: 150.0,
            padding: EdgeInsets.only(bottom: 10.0),
            child: Image.network(
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fafrican-gomed.jpg?alt=media"),
          ),
                RaisedButton(
            child: Text("Show African Gomed Price", style: TextStyle(color: Colors.white)),
            color: Colors.red,
            onPressed: ()=>showPrice1(4, context),
          ),
                    Padding(padding: EdgeInsets.only(top: 10.0),),

          Text(
              "At Gem Selections we have a range of African Gomed i.e., Hessonite from Rs. 50/ Rt to Rs. 3100/ Rt.\n\nYou can have a look at these collections and decide what you want as per your requirement and budget.\n\nWhat ever you buy comes with a Lab Certificate, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna.\n\nThis is a Gem of Rahu (Dragon\’s Head) Rahu gives mental tensions- unnecessary worries and strained relationships .Wearing its gem gives one mental peace and freedom from worries. Rahu is said to give professional excellence and demolishes the enemies power by its strong force.")
        ],
      );
    }
    if (x == 5) {
      return Column(
        children: <Widget>[
          Container(
            height: 150.0,
            padding: EdgeInsets.only(bottom: 10.0),
            child: Image.network(
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fafrican-gomed.jpg?alt=media"),
          ),
                RaisedButton(
            child: Text("Show Ceylonese Gomed Price", style: TextStyle(color: Colors.white)),
            color: Colors.red,
            onPressed: ()=>showPrice1(5, context),
          ),
          Padding(padding: EdgeInsets.only(top: 10.0),),

          Text(
              "At Gem Selections we have a range of Celone Gomed i.e., Hessonite from Rs. 50/ Rt to Rs. 3100/ Rt.\n\nYou can have a look at these collections and decide what you want as per your requirement and budget.\n\nWhat ever you buy comes with a Lab Certificate, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna.\n\nThis is a Gem of Rahu (Dragon\’s Head ) Rahu gives mental tensions- unnecessary worries and strained relationships .Wearing its gem gives one mental peace and freedom from worries. Rahu is said to give professional excellence and demolishes the enemies power by its strong force.")
        ],
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hessonite"),
        backgroundColor: Colors.red,
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
                  "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fafrican-gomed.jpg?alt=media"),
            ),
          ),
           Text(
            "GOMED | HESSONITE",
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
                    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/YoutubeImages%2Fhessonite.jpeg?alt=media&token=b18216aa-ff16-4ed9-a4d1-62b9073daad4"),
              ),
              onTap: () => LaunchYoutube(precious_you_link[5]),
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
            padding: EdgeInsets.only(top: 20.0),
            margin: EdgeInsets.symmetric(horizontal: 7.0),
            child: Text(
              " Types",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0),
          ),

          Card(
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                hint: Text("  Select One"),
                items: [
                  DropdownMenuItem<int>(
                    child: Text("Gomed Info"),
                    value: 1,
                  ),
                  DropdownMenuItem<int>(
                    child: Text("Gaya Gomed"),
                    value: 2,
                  ),
                  DropdownMenuItem<int>(
                    child: Text("Orrisa Gomed"),
                    value: 3,
                  ),
                  DropdownMenuItem<int>(
                    child: Text("African Gomed"),
                    value: 4,
                  ),
                  DropdownMenuItem<int>(
                    child: Text("Ceyonese Gomed"),
                    value: 5,
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
           Container(
            padding: EdgeInsets.only(top: 20.0),
          ),
          
          Builder(
            builder: (context) => Container(
              padding: EdgeInsets.symmetric(horizontal: 7.0),
            child: RaisedButton(
              color: Colors.red,
                  onPressed: () => showPrice1(1,context),
                  child: Text("Show Price",
                  style: TextStyle(color: Colors.white),),
                ),
          ),
          ),
            Padding(
            padding: EdgeInsets.only(top: 10.0),
          ),
          Container(
             padding: EdgeInsets.symmetric(horizontal: 7.0),
            child: bottomData(v1)),

             Padding(
            padding: EdgeInsets.only(top: 10.0),
          ),
        ],
      ),
    );
  }
}
