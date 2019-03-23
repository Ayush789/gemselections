import 'package:flutter/material.dart';
import 'package:gemselections/Pages/mainpage.dart';
import 'package:gemselections/Pages/rudraksh/beads.dart';
import 'package:gemselections/Pages/rudraksh/bracelet.dart';
import 'package:gemselections/Pages/rudraksh/faq.dart';
import 'package:gemselections/Pages/rudraksh/mala.dart';
import 'package:gemselections/Pages/rudraksh/rudrakshhome.dart';
import 'package:gemselections/Pages/rudraksh/yugal.dart';
import 'package:gemselections/Pages/mainscaffold.dart';

class RudrakshScaffold extends StatefulWidget {
  Widget body;

  RudrakshScaffold({
    @required this.body,
  });

  @override
  _RudrakshScaffoldState createState() => _RudrakshScaffoldState();
}

class _RudrakshScaffoldState extends State<RudrakshScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF09126F),
        title: Center(child: Image.asset("assets/appbar/bar.jpg")),
        actions: <Widget>[
          FlatButton(
            child: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MainPage()));
            },
          )
        ],
      ),
      body: widget.body,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Rudraksha Home"),
              leading: Icon(Icons.account_circle),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RudrakshHomePage()));
              },
            ),
            ListTile(
              title: Text("Rudraksha Beads"),
              leading: Icon(Icons.account_circle),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BeadPage()));
              },
            ),
            ListTile(
              title: Text("Rudraksha Mala"),
              leading: Icon(Icons.account_circle),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RudrakshMala()));
              },
            ),
            ListTile(
              title: Text("Rudraksha Bracelets"),
              leading: Icon(Icons.account_circle),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BraceletPage()));
              },
            ),
            ListTile(
              title: Text("Rudraksha Yugal"),
              leading: Icon(Icons.account_circle),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => YugalPage()));
              },
            ),
            Divider(),
            ListTile(
              title: Text("Extras"),
            ),
            ListTile(
              title: Text("Mantras for rudraksha"),
              leading: Icon(Icons.account_circle),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: 
                        SingleChildScrollView(child: Text("One Mukhi \t(Om Harim Namah)\n\nTwo Mukhi \t(Om Namah)\n\nThree Mukhi \t(Kali Namah)\n\nFour Mukhi \t(Om Harim Namah)\n\nFive Mukhi \t(Om Harim Namah)\n\nSix Mukhi \t(Om Harim Humm Namah)\n\nSeven Mukhi \t(Om Humm Namah)\n\nEight Mukhi \t(Om Humm Namah)\n\nNine Mukhi \t(Om Humm Namah)\n\nTen Mukhi \t(Om Harim Humm Namah)\n\nEleven Mukhi \t(Om Harim Namah)\n\nTwelve Mukhi \t(Om Humm Namah)\n\nThirteen Mukhi \t(Om Shrom Namah)\n\nFourteen Mukhi \t(Om Harim Namah)\n\nGauri Shankar \t (Om Namah Shivai)\n\n\nThe Mantra has to be recited on a Rudhraksha mala and should be spoken in such a way that at least you can hear it. Shri Shiv Mahapuran is of the view that Rudhraksha does not give its full results without the use of proper mantras.")),
                      );
                    }  );
              },
            ),
            ListTile(
              title: Text("How to wear"),
              leading: Icon(Icons.account_circle),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text(" The scared Rudhraksha that you have got is abhimantrit and empowered by Pankaj Khanna, so that it gives maximum results. This is ready to wear or can be kept in your place of worship and should be worn on a Monday morning before 7.30 a.m.\n\nTo recharge it, you should take it off one week before Mahashivratri. Take a clean bowl and put the Rudraksha in it. Add Pure Desi Ghee in that bowl so that the Rudhraksha is properly immersed in it. Add some sandal wood powder, a bit of turmeric powder (Haldi) in that bowl. Leave it for a week’s time or more.\n\nThen on Mahashivratri day before 7.30 a.m. wash it with Ganga Jal mixed with saffron (kesar) and wear it after chanting the required mantra 108 times. Fasting on Mondays and Mahashivratri day will also be great help and improves the results from a Rudraksha."),
                      );
                    });
              },
            ),
            ListTile(
              title: Text("Authenticity"),
              leading: Icon(Icons.account_circle),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: 
                        SingleChildScrollView(
                                                  child: Column(
                            children: <Widget>[
                              Text("  The Mystic bead Rudhraksha is highly sacred to the Hindus of all castes / sects and regions. But as some of the Rudhraksha are very costly so some people out of greed try to tamper with the Rudhraksha so as to make them like a more costly member of the family.\n\nNow, the question before the buyer is how he should check the authenticity of the Rudhraksha.\n\n\n"),
                              Text("1. EYE TEST: ", style: TextStyle(fontWeight: FontWeight.bold),),
                              Text("Look at the bead all the mukhas / faces should look like joined lips and the partitions where the line is visible should be clear and look natural.\n\n"),
                              Text("2. EYE GLASS: ", style: TextStyle(fontWeight: FontWeight.bold),),
                              Text("Sometimes Rudhraksha are faked by removing the thorn like parts from one piece and then sticking it to another. This can be judged by a close examination by a 10x Lens.\n\n"),
                              Text("3. WATER TEST: ", style: TextStyle(fontWeight: FontWeight.bold),),
                              Text("Put the Rudhraksha in boiling water and let it remain there for 20 – 30 minutes. If some faces are tempered with them they shall come off as the glue – fevicol or the like will come off.\n\n"),
                              Text("4. SCIENTIFIC TEST: ", style: TextStyle(fontWeight: FontWeight.bold),),
                              Text("A botanical laboratory or a botanist can test a Rudhraksha and testify its originality. So, if in doubt take the Rudhraksha to a Botanical laboratory and know the facts."),
                      
                            ],
                          ),
                        ),
                );
                });
              },
            ),
            ListTile(
              title: Text("FAQ"),
              leading: Icon(Icons.account_circle),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FAQPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
