import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';
import 'package:gemselections/Pages/mainscaffold.dart';
import 'dart:ui' as ui;


class GemStonesAndAstrology extends StatefulWidget {
  @override
  _GemStonesAndAstrologyState createState() => _GemStonesAndAstrologyState();
}

class _GemStonesAndAstrologyState extends State<GemStonesAndAstrology> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Which Gem Stone to wear?",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                //color: Colors.deepPurple,
                //decoration: TextDecoration.underline,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            // child: Image.network(
            //     "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fgastro.jpeg?alt=media"),
             child: GestureDetector(
            onTap: (){
              launchYoutube('TByLvRR0oLk');
            },
              child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fgastro.jpeg?alt=media"),
                Align(child: BackdropFilter(
                  filter: new ui.ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
                  child: Icon(Icons.play_arrow, color: Colors.white,size: 70.0,)),alignment: Alignment.center,)
              ],
            ),
          ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Text(
                    "   Gem Stones have a special significance in Vedic Astrology. Since time immemorial Gem Stores have been used to liberate the ruhlin planets. In those days only the kings and have been used to liberate the problems caused by influential people used to wear Gem Stones as recommended by their Astrologers and get the benefits of wearing suitable Gemstones buy now days anyone can wear Gem Stones and get the benefits from the same.\n\n Every planet traverses in its orbit During its movement, it gives out powerful cosmic vibrations The force of these vibrations varies from planet to planet. The radiating energies travel through the Earth's atmosphere, in order to reach the human beings residing there. They are in the form of rays. These rays effects living beings negatively or positively. This means that planetary positions, as well as their interactions with one another, impact us throughout our lives.\n\n The planets rule and resonate with all Gem Stones knowing which planets are giving lavourable karma, and which are presenting challenges is essential in choosing beneficial Gem Stones for healing or personal development. This is the reason Gem Stones can affect different people in vastly different ways.\n\n Planetary rulership of the Gem Stone and how well that planet is positioned in our personal chart on us. Wearing or carrying the appropriate quality Is the primary indicator of that Gem Stone's effect Gem Stone of our most favourable planets will considerably enhance its areas of influence.\n\n Gem Stones are worn to ward of the negative influences of planets as their vibrations corresponds to unique planets. Astrology finds out the suitable gem Stones for a person through astrological calculations that ensure overnil growth and well being. Accurate Gem Stones along with their correct weight and wearing method are mandatory to arouse the desired qualities of a person that ensure success,\n\n Vedic Astrologers call on the power of indian gods and planets to predict the future and help people to avoid the potential negative impact of the planets in all aspects of their lives. According to these astrologers certain gems can prevent or promote the effects of the planets and by wearing appropriate stones, people can use the power of the planets in order to achieve success and maintain good health.\n\n Suitable stone for a person at a given time depends on the radiant energy that each planet emits. This energy affects differently to each person according to his zodiac sign and the position of the planets in his horoscope. Sometimes the impact is favorable but sometimes planetary conditions may change and have a negative impact orn to counteract the negative constellation .\n\nWith all the good leads to more benefits in your current life, the had brings punishments. If specifically, recommended Gem Stones are worn for particular duration or for an entire lifetime they serve to reduce the negative effects of your previous and current karma's. It goes without saying that the gemstones must be natural. untreated and flawless."),
                Text(
                  "\n\n - Pankaj Khanna",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
              crossAxisAlignment: CrossAxisAlignment.end,
            ),
          ),
        ],
      ),
    );
  }
}
