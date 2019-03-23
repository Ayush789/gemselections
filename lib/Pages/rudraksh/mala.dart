import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';
import 'package:gemselections/Pages/rudraksh/rudrakshscaffold.dart';

class RudrakshMala extends StatefulWidget {
  @override
  _RudrakshMalaState createState() => _RudrakshMalaState();
}

class _RudrakshMalaState extends State<RudrakshMala> {
  @override
  Widget build(BuildContext context) {
    return RudrakshScaffold(
      body:Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView(
          children: <Widget>[
            Container(
              child: CachedNetworkImage(
                  imageUrl: "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Frudraksha-banner.jpg?alt=media",
                   placeholder: (context, url) =>Align(alignment: Alignment.center,child: CircularProgressIndicator()),
                   errorWidget: (context, url, error) => Icon(Icons.error),
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
            Text("\n"),
            Text(
                "TWO MUKHI RUDRAKSHA MALA",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.0),
              ),
              //bold
              Text(
                "\u20B9 41550.00",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            Text("Two Mukhi Rudraksha is considered to be the basis of this universe. The benefits that a person derives from the use of this Rudraksha are akin to those derived from AGNI PUJA. In astrology it is said to remove the malefic effects of Moon Quality : Premium,\n\nTwo Mukhi Rudraksha mantra\n\nTwo Mukhi (Om Namah)\n\n\nThe Mantra has to be recited on a Rudhraksha mala and should be spoken in such a way that at least you can hear it. Shri Shiv Mahapuran is of the view that Rudhraksha does not give its full results without the use of proper mantras.\n\nRs. 41550.00"),

            Text("\n"),
            Text(
                "THREE MUKHI RUDRAKSHA MALA",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.0),
              ),
              //bold
              Text(
                "\u20B9 21000.00",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("Three Mukhi Rudraksha mala is a symbol of Brahma, Vishnu and Mahesh. This is considered to be the cause of creation of the three worlds. This curtails the destructive forces within a person and evolves his creativity. This removes the malefic effects of Mars. Quality : Premium,\n\nThe Mantra has to be recited on a Rudhraksha mala and should be spoken in such a way that at least you can hear it. Shri Shiv Mahapuran is of the view that Rudhraksha does not give its full results without the use of proper mantras.\n\nRs. 21000.00\n\nOM NAMAH SHIVAY"),
              Text("\n"),
              Text(
                "FOUR MUKHI RUDRAKSHA MALA",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.0),
              ),
              //bold
              Text(
                "\u20B9 2650.00",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Four Mukhi Rudraksha Mala gives results in all the four dimensions of human endeavour; i.e., Dharm, Arth, Kama and Moksha. Wearing this helps in reducing mental problems. In astrology this is said to remove the malefic effects of Mercury. Quality : Premium,\n\nThe Mantra has to be recited on a Rudhraksha mala and should be spoken in such a way that at least you can hear it. Shri Shiv Mahapuran is of the view that Rudhraksha does not give its full results without the use of proper mantras.\n\nRs. 2650.00\n\nOM NAMAH SHIVAY"
              ),
              Text("\n"),
              Text(
                "FIVE MUKHI RUDRAKSHA MALA",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.0),
              ),
              //bold
              Text(
                "\u20B9 600.00",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Paach Mukhi Rudraksha Mala (five mukhi ) This is a rosary which is used to chant the name of Lord Shiva . It gives peace of mind ,controls the blood pressure and also strengthens the mind . In Ayurveda this is used to cure epilepsy .This mala is widely used to awaken the Kundalini Shakti .\n\nThe Mantra has to be recited on a Rudhraksha mala and should be spoken in such a way that at least you can hear it. Shri Shiv Mahapuran is of the view that Rudhraksha does not give its full results without the use of proper mantras.\n\nOM NAMAH SHIVAY"
              ),
              Text("\n"),
              Text(
                "SIX MUKHI RUDRAKSHA MALA",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.0),
              ),
              Text(
                "\u20B9 2650.00",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Six Mukhi Rudraksha Mala is a form of Kartika and Ganesha. This awakens the sleeping powers of an individual. By wearing this, a person imbibes moral strength, will power and the power of knowledge. This has the complete blessings of Gauri Mata. It gives a person the gift of comprehension. In Astrology it is said to remove the malefic effects of Venus. Quality : Premium,\n\nThe Mantra has to be recited on a Rudhraksha mala and should be spoken in such a way that at least you can hear it. Shri Shiv Mahapuran is of the view that Rudhraksha does not give its full results without the use of proper mantras.\n\nRs. 2650.00\n\nOM NAMAH SHIVAY"
              ),
              Text("\n"),
              Text(
                "SEVEN MUKHI RUDRAKSHA MALA",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.0),
              ),
              Text(
                "\u20B9 10000.00",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Seven Mukhi Rudraksha Mala is said to be dear to Kamdev and is also known by his name. This is also considered to be the form Devi Shakti and Nag Shakti. If it\'s a woman\'s affections you are hoping to attract, the Seven Mukhi Rudraksha is exactly what you need. The beads are known to make the wearer irresistible to the female of the species. This is said to remove the malefic effects of Saturn Quality : Premium,\n\nThe Mantra has to be recited on a Rudhraksha mala and should be spoken in such a way that at least you can hear it. Shri Shiv Mahapuran is of the view that Rudhraksha does not give its full results without the use of proper mantras.\n\nRs. 10000.00\n\nOM NAMAH SHIVAY"
              ),
              Text("\n"),
              Text(
                "EIGHT MUKHI RUDRAKSHA MALA",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.0),
              ),
              Text(
                "\u20B9 8300.00",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Eight Mukhi Rudraksha Mala is a form of Ganesha. This protects the person from problems related to litigation. This also saves one from accidents and potent enemies. The wearer does not get agitated and controls the mind. In Astrology it is said to remove the malefic effects of Rahu. Quality : Premium,\n\nThe Mantra has to be recited on a Rudhraksha mala and should be spoken in such a way that at least you can hear it. Shri Shiv Mahapuran is of the view that Rudhraksha does not give its full results without the use of proper mantras.\n\nOM NAMAH SHIVAY"
              ),
              Text("\n"),
          ],
        ),
      ),
    );
  }
}
