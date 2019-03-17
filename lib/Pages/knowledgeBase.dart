import 'package:flutter/material.dart';
import 'package:gemselections/Pages/astrology/Astrology.dart';
import 'package:gemselections/Pages/faq.dart';
import 'package:gemselections/Pages/imageurl.dart';
import 'package:gemselections/Pages/mainscaffold.dart';
import 'package:gemselections/Pages/todaysupdate.dart';
import 'package:gemselections/Pages/webView.dart';


class KnowledgeBasePage extends StatefulWidget {
  @override
  _KnowledgeBasePageState createState() => _KnowledgeBasePageState();
}

class _KnowledgeBasePageState extends State<KnowledgeBasePage> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: ListView(
        children: <Widget>[
         
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FAQPage()));
            },
            padding: EdgeInsets.symmetric(vertical: 2.0),
            child: Image.asset(
              "assets/landing/fqs.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),
         
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TodaysUpdate()));
            },
            padding: EdgeInsets.symmetric(vertical: 2.0),
            child: Image.asset(
              "assets/landing/todays_update.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),

          FlatButton(
            onPressed: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => TodaysUpdate()));
            },
            padding: EdgeInsets.symmetric(vertical: 2.0),
            child: Image.asset(
              "assets/landing/blogs2.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),

          FlatButton(
           onPressed: () {
               Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => WebViewGem(url: "https://www.youtube.com/channel/UCt3nkzLE2NKMuwu3V0KQtbw")));
            },
            padding: EdgeInsets.symmetric(vertical: 2.0),
            child: Image.asset(
              "assets/landing/vlogs.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),
          
        ],
      ),
    );
  }
}