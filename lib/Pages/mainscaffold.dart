import 'package:flutter/material.dart';

import 'package:gemselections/Pages/astrology/Astrology.dart';
import 'package:gemselections/Pages/abhimantritpage.dart';
import 'package:gemselections/Pages/accountpage.dart';
import 'package:gemselections/Pages/astrologicalremedies.dart';
import 'package:gemselections/Pages/astrology/AstrologyMainPage.dart';
import 'package:gemselections/Pages/birthstones.dart';
import 'package:gemselections/Pages/cabochonGems.dart';
import 'package:gemselections/Pages/diamonds.dart';
import 'package:gemselections/Pages/faq.dart';
import 'package:gemselections/Pages/gemStonesAndAstrology.dart';
import 'package:gemselections/Pages/gemstoneRecommendation.dart';
import 'package:gemselections/Pages/gemstones.dart';
import 'package:gemselections/Pages/gemstonesmainpage.dart';
import 'package:gemselections/Pages/handicraft/goldplatedpots.dart';
import 'package:gemselections/Pages/inthenewspage.dart';
import 'package:gemselections/Pages/japamala.dart';
import 'package:gemselections/Pages/jwellry.dart';
import 'package:gemselections/Pages/kavach.dart';
import 'package:gemselections/Pages/knowledgeBase.dart';
import 'package:gemselections/Pages/mainpage.dart';
import 'package:gemselections/Pages/perfumeries.dart';
import 'package:gemselections/Pages/rudraksh/rudrakshhome.dart';
import 'package:gemselections/Pages/saphatic.dart';
import 'package:gemselections/Pages/sarvamanokamna.dart';
import 'package:gemselections/Pages/semipreciouspage.dart';
import 'package:gemselections/Pages/stoneidols.dart';
import 'package:gemselections/Pages/todaysupdate.dart';
import 'package:gemselections/Pages/triangularGemstones.dart';
import 'package:gemselections/Pages/yantra.dart';
import 'package:url_launcher/url_launcher.dart';

class MainScaffold extends StatefulWidget {
  Widget body;

  MainScaffold({@required this.body});

