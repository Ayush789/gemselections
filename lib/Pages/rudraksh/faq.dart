import 'package:flutter/material.dart';
import 'package:gemselections/Pages/rudraksh/rudrakshscaffold.dart';

class FAQPage extends StatefulWidget {
  @override
  _FAQPageState createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  @override
  Widget build(BuildContext context) {
    return RudrakshScaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView(
          children: <Widget>[
            Text("Q1 : How can, this mystic power named Rudhraksha, be used by mankind for maximum benefit?", style: TextStyle(fontWeight: FontWeight.bold),),
            Text("A1 : Rudhraksha can either be worn in neck or it can be at a sacred place in house i.e., in the puja room or in front of God’s / Goddess’s idol or picture.\n"),
            Text("Q2 : Should Rudhraksha be worn all the time?", style: TextStyle(fontWeight: FontWeight.bold),),
            Text("A2 : If one chooses to wear a Rudhraksha then he/she should wear it all the day and take off before going to bed. Then it should be worn again after the morning puja / prayers.\n"),
            Text("Q3 : Can one eat non-vegetarian food and take alcohol if one is wearing Rudhraksha?", style: TextStyle(fontWeight: FontWeight.bold),),
            Text("A3 : Though taking non-vegetarian food and alcohol is not recommended to keep the Sanchit Karma pure but the Shiva sect of Hindu religion of which Rudhraksha is a symbol – does not prohibit it. So, one can take non-vegetarian food and take alcohol while wearing Rudhraksha.\n"),
            Text("Q4 : What is the greatest use of Rudhraksha?", style: TextStyle(fontWeight: FontWeight.bold),),
            Text("A4 : Rudhraksha beads regulate the blood pressure thus helping in controlling the thought process. This helps in Meditations which is the ultimate tool to realize the power of the inner self.\n"),
            Text("Q5 : Does wearing Rudhraksha bring results?", style: TextStyle(fontWeight: FontWeight.bold),),
            Text("A5 : Though one of the most sacred possessions of a Hindu – Rudhraksha does not lead to instant results but if worn over a period of time with complete faith and the required mantras are chanted regularly then the results promised by the Mahashiv Purana are surely achieved – this is what the sages say.\n"),
            Text("Q6 : What is the cost of one Mukhi Round Rudhraksha?", style: TextStyle(fontWeight: FontWeight.bold),),
            Text("A6 : One Mukhi Round Rudhraksha, which is said to have extraordinary powers is often heard of but such a piece is not seen in trade – I have never come across such a piece which is original, though I am trading in them since 1987.\n"),
            Text("Q7 : How else can we get the benefits of Rudhraksha?", style: TextStyle(fontWeight: FontWeight.bold),),
            Text("A7 : (1) Rudhraksha can be kept in the place of worship.\n\t (2) One can dip seven beads of five Mukhi Rudhraksha in a glass of water and drink the water daily in the morning. This improves the blood circulation, gives one better concentration and the general nervous system in improved. The Rudhraksha beads have to be changed after every seven days."),
            Padding(padding: EdgeInsets.only(top: 10.0),)
          ],
        ),
      ),
    );
  }
}
