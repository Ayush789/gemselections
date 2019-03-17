//import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:gemselections/Pages/astrology/Astrology.dart';
import 'package:gemselections/Pages/astrology/AstrologyMainPage.dart';
import 'package:gemselections/Pages/diamonds.dart';
import 'package:gemselections/Pages/gemstoneRecommendation.dart';
import 'package:gemselections/Pages/gemstones.dart';
import 'package:gemselections/Pages/gemstonesmainpage.dart';
import 'package:gemselections/Pages/imageurl.dart';
import 'package:gemselections/Pages/inthenewspage.dart';
import 'package:gemselections/Pages/jwellry.dart';
import 'package:gemselections/Pages/knowledgeBase.dart';
import 'package:gemselections/Pages/mainscaffold.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:gemselections/Pages/rudraksh/rudrakshhome.dart';
import 'package:gemselections/Pages/testimonials.dart';
import 'package:gemselections/Pages/webView.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;

    return MainScaffold(
      body: ListView(
        children: <Widget>[
          CarouselSlider(
            autoPlay: true,
            // height: 400,
            enlargeCenterPage: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            items: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: GestureDetector(child: Image.asset("assets/landing/raveena.jpg"),
                        onTap: ()=>launchYoutube("EU4uOhVwILY"),)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5.0),child: GestureDetector(child: Image.asset("assets/landing/inmedia.jpg"),
                onTap: (){
                   Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InTheNewsPage()));
                },)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5.0),child: GestureDetector(child: Image.asset("assets/landing/testimonial.jpg"),
                       onTap: (){
                   Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TestimonialsPage()));
                },)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5.0),child: GestureDetector(child: Image.asset("assets/landing/astrodose.jpeg"),
                 onTap: (){
                   Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AstrologyPage()));
                },)),
              
            ],
            viewportFraction: .9,
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GemStonesMainPage()));
            },
            padding: EdgeInsets.symmetric(vertical: 2.0),
            child: Image.asset(
              "assets/landing/gemstone.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DiamondPage()));
            },
            padding: EdgeInsets.symmetric(vertical: 2.0),
            child: Image.asset(
              "assets/landing/diamonds.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GemStoneRecommendation()));
            },
            padding: EdgeInsets.symmetric(vertical: 2.0),
            child: Image.asset(
              "assets/landing/recommendation.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => JwelleryPage()));
            },
            padding: EdgeInsets.symmetric(vertical: 2.0),
            child: Image.asset(
              "assets/landing/jwellery.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),
          // FlatButton(
          //   onPressed: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => AstrologyPage()));
          //   },
          //   padding: EdgeInsets.symmetric(vertical: 2.0),
          //   child: Image.asset(
          //     "assets/landing/astrology.jpg",
          //     fit: BoxFit.fitWidth,
          //   ),
          // ),
          // FlatButton(
          //   onPressed: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => AstrologyPage()));
          //   },
          //   padding: EdgeInsets.symmetric(vertical: 2.0),
          //   child: Image.asset(
          //     "assets/landing/astrology.jpg",
          //     fit: BoxFit.fitWidth,
          //   ),
          // ),
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AstrologyMainPage()));
            },
            padding: EdgeInsets.symmetric(vertical: 2.0),
            child: Image.asset(
              "assets/landing/astrology2.jpg",
              fit: BoxFit.fitWidth,
            ),
            ),

          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => KnowledgeBasePage()));
            },
            padding: EdgeInsets.symmetric(vertical: 2.0),
            child: Image.asset(
              "assets/landing/knowledgeBase.jpeg",
              fit: BoxFit.fitWidth,
            ),
          ),

          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RudrakshHomePage()));
            },
            padding: EdgeInsets.symmetric(vertical: 2.0),
            child: Image.asset(
              "assets/landing/rudraksha.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InTheNewsPage()));
            },
            padding: EdgeInsets.symmetric(vertical: 2.0),
            child: Image.asset(
              "assets/landing/inmedia.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),
          FlatButton(
            onPressed: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => InTheNewsPage()));
            },
            padding: EdgeInsets.symmetric(vertical: 2.0),
            child: Image.asset(
              "assets/landing/customer_reviews.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),
          // FlatButton(
          //   onPressed: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => InTheNewsPage()));
          //   },
          //   padding: EdgeInsets.symmetric(vertical: 2.0),
          //   child: Image.asset(
          //     "assets/landing/why_gem.jpg",
          //     fit: BoxFit.fitWidth,
          //   ),
          // ),
          // FlatButton(
          //   onPressed: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => InTheNewsPage()));
          //   },
          //   padding: EdgeInsets.symmetric(vertical: 2.0),
          //   child: Image.asset(
          //     "assets/landing/join.jpg",
          //     fit: BoxFit.fitWidth,
          //   ),
          // ),
          // FlatButton(
          //   onPressed: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => TestimonialsPage()));
          //   },
          //   padding: EdgeInsets.symmetric(vertical: 2.0),
          //   child: Image.asset(
          //     "assets/landing/live.jpg",
          //     fit: BoxFit.fitWidth,
          //   ),
          // ),
          // FlatButton(
          //   onPressed: () {},
          //   padding: EdgeInsets.symmetric(vertical: 2.0),
          //   child: Image.asset(
          //     "assets/landing/visit_us.jpg",
          //     fit: BoxFit.fitWidth,
          //   ),
          // ),
          // FlatButton(
          //   onPressed: () {},
          //   padding: EdgeInsets.symmetric(vertical: 2.0),
          //   child: Image.asset(
          //     "assets/landing/fqs.jpg",
          //     fit: BoxFit.fitWidth,
          //   ),
          // ),
          // FlatButton(
          //   onPressed: () {},
          //   padding: EdgeInsets.symmetric(vertical: 2.0),
          //   child: Image.asset(
          //     "assets/landing/todays_update.jpg",
          //     fit: BoxFit.fitWidth,
          //   ),
          // ),
          // FlatButton(
          //   onPressed: () {},
          //   padding: EdgeInsets.symmetric(vertical: 2.0),
          //   child: Image.asset(
          //     "assets/landing/blogs2.jpg",
          //     fit: BoxFit.fitWidth,
          //   ),
          // ),
          // FlatButton(
          //   onPressed: () {},
          //   padding: EdgeInsets.symmetric(vertical: 2.0),
          //   child: Image.asset(
          //     "assets/landing/vlogs.jpg",
          //     fit: BoxFit.fitWidth,
          //   ),
          // ),
          // FlatButton(
          //   onPressed: () {},
          //   padding: EdgeInsets.symmetric(vertical: 2.0),
          //   child: Image.asset(
          //     "assets/landing/astrology2.jpg",
          //     fit: BoxFit.fitWidth,
          //   ),
          // ),
          // FlatButton(
          //   onPressed: () {},
          //   padding: EdgeInsets.symmetric(vertical: 2.0),
          //   child: Image.asset(
          //     "assets/landing/remedies.jpg",
          //     fit: BoxFit.fitWidth,
          //   ),
          // ),
          // FlatButton(
          //   onPressed: () {},
          //   padding: EdgeInsets.symmetric(vertical: 2.0),
          //   child: Image.asset(
          //     "assets/landing/preciousgemstone.jpg",
          //     fit: BoxFit.fitWidth,
          //   ),
          // ),
          // FlatButton(
          //   onPressed: () {},
          //   padding: EdgeInsets.symmetric(vertical: 2.0),
          //   child: Image.asset(
          //     "assets/landing/semi_pre.jpg",
          //     fit: BoxFit.fitWidth,
          //   ),
          // ),
          // FlatButton(
          //   onPressed: () {},
          //   padding: EdgeInsets.symmetric(vertical: 2.0),
          //   child: Image.asset(
          //     "assets/landing/birthstone.jpg",
          //     fit: BoxFit.fitWidth,
          //   ),
          // ),
          // FlatButton(
          //   onPressed: () {},
          //   padding: EdgeInsets.symmetric(vertical: 2.0),
          //   child: Image.asset(
          //     "assets/landing/abhimantran.jpg",
          //     fit: BoxFit.fitWidth,
          //   ),
          // ),
          
          FlatButton(
            onPressed: () {
               Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => WebViewGem(url: "https://khannagems.com/about-us/")));
            },
            padding: EdgeInsets.symmetric(vertical: 2.0),
            child: Image.asset(
              "assets/landing/reasons.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