  @override
  _MainScaffoldState createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

//   _launchcaller()  async 
// {
// const url = "tel:9643165562";

// if (await canLaunch(url)) 
// {
//    await launch(url);
// }

// else{
//   throw 'Could not launch $url';
// }

// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("My Account"),
              leading: Icon(Icons.account_circle),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AccountPage()));
              },
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainPage()));
              },
            ),
            ListTile(
              title: Text("Gemstones"),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GemStonesMainPage()));
              },
            ),
            ListTile(
              title: Text("Diamond"),
              leading: Icon(Icons.attach_money),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DiamondPage()));
              },
            ),
            ListTile(
              title: Text("Gemstones Recommendation"),
              leading: Icon(Icons.adb),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GemStoneRecommendation()));
              },
            ),
            ListTile(
              title: Text("Jewellery"),
              leading: Icon(Icons.attach_money),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => JwelleryPage()));
              },
            ),
            
            // ListTile(
            //   title: Text("Triangular Gemstones"),
            //   leading: Icon(Icons.arrow_right),
            //   onTap: () {
            //     Navigator.pop(context);
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => TriangularGemstonesPage()));
            //   },
            // ),
            // ListTile(
            //   title: Text("Today's Update"),
            //   leading: Icon(Icons.new_releases),
            //   onTap: () {
            //     Navigator.pop(context);
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => TodaysUpdate()));
            //   },
            // ),
            // ListTile(
            //   title: Text("Abhimantrit"),
            //   leading: Icon(Icons.info),
            //   onTap: () {
            //     Navigator.pop(context);
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => AbhimantranMainPage()));
            //   },
            // ),
            // ListTile(
            //   title: Text("Gem Selections\u2122 Astro Dose "),
            //   leading: Icon(Icons.account_circle),
            //   onTap: () {
            //     Navigator.pop(context);
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => AstrologyPage()));
            //   },
            // ),
            // ListTile(
            //   title: Container(
            //     child: Text(
            //       "Cabocho Gemstones",
            //     ),
            //   ),
            //   leading: Icon(Icons.account_circle),
            //   onTap: () {
            //     Navigator.pop(context);
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => CabochonGemsPage()));
            //   },
            // ),
            // ListTile(
            //   title: Text("Birthstones"),
            //   leading: Icon(Icons.account_circle),
            //   onTap: () {
            //     Navigator.pop(context);
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => BirthStonesPage()));
            //   },
            // ),
            // ListTile(
            //   title: Text("Gemstones and Astrology"),
            //   leading: Icon(Icons.account_circle),
            //   onTap: () {
            //     Navigator.pop(context);
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => GemStonesAndAstrology()));
            //   },
            // ),
            // ListTile(
            //   title: Text("Astrological Remedies"),
            //   leading: Icon(Icons.account_circle),
            //   onTap: () {
            //     Navigator.pop(context);
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => AstrologicalRemediesPage()));
            //   },
            // ),
            // ListTile(
            //   title: Text("Gemstones Reccomendations"),
            //   leading: Icon(Icons.account_circle),
            //   onTap: () {
            //     Navigator.pop(context);
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => GemStoneRecommendation()));
            //   },
            // ),
            ListTile(
              title: Text("Astrology"),
              leading: Icon(Icons.account_circle),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AstrologyMainPage()));
              },
            ),
            ListTile(
              title: Text("Knowledge Base"),
              leading: Icon(Icons.account_circle),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => KnowledgeBasePage()));
              },
            ),
            ListTile(
              title: Text("Rudraksha"),
              leading: Icon(Icons.account_circle),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RudrakshHomePage()));
              },
            ),
            
            ListTile(
              title: Text("In the Media"),
              leading: Icon(Icons.account_circle),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InTheNewsPage()));
              },
            ),
            ListTile(
              title: Text("Customer Reviews"),
              leading: Icon(Icons.account_circle),
              onTap: () {
                // Navigator.pop(context);
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => YantraPage()));
              },
            ),
            // ListTile(
            //   title: Text("Saphtic Items"),
            //   leading: Icon(Icons.account_circle),
            //   onTap: () {
            //     Navigator.pop(context);
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => SaphticItemsPage()));
            //   },
            // ),
            // ListTile(
            //   title: Text("Japa Mala"),
            //   leading: Icon(Icons.account_circle),
            //   onTap: () {
            //     Navigator.pop(context);
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => JapaMalaPage()));
            //   },
            // ),
            // ListTile(
            //   title: Text("Kavach"),
            //   leading: Icon(Icons.account_circle),
            //   onTap: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => KavachPage()));
            //   },
            // ),
            // ListTile(
            //   title: Text("Sarva Manokamna Prapti"),
            //   leading: Icon(Icons.account_circle),
            //   onTap: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => SarvaManokamnaPage()));
            //   },
            // ),
            // ListTile(
            //   title: Text("Frequently Asked Ques."),
            //   leading: Icon(Icons.account_circle),
            //   onTap: () {
            //     Navigator.pop(context);
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => FAQPage()));
            //   },
            // ),

            Divider(),
            ListTile(
              title: Text("Contact Us"),
            ),
            ListTile(
              title: Text("Connect With Us"),
              leading: Icon(Icons.person_add),
            ),
            ListTile(
              title: Text("Call Us"),
              leading: Icon(Icons.call),
            ),
            ListTile(
              title: Text("Mail Us"),
              leading: Icon(Icons.mail),
            ),
            ListTile(
              title: Text("Visit Us"),
              leading: Icon(Icons.store),
            ),
            Divider(),
            ListTile(
              title: Text("Spread The Word!"),
            ),
            ListTile(
              title: Text("Share"),
              leading: Icon(Icons.share),
            ),
            ListTile(
              title: Text("Rate App"),
              leading: Icon(Icons.star_border),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFF09126F),
        title: Center(child: Image.asset("assets/appbar/bar.jpg")),
        leading: MaterialButton(
          onPressed: () => _scaffoldKey.currentState.openDrawer(),
          child: Icon(
            Icons.menu,
            color: Color(0xFFFEC92F),
          ),
        ),
        actions: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
               icon: Icon(
                 Icons.phone,
                 color: Color(0xFFFEC92F),
               ),
               onPressed: (){},
                ),
              IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Color(0xFFFEC92F),
                ),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
      body: widget.body,
    );
  }
}

PageRouteBuilder homeRoute = new PageRouteBuilder(
  pageBuilder: (BuildContext context, _, __) {
    return MainPage();
  },
);
