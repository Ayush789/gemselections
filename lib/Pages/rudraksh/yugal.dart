import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';
import 'package:gemselections/Pages/rudraksh/rudrakshscaffold.dart';

class YugalPage extends StatefulWidget {
  @override
  _YugalPageState createState() => _YugalPageState();
}

class _YugalPageState extends State<YugalPage> {
  @override
  Widget build(BuildContext context) {
    return RudrakshScaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Container(
            child: CachedNetworkImage(
                imageUrl: "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Frudraksha-banner.jpg?alt=media",
                 placeholder: (context, url) =>Align(alignment: Alignment.center,child: CircularProgressIndicator()),
                 errorWidget: (context, url, error) =>Icon(Icons.error),
              ),
              decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 20.0,
                  offset: new Offset(2.0, 7.0),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10.0),),
            Text("Yugal Yantras",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0, fontStyle: FontStyle.italic),textAlign: TextAlign.center,),
            Padding(padding: EdgeInsets.only(top: 10.0),),
             Text(
              "Aakarshan Vriddhi Yantra",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.0),
            ),
            //bold
            Text(
              "\u20B9 6000.00",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Card(
              elevation: 2.0,
              child: Image.network(
                  "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Faakarshanvriddhiyantra.jpg?alt=media"),
            ),
           
            Text(
                "\nAakarshan Vriddhi Yantra. (AVY08) Cleopatra was known to wear magnets on her body and that helped her to attract the opposite sex. Seven Mukhi Rudraksha is manifestation of Kamdev and pearl is the Gem of Beauty these there in. Combination can gives you an unfore advantage in attracting the opposite sex and retaining it. Men and Women of all age groups can use it. Advantageously\n\nThe Mantra has to be recited on a Rudhraksha mala and should be spoken in such a way that at least you can hear it. Shri Shiv Mahapuran is of the view that Rudhraksha does not give its full results without the use of proper mantras.\n\n"),
            Text(
              "\nLaxmi Vardhak Yugal",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.0),
            ),
            //bold
            Text(
              "\u20B9 2100.00",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            //bold
            Text(
                "Laxmi Vardhak Yugal. (LVY02) Rudraksha Combination for Wealth (Laxmi Vardhak Yugal) : Six Mukhi Rudraksha has the powers of Venus it gives wealth. Laxmiji resides where Six Mukhi is kept. In combination with Four Mukhi Rudraksha which is the manifestation of Genesha and Emerald which brings all kinds of wealth and makes it stable. If this combination is worn regularly and Laxmi Strota is recited daily then all wants of the person are automatically fulfilled and he is never seen in a state of dissatisfaction.\n\nThe Mantra has to be recited on a Rudhraksha mala and should be spoken in such a way that at least you can hear it. Shri Shiv Mahapuran is of the view that Rudhraksha does not give its full results without the use of proper mantras.\n\n"),

            //bold
            Text(
              "Raktachap Niyantran Raj Yog Yugal",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.0),
            ),
            Text(
              "\u20B9 3100",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
                "Raktachap Niyantran tatha Rajya such Yugal. (RNT06) Sun is the regulator of heart and blood stream in combination with Rudraksha it is said to give special efforts. It also help in giving better status in service and gives the support of the government and senio\u20B9 Rudraksha Mala, 7.25 Rati Ruby Surya lockets made of 92.5% Pure Silver with Surya Mantra Engraved on it.\n\nThe Mantra has to be recited on a Rudhraksha mala and should be spoken in such a way that at least you can hear it. Shri Shiv Mahapuran is of the view that Rudhraksha does not give its full results without the use of proper mantras.\n\n"),

            Text(
              "Sarve Manokamana Prapti Yugal",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.0),
            ),
            //bold
            Text(
              "\u20B92100",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            //bold
            Text(
                "Sarve Manokamana Prapti Yugal. (SMY09) Life is short and the desires of mankind are multiple. The planet Jupiter is said to give earthly pleasures and also salvation after death. Sarva Mano – Kamna Prapti Yugal empowers Jupiter and gives all that a man desires in life. It contains 3.25 rt Golden Topaz made in silver with Guru Mantra inscribed on it strung in a thread with two beads of the mighty Five Mukhi Rudraksha. It should be regularly worn and the mantra of Jupiter ‘Om ! Gram Greem Groom Sah Guruve Namah’ should be regularly chanted to strengthen Jupiter and for fulfilment of all desires.\n\nThe Mantra has to be recited on a Rudhraksha mala and should be spoken in such a way that at least you can hear it. Shri Shiv Mahapuran is of the view that Rudhraksha does not give its full results without the use of proper mantras.\n\n"),
            Text(
              "Shatru Nashak Yugal",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.0),
            ),
            //bold
            Text(
              "\u20B9 1550.00",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            //bold
            Text(
                "Shatru Nashak Yugal. (SNY03) Rudraksha Combination to Win Over Enemies (Shatru Nashak Yugal): All successful people have to face enemies created by envy. Enemies not only try to harm you by various means but also steel your peace of mind. Various Vedic prayers and Tantric rituals are available for steeling a victory over ones enemies. Shatru Nashak Rudraksha Yugal is aimed at puncturing the power base of the people having ill feelings or enmity towards you. It weakens there resolve and creates problems for them so that instead of putting there mind on creating problems for you they get busy fighting for there own survival.\n\nThe Mantra has to be recited on a Rudhraksha mala and should be spoken in such a way that at least you can hear it. Shri Shiv Mahapuran is of the view that Rudhraksha does not give its full results without the use of proper mantras.\n\n"),
            Text(
              "Sukhi Bhav Yugal",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.0),
            ),
            //bold
            Text(
              "\u20B9 2100",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            //bold
            Text(
                "Sukhi Bhav Yugal. (SBY05) Rudraksha Combination for Betterment of Married Life / Love (Sukhi Bhav Yugal) : All wealth, fame, success and achievements seem useless for a person who does not get love in life, instead of happiness there is a constant state of depression. To overcome these problems one should wear this Yugal. If one wears it regularly and chants Gayatri Mantra he/she gets love from the cherished members of opposite sex giving a sense of fulfilment.\n\nThe Mantra has to be recited on a Rudhraksha mala and should be spoken in such a way that at least you can hear it. Shri Shiv Mahapuran is of the view that Rudhraksha does not give its full results without the use of proper mantras.\n\n"),
            Text(
              "Vidya Vardhak Yugal",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.0),
            ),
            //bold
            Text(
              "\u20B9 5100",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            //bold
            Text(
                "Vidya Vardhak Yugal. (VVY01) Rudraksha Combination for Education (Vidya Vardhak Yugal) This Rudraksha combination (Yugal) improves the level of concentration, retentive power and restrains the mind from being deverted towards Maya created by the various Rajasik and Tamsik powers (shakties) of nature. The results that the students get by wearing this combination are simply amazing. There retentive power and intelligence level improves leading to better grades.\n\nThe Mantra has to be recited on a Rudhraksha mala and should be spoken in such a way that at least you can hear it. Shri Shiv Mahapuran is of the view that Rudhraksha does not give its full results without the use of proper mantras.\n\n"),
            Text(
              "Vijaye Bhav Yugal",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.0),
            ),
            //bold
            Text(
              "\u20B9 11000",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            //bold
            Text(
                " Vijaye Bhav Yugal. (VBY04) Rudraksha Combination to get Professional Rise (Vijaye Bhav Yugal) Nothing succeeds like success is a truth known to all of us but our efforts are not always rewarded and we all often feel that there are certain cosmic powers which must support our efforts in order to give us a lasting success. Vijaye Bhav Yugal helps in getting support of these powe\u20B9 If this Yugal is constantly worn and the mantra ‘Om Namah Shivae’ is regularly chanted then the efforts of the person are invariably crowned with success.\n\nThe Mantra has to be recited on a Rudhraksha mala and should be spoken in such a way that at least you can hear it. Shri Shiv Mahapuran is of the view that Rudhraksha does not give its full results without the use of proper mantras.\n\n"),
            Text(
              "Vyapar Vridhi Karja Mukti Yugal",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.0),
            ),
            //bold
            Text(
              "\u20B9 5100",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            //bold
            Text(
                "Vyapar Vridhi Karja Mukti Yugal. (VVK07) Emerals ie, Morkat mani or Panna is the Gem of lord Ganesha this Gem gives enhancement of wealth and success in Business ventures in combination with the Rudraksha of Budh the Four Mukhi Rudraksha it gives Instant results. It is a must for people who want to rice in Business and make their Enjoining or future venture a Success. Two Four Mukhi Rudraksha With 7.25 rati Emeralds in 92.5% Pure Silver Yantra With Budh Mantra Engraved on in.\n\nThe Mantra has to be recited on a Rudhraksha mala and should be spoken in such a way that at least you can hear it. Shri Shiv Mahapuran is of the view that Rudhraksha does not give its full results without the use of proper mantras.\n\n"),
          ],
        ),
      ),
    );
  }
}
