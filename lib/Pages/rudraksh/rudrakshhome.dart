import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';
import 'package:gemselections/Pages/rudraksh/rudrakshscaffold.dart';

class RudrakshHomePage extends StatefulWidget {
  @override
  _RudrakshHomePageState createState() => _RudrakshHomePageState();
}

class _RudrakshHomePageState extends State<RudrakshHomePage> {
  @override
  Widget build(BuildContext context) {
    return RudrakshScaffold(
      body:ListView(
        children: <Widget>[
          Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Frudraksha-banner.jpg?alt=media"),
          Text("\"The Message\"Rudraksh-From Lord Shiva with Love"),
          Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Frudraksh.jpeg?alt=media"),
          Text(" Why Rudraksha - At the First Stage ? \n\n\tThe human life is full of pain both on the physical as well as emotional level. Our ancient Rishis tried to search for cures for all ailments that effect us . These cures were in the form of Auyerveda , religion etc . But even with a healthy body and complete devotion to God man does not feel happy and to large extent all his efforts after fulfillment of basic bread and butter needs are aimed at searching for that happiness. He wanders in search of this happiness in Disco Thiks and nightclubs or else in Rishikesh or temples ………….. he tries to earn extraordinary money, be a leader but all this leaves a strange emptiness in him.\n\nAmid this position of turmoil Lord Shiva tells Goddess Parvati in Shiv Mahapuran that \" Now for the \' kalyan\' ( emancipation) of mankind I tell you about Rudraksha \" . Rudraksha , is said , to keep our blood pressure in a state of perfect equilibrium thus giving us tranquility and internal peace that helps us in achieving a level of emotional stability . Wearing of Rudraksha also helps us in meditation that is why ancient Rishis used to wear a number of Rudrakshas on their body in order to achieve the state of Samadhi easily and stay in it for a long duration.\n\nRudrakshas help us in achieving a balance and improves our mental faculties .\n\n What is the Unique Advantage of Rudraksha ?\n\nHow Pankaj Khanna\'s Rudraksha\'s different ? \n\tPankaj Khanna has been in the trade of Rudrakshas since 1987. The Rudraksha sold by him are collected from deep jungles through the length and breadth of Himalayas . Once collected they are thoroughly checked for originality, quality and efficacy. After this they are stored in accordance with the dicta\'s of the scriptures . Before sending it to the customer Pankaj Khanna himself empowers it with mantras and then in the most pious way it is packed and then dispatched to the customer in a ready to wear form.\n\n Who can wear Rudrakshas ? \n\n\tAll human beings can wear a Rudraksha without any restriction of race or gender.\n\n After buying the product - What is the process to wear it ? \n\n\tThe scared Rudhraksha that you have got is abhimantrit and empowered by Pankaj Khanna, so that it gives maximum results. This is ready to wear or can be kept in your place of worship and should be worn on a Monday morning before 7.30 a.m.\n\nTo recharge it, you should take it off one week before Mahashivratri. Take a clean bowl and put the Rudraksha in it. Add Pure Desi Ghee in that bowl so that the Rudhraksha is properly immersed in it. Add some sandal wood powder, a bit of turmeric powder (Haldi) in that bowl. Leave it for a week\'s time or more.\n\nThen on Mahashivratri day before 7.30 a.m. wash it with Ganga Jal mixed with saffron (kesar) and wear it after chanting the required mantra 108 times. Fasting on Mondays and Mahashivratri day will also be great help and improves the results from a Rudraksha."),
        ],
      ),
    );
  }
}
