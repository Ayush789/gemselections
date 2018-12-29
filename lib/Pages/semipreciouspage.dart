import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';
import 'package:gemselections/Pages/mainscaffold.dart';

class SemiPreciousGemstonesPage extends StatefulWidget {
  @override
  _SemiPreciousGemstonesPageState createState() =>
      _SemiPreciousGemstonesPageState();
}

class _SemiPreciousGemstonesPageState extends State<SemiPreciousGemstonesPage> {
  int v1 = 1;

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: ListView(
        children: <Widget>[
          Text("We have"),
          Text("Selet a Gemstone"),
          DropdownButtonFormField(
            items: [
              DropdownMenuItem<int>(
                child: Text("Amethyst(Katela)"),
                value: 1,
              ),
              DropdownMenuItem<int>(
                child: Text("Aquamarine(Beruj)"),
                value: 2,
              ),
              DropdownMenuItem<int>(
                child: Text("Black Onyx(Cabocho)"),
                value: 3,
              ),
              DropdownMenuItem<int>(
                child: Text("Black Onyx(Cut)"),
                value: 4,
              ),
              DropdownMenuItem<int>(
                child: Text("Black Rainbow"),
                value: 5,
              ),
              DropdownMenuItem<int>(
                child: Text("Black Star"),
                value: 6,
              ),
              DropdownMenuItem<int>(
                child: Text("Black Topaz"),
                value: 7,
              ),
              
              DropdownMenuItem<int>(
                child: Text("Chandramani"),
                value: 10,
              ),
              DropdownMenuItem<int>(
                child: Text("Dhunela"),
                value: 11,
              ),
              DropdownMenuItem<int>(
                child: Text("Feroja"),
                value: 12,
              ),
              DropdownMenuItem<int>(
                child: Text("Garnet(Tamara)"),
                value: 13,
              ),
              DropdownMenuItem<int>(
                child: Text("Golden Topaz"),
                value: 14,
              ),
              DropdownMenuItem<int>(
                child: Text("Green Amethyst"),
                value: 15,
              ),
              DropdownMenuItem<int>(
                child: Text("Green Fluorite"),
                value: 16,
              ),
              DropdownMenuItem<int>(
                child: Text("Green Garnet(Vasonite)"),
                value: 17,
              ),
              DropdownMenuItem<int>(
                child: Text("Green Onyx"),
                value: 18,
              ),
              DropdownMenuItem<int>(
                child: Text("Green Tourmaline"),
                value: 19,
              ),
              DropdownMenuItem<int>(
                child: Text("Iolite(Kaka Neeli)"),
                value: 20,
              ),
              DropdownMenuItem<int>(
                child: Text("Jade"),
                value: 21,
              ),
              DropdownMenuItem<int>(
                child: Text("Kyanite"),
                value: 24,
              ),
              DropdownMenuItem<int>(
                child: Text("Lajwrat"),
                value: 26,
              ),
              DropdownMenuItem<int>(
                child: Text("Lemon Topaz"),
                value: 28,
              ),
              DropdownMenuItem<int>(
                child: Text("Malachite"),
                value: 29,
              ),
              DropdownMenuItem<int>(
                child: Text("Opal"),
                value: 31,
              ),
              DropdownMenuItem<int>(
                child: Text("Peridot"),
                value: 33,
              ),
              DropdownMenuItem<int>(
                child: Text("Pink Tourmaline"),
                value: 34,
              ),
              DropdownMenuItem<int>(
                child: Text("Red Onyx(Cabochon)"),
                value: 35,
              ),
              DropdownMenuItem<int>(
                child: Text("Red Onyx(Cut)"),
                value: 36,
              ),
              DropdownMenuItem<int>(
                child: Text("Rhodolite Garnet(Cut)"),
                value: 37,
              ),
              DropdownMenuItem<int>(
                child: Text("Rose Quartz"),
                value: 38,
              ),
              DropdownMenuItem<int>(
                child: Text("Smoky Topaz(Dhunela)"),
                value: 39,
              ),
              DropdownMenuItem<int>(
                child: Text("Star Ruby"),
                value: 40,
              ),
              DropdownMenuItem<int>(
                child: Text("Sang-e-Maryam"),
                value: 42,
              ),
              DropdownMenuItem<int>(
                child: Text("Tiger's Eye"),
                value: 45,
              ),
              DropdownMenuItem<int>(
                child: Text("White Coral"),
                value: 48,
              ),
              DropdownMenuItem<int>(
                child: Text("White Quartz"),
                value: 49,
              ),
              DropdownMenuItem<int>(
                child: Text("White Rainbow"),
                value: 50,
              ),
              DropdownMenuItem<int>(
                child: Text("White Topaz"),
                value: 51,
              ),
              DropdownMenuItem<int>(
                child: Text("Zircon"),
                value: 52,
              ),
            ],
            onChanged: (x) {
              setState(() {
                v1 = x;
              });
            },
            value: v1,
          ),
          showbottom(v1),
        ],
      ),
    );
  }

  Widget showbottom(int x) {
    switch (x) {
      case 1:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FAmethist.jpg?alt=media"),
            Text("Amythsy (Katela)"),
            Image.network(imgurl),
            Text("Amethyst( Kateala), Code: ASP 15 (FOR ANY QUERY ON AMETHYST CALL 0091 - 9213932017) Amethyst is a beautiful Gemstone which is Violet-Purple in colour. It has an excellent lustre and transparency.It is traditionally considered, a great help, in getting rid of intoxication. It is even said that if you drink wine in a cup made of Amethyst, it will loose its intoxicating effect. This stone is believed to heal females suffering from gynecological problems. I have been using this Gem for its healing properties since many years. When I did courses in Pranic Healing in 1998 the Healing powers of this Gemstone became more clear to me and I have discovered that its rays can transform the depressed minds and all kinds of mental problems can be healed by this Gemstone. The people who get agitated fast can be relieved of their behavioral problems by the use of this Gem.\n\n"),
            Text("Amethyst can be used by people involved in occult sciences, as it is said to have strong spiritual powers. The Greeks believed that use of this Gem gave un-ending love and affection. Amethyst is a BIRTHSTONE of people born in February but others may also wear it. This gem is useful in controlling one\'s tendency of getting distracted, switching so often from one activity to the other. Since it brings about financial stability, it is of great help to those who find it difficult to manage their financial affairs.\n\n"),
            Text("This Gemstone is a great help to people with broken hearts and those suffering from loneliness. Nine Gems of Amethyst, with a strong Aura, if worn in a bracket can protect the wearer from Evil Eye.\n\n"),
            Text("visit www.astropankaj.com\n\tBenefits of Wearing an Amethyst?\n\tMantra for Amethyst\n\tHow to wear an Amethyst\n\tFinger for Amethyst\n\tWhen to wear an Amethyst?\n\t"),
            Text("\n\nAmethyst Rs. 150.00 Per Ratti.\nWeight Available 3.25 Rt. to 21.25 Rt.\n\n\t"),
            Text("Category : Mineral variety\n\tCrystal system : rhombohedral class 32\n\tCrystal habit : 6-sided prism ending in 6-sided pyramid (typical)\n\tColor : Colorless, Purple, violet\n\tChemical formula : Silica (silicon dioxide, SiO2)\n\tTwinning : Dauphine law, Brazil law, and Japan law\n\tMohs scale hardness : 7–lower in impure varieties\n\tLuster : Vitreous/glossy\n\tStreak : White\n\tSpecific gravity : 3.49–3.57\n\tDiaphaneity : Transparent to translucent\n\tOptical properties : Uniaxial (+)\n\tRefractive index : 1.543–1.553, 1.552–1.554\n\tSolubility : insoluble in common solvents\n\tMelting point : 1650±75 °C\n\tFracture : Conchoidal\n\tCleavage : None"),//bold
            Text("Weight : INR"),//Blue,Bold,Center align
            Text("\t3.25 Ratti Rs. 487.00 INR\n\t4.25 Ratti Rs. 637.00 INR\n\t5.25 Ratti Rs. 787.00 INR\n\t6.25 Ratti Rs. 937.00 INR\n\t7.25 Ratti Rs. 1087.00 INR\n\t8.25 Ratti Rs. 1237.00 INR\n\t9.25 Ratti Rs. 1387.00 INR\n\t10.25 Ratti Rs. 1537.00 INR\n\t11.25 Ratti Rs. 1687.00 INR\n\t12.25 Ratti Rs. 3675.00 INR\n\t13.25 Ratti Rs. 3975.00 INR\n\t14.25 Ratti Rs. 4275.00 INR\n\t15.25 Ratti Rs. 4575.00 INR\n\t16.25 Ratti Rs. 4875.00 INR\n\t17.25 Ratti Rs. 5175.00 INR\n\t18.25 Ratti Rs. 5475.00 INR\n\t19.25 Ratti Rs. 5775.00 INR\n\t20.25 Ratti Rs. 6075.00 INR\n\t21.25 Ratti Rs. 6375.00 INR"),//blue,center-align
          ],
        );

      case 2:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FAquamarine.jpg?alt=media"),
            Text("Aquamarine (Beruj)"),
            Image.network(imgurl),
            Text("Aquamarine( Beruj), Code: ASP 05 (FOR ANY QUERY ON AQUAMARINE CALL 0091 - 9213932017) The most valuable colour of Aquamarine is a rich, sky blue. The lustre is vitreous and not exceptional. The most common art of aquamarine is the emerald type. It is also available in oval or pear shaped. The green of Aquamarine is a watery green without any trace of yellow and is due to iron, not chromium, as can be seen from examination with a gemmological stethoscope. It also has a grey or violet tinge. Rich blue stone several carats in weight are among the most valuable of secondary gems pale or green stones are less valuable than rich blue stones. Benefits: Said to enhance one\'s attractiveness in the eyes of the opposite sex. The gem increases beauty and calmness and it is widely used by astrologers worldwide. It is said to bring love and understanding. Who Should Wear It? A beautiful gem which is most useful for those born under the Zodiac Sign Pisces. It also controls flaring of temper and regulating ego problems. It is highly recommended for those involved in humanitarian causes. Quality : Premium"),
            Text("Aquamarine Rs. 2100 Per Ratti."),//bold
            Text("Weight : INR"),//Bold,Blue,Center-align
            Text(" \t3.25 Ratti Rs. 6825.00 INR\n\t4.25 Ratti Rs. 8925.00 INR\n\t5.25 Ratti Rs. 11025.00 INR\n\t6.25 Ratti Rs. 13125.00 INR\n\t7.25 Ratti Rs. 15225.00 INR\n\t8.25 Ratti Rs. 17325.00 INR\n\t9.25 Ratti Rs. 19425.00 INR\n\t10.25 Ratti Rs. 21525 INR\n\t11.25 Ratti Rs. 23625.00 INR\n\t12.25 Ratti Rs. 25725.00 INR\n\t13.25 Ratti Rs. 27825.00 INR\n\t14.25 Ratti Rs. 29925.00 INR\n\t15.25 Ratti Rs. 32025.00 INR\n\t16.25 Ratti Rs. 34125.00 INR\n\t17.25 Ratti Rs. 36225.00 INR\n\t18.25 Ratti Rs. 38325.00 INR\n\t19.25 Ratti Rs. 40425.00 INR\n\t20.25 Ratti Rs. 42525.00 INR\n\t21.25 Ratti Rs. 44625.00 INR"),//bold,blue,center-align
          ],
        );

      case 3:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FBlack-Onyx-Cabochun.jpg?alt=media"),
            Text("Black Onyx (Cabochon)"),
            Image.network(imgurl),
            Text("Black Onyx Cabochon, (FOR ANY QUERY ON Black Onyx Cabochon CALL 0091 - 9213932017) A Gem, which is beautiful and full of mystic widely used by people who are trying to awaken their Kundalini Power, this gemstone gives a star effect when seen under a single source of light. Benefits: Known to take away the malefic effects of Rahu (Dragon\'s Head) and Ketu (Dragon\'s Tail), his gemstone is widely used to ward off the evil eye. It takes out the negative energy of the chakra on which it is worn and thus improves the physical and mental health of the person. Who should wear it? This gem is very useful for the serious minded people who believe in hard work. This helps to take failures as stepping stones to success and rise in life despite all the factors working against one\'s success. The Black Onyx Cabochon is known to develop great business leads and management experts. Quality : Premium"),
            Text("Black Onyx Cabochon Rs. 150.00 Per Ratti.\n\n\t"),
            Text("Category : Oxide mineral\n\tChemical formula : Silica (silicon dioxide, SiO2)\n\tMolar mass : 60 g / mol\n\tColor : Various\n\tCrystal system : Trigonal, Monoclinic\n\tMohs scale hardness : 6–7\n\tLuster : Vitreous, silky\n\tStreak : White\n\tSpecific gravity : 2.65 – 2.667\n\tDiaphaneity : Translucent\n\tHardness (Mohs scale) : 7"),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text("\t3.25 Ratti Rs. 357.50.00 INR\n\t4.25 Ratti Rs. 467.50 INR\n\t5.25 Ratti Rs. 577.50 INR\n\t6.25 Ratti Rs. 687.50 INR\n\t7.25 Ratti Rs. 797.50 INR\n\t8.25 Ratti Rs. 907.50 INR\n\t9.25 Ratti Rs. 1017.50 INR\n\t10.25 Ratti Rs. 1127.50 INR\n\t11.25 Ratti Rs. 1237.50 INR\n\t12.25 Ratti Rs. 1347.50 INR\n\t13.25 Ratti Rs. 1457.50 INR\n\t14.25 Ratti Rs. 1567.50 INR\n\t15.25 Ratti Rs. 1677.50 INR\n\t16.25 Ratti Rs. 1787.50 INR\n\t17.25 Ratti Rs. 1897.50 INR\n\t18.25 Ratti Rs. 2007.50 INR\n\t19.25 Ratti Rs. 2117.50 INR\n\t20.25 Ratti Rs. 2227.50 INR\n\t21.25 Ratti Rs. 2337.50 INR"),//bold,blue
          ],
        );

      case 4:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FBlack-Onyx-cut.jpg?alt=media"),
            Text("Black Onyx (Cut)"),
            Image.network(imgurl),
             Text("Black Onyx Cabochon, (FOR ANY QUERY ON Black Onyx Cabochon CALL 0091 - 9213932017) A Gem, which is beautiful and full of mystic widely used by people who are trying to awaken their Kundalini Power, this gemstone gives a star effect when seen under a single source of light. Benefits: Known to take away the malefic effects of Rahu (Dragon\'s Head) and Ketu (Dragon\'s Tail), his gemstone is widely used to ward off the evil eye. It takes out the negative energy of the chakra on which it is worn and thus improves the physical and mental health of the person. Who should wear it? This gem is very useful for the serious minded people who believe in hard work. This helps to take failures as stepping stones to success and rise in life despite all the factors working against one\'s success. The Black Onyx Cabochon is known to develop great business leads and management experts. Quality : Premium"),
            Text("Black Onyx Cabochon Rs. 150.00 Per Ratti.\n\n\t"),
            Text("Category : Oxide mineral\n\tChemical formula : Silica (silicon dioxide, SiO2)\n\tMolar mass : 60 g / mol\n\tColor : Various\n\tCrystal system : Trigonal, Monoclinic\n\tMohs scale hardness : 6–7\n\tLuster : Vitreous, silky\n\tStreak : White\n\tSpecific gravity : 2.65 – 2.667\n\tDiaphaneity : Translucent\n\tHardness (Mohs scale) : 7"),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text("\t3.25 Ratti Rs. 357.50.00 INR\n\t4.25 Ratti Rs. 467.50 INR\n\t5.25 Ratti Rs. 577.50 INR\n\t6.25 Ratti Rs. 687.50 INR\n\t7.25 Ratti Rs. 797.50 INR\n\t8.25 Ratti Rs. 907.50 INR\n\t9.25 Ratti Rs. 1017.50 INR\n\t10.25 Ratti Rs. 1127.50 INR\n\t11.25 Ratti Rs. 1237.50 INR\n\t12.25 Ratti Rs. 1347.50 INR\n\t13.25 Ratti Rs. 1457.50 INR\n\t14.25 Ratti Rs. 1567.50 INR\n\t15.25 Ratti Rs. 1677.50 INR\n\t16.25 Ratti Rs. 1787.50 INR\n\t17.25 Ratti Rs. 1897.50 INR\n\t18.25 Ratti Rs. 2007.50 INR\n\t19.25 Ratti Rs. 2117.50 INR\n\t20.25 Ratti Rs. 2227.50 INR\n\t21.25 Ratti Rs. 2337.50 INR"),//bold,blue
          ],
        );

      case 5:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FBlack-Rainbow.jpg?alt=media"),
            Text("Black Rainbow"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 6:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FBlack-Star.jpg?alt=media"),
            Text("Black Star"),
            Image.network(imgurl),
            Text("Black Rainbow Rs. 150.00 Per Ratti."),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text("\t3.25 Ratti Rs. 357.50.00 INR\n\t4.25 Ratti Rs. 467.50 INR\n\t5.25 Ratti Rs. 577.50 INR\n\t6.25 Ratti Rs. 687.50 INR\n\t7.25 Ratti Rs. 797.50 INR\n\t8.25 Ratti Rs. 907.50 INR\n\t9.25 Ratti Rs. 1017.50 INR\n\t10.25 Ratti Rs. 1127.50 INR\n\t11.25 Ratti Rs. 1237.50 INR\n\t12.25 Ratti Rs. 1347.50 INR\n\t13.25 Ratti Rs. 1457.50 INR\n\t14.25 Ratti Rs. 1567.50 INR\n\t15.25 Ratti Rs. 1677.50 INR\n\t16.25 Ratti Rs. 1787.50 INR\n\t17.25 Ratti Rs. 1897.50 INR\n\t18.25 Ratti Rs. 2007.50 INR\n\t19.25 Ratti Rs. 2117.50 INR\n\t20.25 Ratti Rs. 2227.50 INR\n\t21.25 Ratti Rs. 2337.50 INR"),//blue,center-align
          ],
        );

      case 7:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FBlue-Topaz.jpg?alt=media"),
            Text("Blue Topaz"),
            Image.network(imgurl),
            Text("BlueTopaz: Blue in colour, this transparent and hard stone takes a high polish and makes a spectacular jewellery stone. Blue Topaz has uniform sky blue colour. Its colour is mostly pale but sometimes it is also intense blue in colour. Occasionally, coming with a grey or a greenish tinge, the Blue Topaz is mostly free of inclusions. Oval is the most common cut but mixed cut, step cut etc. are also used. Benefits: It is a gem that induces sleep and rest. It keeps the temper cool and makes one generous and kind hearted. It improves the financial assets and gives financial stability. This gem enhances sincerity in all relations of life. Quality : Premium"),
            Text("\n\n Blue Topaz Rs. 550.00 Per Ratti, 1100.00 Per Ratti, 2100.00 Per Ratti."),//bold
            Text("Category : Mineral\n\tCrystal system : Orthorhombic\n\tChemical formula : (Mg, Fe)2SiO4\n\tColor : Yellow, to yellow-green, olive-green, to brownish, sometimes a lime-green, to emerald-ish hue\n\n\tMohs scale hardness : 6.5–7\n\tLuster : Vitreous\n\tStreak : White\n\tSpecific gravity : 3.2–4.3\n\tRefractive index : 1.64–1.70"),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text("\t3.25 Ratti Rs. 1787.50 INR\n\t4.25 Ratti Rs. 2337.50 INR\n\t5.25 Ratti Rs. 2887.50 INR\n\t6.25 Ratti Rs. 3437.50 INR\n\t7.25 Ratti Rs. 3987.50 INR\n\t8.25 Ratti Rs. 4537.50 INR\n\t9.25 Ratti Rs. 5087.50 INR\n\t10.25 Ratti Rs. 5637.50 INR\n\t11.25 Ratti Rs. 6137.50 INR\n\t12.25 Ratti Rs. 6737.50 INR\n\t13.25 Ratti Rs. 7287.50 INR\n\t14.25 Ratti Rs. 7837.00 INR\n\t15.25 Ratti Rs. 8387.50 INR\n\t16.25 Ratti Rs. 8937.50 INR\n\t17.25 Ratti Rs. 9437.50 INR\n\t18.25 Ratti Rs. 10037.50 INR\n\t19.25 Ratti Rs. 10587.50 INR\n\t20.25 Ratti Rs. 11137.50 INR\n\t21.25 Ratti Rs. 11687.50 INR"),//blue,center-align
          ],
        );

    
      
      case 10:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FMoon-Stone.jpg?alt=media"),
            Text("Chandramani | Moonstone"),
            Image.network(imgurl),
            Text("Chandramani, Chandramani generally has an almost transparent ground, which is practically colorless, pale grey or tinged with yellow, with a whitish to silvery white or blue shimmer. It is normally cut into curved pieces for threading into necklaces etc. It is also cut as high-domed cabochons and the sheen is concentrated at the top in a bright spot that sometimes extends across the stone as a distinct \'eye\'. Some Chandramani may have a second ray at right angles to first, forming a cross. Benefits: This is a highly beneficial gem that can be used with great results by all who want to keep their cool and be less affected by the changes in their surroundings said to relieve one of insomnia and low fever. This helps in controlling tempers or excitement. This also gives better concentration of mind and helps in marital problems. In Medical Astrology this helps those suffering from heart ailments, gynecological problems, epilepsy, mental ailments etc. Who should wear it: Considered to be gem of Moon it is best suited for people born under the zodiac sign Cancer. It is said to keep their erratic temperament under control.\n\n"),
            Text("Chandramani Rs. 150.00 Per Ratti."),//bold
            Text("Category : Feldspar variety\n\tColor : Can be numerous colors, including blue, grey, white, pink, green and brown\n\tFracture : uneven to conchoidal\n\n\tMohs scale hardness : 6.0\n\tLuster : Opalescent\n\tStreak : White\n\tSpecific gravity : 2.61"),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text("\t3.25 Ratti Rs. 487.00 INR\n\t4.25 Ratti Rs. 637.00 INR\n\t5.25 Ratti Rs. 787.00 INR\n\t6.25 Ratti Rs. 937.00 INR\n\t7.25 Ratti Rs. 1087.00 INR\n\t8.25 Ratti Rs. 1237.00 INR\n\t9.25 Ratti Rs. 1387.00 INR\n\t10.25 Ratti Rs. 1537.00 INR\n\t11.25 Ratti Rs. 1687.00 INR\n\t12.25 Ratti Rs. 3675.00 INR\n\t13.25 Ratti Rs. 3975.00 INR\n\t14.25 Ratti Rs. 4275.00 INR\n\t15.25 Ratti Rs. 4575.00 INR\n\t16.25 Ratti Rs. 4875.00 INR\n\t17.25 Ratti Rs. 5175.00 INR\n\t18.25 Ratti Rs. 5475.00 INR\n\t19.25 Ratti Rs. 5775.00 INR\n\t20.25 Ratti Rs. 6075.00 INR\n\t21.25 Ratti Rs. 6375.00 INR"),//blue,center-align
          ],
        );

      case 11:
        return Column(
          children: <Widget>[
            Text("Dhunela | Smoky Topaz"),
            Image.network(imgurl),
            Text(" Dhunela, Code: ASP 21(Smoky Topaz)\n\nA brilliant Gem of smoky colour used extensively to ward off evil spirits, Smoky Topaz is especially useful for people facing unfulfilled love. Besides giving one success in love, it is said to protect the wearer from depressions and sleeplessness. Benefits: It has great spiritual, medicinal and super natural power that holds the faith of many and is of immense use to people interested in occult. Also useful in healing eye infections, eye sores, stomach ailments, stomach ulcers, throat infections, giddiness and blood poisoning. Who should wear it? This is a highly recommended colour for research scholars and those who want to acquire a flair for creativity. Quality : Premiu\n\n"),
            Text("Dhunela Rs. 150.00 Per Ratti."),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text("3.25 Ratti Rs. 487.00 INR\n\t4.25 Ratti Rs. 637.00 INR\n\t5.25 Ratti Rs. 787.00 INR\n\t6.25 Ratti Rs. 937.00 INR\n\t7.25 Ratti Rs. 1087.00 INR\n\t8.25 Ratti Rs. 1237.00 INR\n\t9.25 Ratti Rs. 1387.00 INR\n\t10.25 Ratti Rs. 1537.00 INR\n\t11.25 Ratti Rs. 1687.00 INR\n\t12.25 Ratti Rs. 3675.00 INR\n\t13.25 Ratti Rs. 3975.00 INR\n\t14.25 Ratti Rs. 4275.00 INR\n\t15.25 Ratti Rs. 4575.00 INR\n\t16.25 Ratti Rs. 4875.00 INR\n\t17.25 Ratti Rs. 5175.00 INR\n\t18.25 Ratti Rs. 5475.00 INR\n\t19.25 Ratti Rs. 5775.00 INR\n\t20.25 Ratti Rs. 6075.00 INR\n\t21.25 Ratti Rs. 6375.00 INR"),//blue,center-align
          ],
        );

      case 12:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FTurquoise.jpg?alt=media"),
            Text("Feroja | Turquoise"),
            Image.network(imgurl),
            Text("Feroza is one of the few Gems outside the \"Nine Precious Gems\" that has a huge demand both for Astrological purposes and in Jewellery.\n\nA gemstone with soft hue - pleasing to eyes and pocket friendly. It is recommended to people facing bouts of high temper causing them much damage in life. This stone is especially recommended to people that face reversals in love again and again. The Gemstone for Venus and recommended to people born in Taurus and Libra ascendants\n\nI have been recommending Feroza to people suffering from heart aces, problems in love affairs, depressions etc. This Gemstone being related to Venus also improves creativity and Krishma of the wearer.\n\nIn Jewellery it is used in making strings and cabochons that are then set in silver and gold Jewellery. The traditional Rajasthani Jewellery had small gemstone of Feroza, Moonga, Moti, Panna, Manik and Hira Polki.\n\nIn troubled marriages this is a golden remedy. If husband - wife have compatibility problems then wearing a Feroza by both of them can greatly change the scene.\n\nMy Guruji considered it a spiritual stone and kept his right hand on a big piece of this Gemstone while meditating. One of his pupils who was very active faced huge problems in entering the meditative trance - now this was very necessary for the education he was imparting to us so he suggested that he should hold the big Feroza Stone all day in his hand. After this he was able to meditate in 5 days. Such are the unique powers possessed by this gemstone.\n\nOne well known actor named Salman Khan wears this Feroza Gemstone in a chain like silver bracelet. Due to this it is becoming very popular with young Indian males.\n\nWho should wear a Feroza.\n\t1. Those having love affairs must wear this Gemstone.\n\t2. People who get stressed very quickly can benefit from this Gemstone.\n\t3. If a person wants to reach high levels in Spiritual life then this Gemstone is beneficial to him.\n\n\t4. Cinema artists and aspiring artists gain a lot of confidence by wearing a good Feroza\n\nBenefits of Wearing an Feroza.\n\t1. Gives peace of mind.\n\t2. Improves creativity.\n\t3. Improves attractiveness.\n\t4. A good Feroza Gemstone if worn in a pendant can give man an unfair advantage in dealing with females.\n\n\t5. Chronic head aces can be cured by regular use of a good Feroza Stone\n\n"),
            Text("visit  www.astropankaj.com to know:\n\tMantra for Feroza.\n\tHow to wear an Feroza?\n\tFinger for Feroza.\n\tWhen to wear an Feroza?"),
            Text("\n\nFeroza Rs. 350.00 Per Ratti."),//bold
            Text("Category : Phosphate minerals\n\tChemical formula : CuAl6(PO4)4(OH)8·4H2O\n\tStrunz classification : 08.DD.15\n\tColor : Blue, blue-green, green\n\tCrystal system : Triclinic\n\tCrystal habit : Massive, nodular\n\tMohs scale hardness : 5-7\n\tLuster : Waxy to subvitreous\n\tStreak : Bluish white\n\tSpecific gravity : 2.6-2.9\n\tPleochroism : Weak\n\tOptical properties : Biaxial (+)\n\tRefractive index : 1.610, 1.615, 1.650"),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text(" 3.25 Ratti Rs. 1137.00 INR\n\t4.25 Ratti Rs. 1487.00 INR\n\t5.25 Ratti Rs. 1837.00 INR\n\t6.25 Ratti Rs. 2187.00 INR\n\t7.25 Ratti Rs. 2537.00 INR\n\t8.25 Ratti Rs. 2887.00 INR\n\t9.25 Ratti Rs. 3237.00 INR\n\t10.25 Ratti Rs. 3587.00 INR\n\t11.25 Ratti Rs. 3937.00 INR\n\t12.25 Ratti Rs. 4287.00 INR\n\t13.25 Ratti Rs. 4637.00 INR\n\t14.25 Ratti Rs. 4987.00 INR\n\t15.25 Ratti Rs. 5337.00 INR\n\t16.25 Ratti Rs. 5687.00 INR\n\t17.25 Ratti Rs. 6037.00 INR\n\t18.25 Ratti Rs. 6387.00 INR\n\t19.25 Ratti Rs. 6737.00 INR\n\t20.25 Ratti Rs. 7087.00 INR\n\t21.25 Ratti Rs. 7437.00 INR"),//blue,center-align
          ],
        );

      case 13:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FGarnet.jpg?alt=media"),
            Text("Garnet | Tamara"),
            Image.network(imgurl),
            Text("Garnet (Tamaraa), The Colour of garnet is mostly reddish brown buts it can be red, light red, violet, purple etc. Garnets are usually semi-opaque but can be transparent and limpid with highly lustrous faces. They have no cleavage and can be made into Cabochons or faceted with an oval or mixed cut. Widely used in Jewellery and as strings, Garnet is also the birthstone for people born in January. Benefits: antidote for snake bites and for food poisoning. The use of this gem ensures long, fruitful and un-interrupted professional life. This helps in prosperity by facilitating gradual accumulation of wealth. Who should wear it? It is good for people having birth numbers 4 or 8. It is very useful for females having delicate health or suffering from body pains, headaches etc. Quality : Premium"),
            Text("Garnet Rs. 150.00 Per Ratti"),//bold
            Text("Category : Nesosilicate\n\tChemical formula : The general formula X3Y2(SiO4)3\n\tCrystal habit : Rhombic dodecahedra or cubic\n\tFracture : conchoidal to uneven\n\tCrystal system : \n\t\tCubic rhombic dodecahedron,\n\t\ticositetrahedron\n\tCleavage : Indistinct\n\tMohs scale hardness : 6.5 - 7.5\n\tLuster : vitreous to resinous\n\tStreak : White\n\tSpecific gravity : 3.1 - 4.3\n\tBirefringence : None\n\tPleochroism : None\n\tRefractive index : 1.72 - 1.94"),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text("3.25 Ratti Rs. 487.00 INR\n\t4.25 Ratti Rs. 637.00 INR\n\t5.25 Ratti Rs. 787.00 INR\n\t6.25 Ratti Rs. 937.00 INR\n\t7.25 Ratti Rs. 1087.00 INR\n\t8.25 Ratti Rs. 1237.00 INR\n\t9.25 Ratti Rs. 1387.00 INR\n\t10.25 Ratti Rs. 1537.00 INR\n\t11.25 Ratti Rs. 1687.00 INR\n\t12.25 Ratti Rs. 3675.00 INR\n\t13.25 Ratti Rs. 3975.00 INR\n\t14.25 Ratti Rs. 4275.00 INR\n\t15.25 Ratti Rs. 4575.00 INR\n\t16.25 Ratti Rs. 4875.00 INR\n\t17.25 Ratti Rs. 5175.00 INR\n\t18.25 Ratti Rs. 5475.00 INR\n\t19.25 Ratti Rs. 5775.00 INR\n\t20.25 Ratti Rs. 6075.00 INR\n\t21.25 Ratti Rs. 6375.00 INR"),//blue,center-align
          ],
        );

      case 14:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FGolden-Topaz.jpg?alt=media"),
            Text("Golden Topaz | Citrine"),
            Image.network(imgurl),
            Text("Golden Topaz( Citrine ), Code: ASP 16 ( SUNEHLA ) (FOR ANY QUERY ON GOLDEN TOPAZ CALL 0091 - 9213932017)Ideally suited for people born in Zodiac signs ruled by Jupiter i.e., Sagittarius and Pisces, the Golden Topaz is also recommended as a lucky gem of Scorpio and Aries. Benefits: An effective gem, which almost acts as a mental tonic, the Golden Topaz confers dignity and nobility of character. One gets innovative ideas by wearing this gem, and learns to control anger and also turning one\'s energies positively. Who should wear it? Ideally suited for people born in Zodiac signs ruled by Jupiter i.e., Sagittarius and Pisces, the Golden Topaz is also recommended as a lucky gem of Scorpio and Aries. Quality : Premium"),
            Text(" Citrine Rs. 150.00 Per Ratti. \n\n\t"),//bold
            Text("Category : Silicate mineral\n\tCrystal symmetry : Orthorhombic dipyramidal\n\tChemical formula : Al2SiO4(F,OH)2\n\tStrunz classification : 9.AF.35\n\tColor : Colorless, blue, brown, orange, gray, yellow, green, pink and reddish pink\n\tCrystal system : Orthorhombic\n\tCrystal habit : Prismatic crystals with faces striated parallel to long dimension; also columnar, compact, massive\n\tMohs scale hardness : 8 (defining mineral)\n\tLuster : Vitreous\n\tStreak : White\n\tSpecific gravity : 3.49–3.57\n\tDiaphaneity : Transparent\n\tOptical properties : Biaxial (+)\n\tRefractive index : 1.606–1.629, 1.609–1.631, 1.616–1.638"),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text("\t3.25 Ratti Rs. 487.00 INR\n\t4.25 Ratti Rs. 637.00 INR\n\t5.25 Ratti Rs. 787.00 INR\n\t6.25 Ratti Rs. 937.00 INR\n\t7.25 Ratti Rs. 1087.00 INR\n\t8.25 Ratti Rs. 1237.00 INR\n\t9.25 Ratti Rs. 1387.00 INR\n\t10.25 Ratti Rs. 1537.00 INR\n\t11.25 Ratti Rs. 1687.00 INR\n\t12.25 Ratti Rs. 3675.00 INR\n\t13.25 Ratti Rs. 3975.00 INR\n\t14.25 Ratti Rs. 4275.00 INR\n\t15.25 Ratti Rs. 4575.00 INR\n\t16.25 Ratti Rs. 4875.00 INR\n\t17.25 Ratti Rs. 5175.00 INR\n\t18.25 Ratti Rs. 5475.00 INR\n\t19.25 Ratti Rs. 5775.00 INR\n\t20.25 Ratti Rs. 6075.00 INR\n\t21.25 Ratti Rs. 6375.00 INR"),//blue,center-align
          ],
        );

      case 15:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FGreen-Amethys.jpg?alt=media"),
            Text("Green Amethyst"),
            Image.network(imgurl),
            Text("Green Amethyst is one gemstone with an excellent lustre and transparency. Found in a number of cuts like oval, drop mixed cuts, step cuts, the distribution of colour in striking patches, and bands is characteristic. In case of Green Amethyst, when you see it with a lens, you will see inclusions and a series of discontinuous wavy parallel lines. Benefits: It is traditionally considered, a great help, in getting rid of intoxication. It is even said that if you drink wine in a cup made of Green Amethyst, it will loose its intoxicating effect. This stone is believed to heal females suffering from gynecological problems. Also widely used by people involved in occult sciences, as it is said to have impart strong spiritual powers. Who should wear it? The Greeks believed that use of this gem gave un-ending love and affection. Green Amethyst is a birthstone of people born in February but others may also wear it. This gem is useful in controlling one\'s tendency of getting distracted, switching so often from one activity to the other. Since it brings about financial stability, it is of great help to those who find it difficult to manage their financial affairs.\n\n"),
            Text("Green Amethyst Rs. 250.00 per Ratti."),//bold
            Text("Category : Mineral variety\n\tCrystal system : rhombohedral class 32\n\tCrystal habit : 6-sided prism ending in 6-sided pyramid (typical)\n\tColor : Colorless, Purple, violet\n\tChemical formula : Silica (silicon dioxide, SiO2)\n\tTwinning : Dauphine law, Brazil law, and Japan law\n\tMohs scale hardness : 7–lower in impure varieties\n\tLuster : Vitreous/glossy\n\tStreak : White\n\tSpecific gravity : 3.49–3.57\n\tDiaphaneity : Transparent to translucent\n\tOptical properties : Uniaxial (+)\n\tRefractive index : 1.543–1.553, 1.552–1.554\n\tSolubility : insoluble in common solvents\n\tMelting point : 1650±75 °C\n\tFracture : Conchoidal\n\tCleavage : None"),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text("3.25 Ratti Rs. 812.00 INR\n\t4.25 Ratti Rs. 1062.00 INR\n\t5.25 Ratti Rs. 1312.00 INR\n\t6.25 Ratti Rs. 1562.00 INR\n\t7.25 Ratti Rs. 1812.00 INR\n\t8.25 Ratti Rs. 2062.00 INR\n\t9.25 Ratti Rs. 2312.00 INR\n\t10.25 Ratti Rs. 2562.00 INR\n\t11.25 Ratti Rs. 2812.00 INR\n\t12.25 Ratti Rs. 3062.00 INR\n\t13.25 Ratti Rs. 3312.00 INR\n\t14.25 Ratti Rs. 352.00 INR\n\t15.25 Ratti Rs. 3812.00 INR\n\t16.25 Ratti Rs. 4062.00 INR\n\t17.25 Ratti Rs. 4312.00 INR\n\t18.25 Ratti Rs. 4562.00 INR\n\t19.25 Ratti Rs. 4812.00 INR\n\t20.25 Ratti Rs. 10125.00 INR\n\t21.25 Ratti Rs. 10625.00 INR"),//blue,center-align
          ],
        );

      case 16:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FGreen-Flourite.jpg?alt=media"),
            Text("Green Fluorite"),
            Image.network(imgurl),
            Text("Green Florite is a very beautiful Gemstone. Green in colour it is an excellent substitute of Emerald and a Gem Stone of planet Mercury and Ganesha. It is said to bring wealth and serinity. It calms the nervous system, reduces the anxiety and improves the communicaation skills of the wearer. Green Florite can improve the confidence level of the person also.\n\n"),
            Text("Green Florite Rs. 150.00 Per Ratti.\n\n\t"),//bold
            Text("Category : Halide mineral\n\tCrystal system : Isometric, cF12, SpaceGroup Fm3m, No. 225\n\tCrystal habit : Occurs as well-formed coarse sized crystals also nodular, botryoidal, rarely columnar or fibrous; granular, massive\n\n\tColor : Colorless, white, purple, blue, green, yellow, orange, red, pink, brown, bluish black; commonly zoned\n\n\tChemical formula : CaF2\n\tTwinning : Common on {111}, interpenetrant, flattened\n\tMohs scale hardness : 4 (defining mineral)\n\tLuster : Vitreous\n\tStreak : White\n\tSpecific gravity : 3.175–3.184; to 3.56 if high in rare-earth elements\n\n\tStrunz classification : 03.AB.25\n\tDiaphaneity : Transparent to translucent\n\tOptical properties : Isotropic; weak anomalous anisotropism\n\tRefractive index : 1.433–1.448"),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text("3.25 Ratti Rs. 487.00 INR\n\t4.25 Ratti Rs. 637.00 INR\n\t5.25 Ratti Rs. 787.00 INR\n\t6.25 Ratti Rs. 937.00 INR\n\t7.25 Ratti Rs. 1087.00 INR\n\t8.25 Ratti Rs. 1237.00 INR\n\t9.25 Ratti Rs. 1387.00 INR\n\t10.25 Ratti Rs. 1537.00 INR\n\t11.25 Ratti Rs. 1687.00 INR\n\t12.25 Ratti Rs. 3675.00 INR\n\t13.25 Ratti Rs. 3975.00 INR\n\t14.25 Ratti Rs. 4275.00 INR\n\t15.25 Ratti Rs. 4575.00 INR\n\t16.25 Ratti Rs. 4875.00 INR\n\t17.25 Ratti Rs. 5175.00 INR\n\t18.25 Ratti Rs. 5475.00 INR\n\t19.25 Ratti Rs. 5775.00 INR\n\t20.25 Ratti Rs. 6075.00 INR\n\t21.25 Ratti Rs. 6375.00 INR"),//blue,center-align
          ],
        );
      case 17:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FGreen-Garnet.jpg?alt=media"),
            Text("Green Garnet | Vasonite"),
            Image.network(imgurl),
            Text("The Colour of green garnet is mostly green and reddish brown buts it can be red, green, light red, violet, purple etc. Green Garnets are usually semi-opaque but can be transparent and limpid with highly lustrous faces. They have no cleavage and can be made into Cabochons or faceted with an oval or mixed cut. Widely used in Jewellery and as strings, Green Garnet is also the birthstone for people born in January. Benefits: antidote for snake bites and for food poisoning. The use of this gem ensures long, fruitful and un-interrupted professional life. This helps in prosperity by facilitating gradual accumulation of wealth. Who should wear it? It is good for people having birth numbers 4 or 8. It is very useful for females having delicate health or suffering from body pains, headaches etc. Quality : Premium"),
            Text("Green Garnet | Vasonite Rs. 550.00 Per Ratti.\n\n\t"),//bold
            Text("Category : Nesosilicate\n\tCrystal System : Cubic rhombic dodecahedron,icositetrahedron\n\tChemical formula : The general formula X3Y2(SiO4)3\n\tCrystal habit : Rhombic dodecahedra or cubic\n\tFracture : conchoidal to uneven\n\tCrystal system : Cubic rhombic dodecahedron,icositetrahedron\n\tCleavage : Indistinct\n\tMohs scale hardness : 6.5 - 7.5\n\tLuster : vitreous to resinous\n\tStreak : White\n\tSpecific gravity : 3.1 - 4.3\n\tBirefringence : None\n\tPleochroism : None\n\tRefractive index : 1.72 - 1.94Body"),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text("Category : Nesosilicate\n\tCrystal System : Cubic rhombic dodecahedron,icositetrahedron\n\tChemical formula : The general formula X3Y2(SiO4)3\n\tCrystal habit : Rhombic dodecahedra or cubic\n\tFracture : conchoidal to uneven\n\tCrystal system : Cubic rhombic dodecahedron,icositetrahedron\n\tCleavage : Indistinct\n\tMohs scale hardness : 6.5 - 7.5\n\tLuster : vitreous to resinous\n\tStreak : White\n\tSpecific gravity : 3.1 - 4.3\n\tBirefringence : None\n\tPleochroism : None\n\tRefractive index : 1.72 - 1.94"),//blue,center-align
          ],
        );

      case 18:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FOnyx.jpg?alt=media"),
            Text("Green Onyx"),
            Image.network(imgurl),
            Text(" Green Onyx Hard, tough and durable, Green is ideal for carving and engraving or fashioning into beads, spheres and bowls, making paper weights, pen holders, book ends and boxes. Used in inexpensive jewellery Onyx is also used for stone inlay work. With its consecutive layers of different colours, it makes excellent material for cameos and some variegated pieces are used for the carving of multi-coloured figurines. Benefits: Used instead of Emerald, Green Onyx gives good comprehension power and the power to deeply analyse a situation before reacting to it. Mostly used by astrologers to give better business acumen and management skills. Who should wear it? People interested in politics should use it. It restores confidence in life and love. And though it comes in different shades like red, blue, green, yellow, black and white, but astrologically the best suited for wearing, as a ring stone is green onyx.\n\n"),
            Text("Green Onyx Rs. 150.00 Per Ratti."),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text("3.25 Ratti Rs. 487.00 INR\n\t4.25 Ratti Rs. 637.00 INR\n\t5.25 Ratti Rs. 787.00 INR\n\t6.25 Ratti Rs. 937.00 INR\n\t7.25 Ratti Rs. 1087.00 INR\n\t8.25 Ratti Rs. 1237.00 INR\n\t9.25 Ratti Rs. 1387.00 INR\n\t10.25 Ratti Rs. 1537.00 INR\n\t11.25 Ratti Rs. 1687.00 INR\n\t12.25 Ratti Rs. 3675.00 INR\n\t13.25 Ratti Rs. 3975.00 INR\n\t14.25 Ratti Rs. 4275.00 INR\n\t15.25 Ratti Rs. 4575.00 INR\n\t16.25 Ratti Rs. 4875.00 INR\n\t17.25 Ratti Rs. 5175.00 INR\n\t18.25 Ratti Rs. 5475.00 INR\n\t19.25 Ratti Rs. 5775.00 INR\n\t20.25 Ratti Rs. 6075.00 INR\n\t21.25 Ratti Rs. 6375.00 INR"),//blue,center-align
          ],
        );

      case 19:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FTurmuline.jpg?alt=media"),
            Text("Green Tourmaline"),
            Image.network(imgurl),
            Text("Green Tourmaline, A beautiful gem available in nearly all the colours and multi-coloured gems are also available. Its deep colours and enchanting lustre makes it one of the most widely used gemstones. Though good quality Green Tourmaline are expensive but still not as expensive as Emeralds and Rubies. Hence, Astrologers often use these as sub-stones. Benefits: Mostly green coloured Tourmaline are used in Astrology. It has a positive effect on the body and mind and does away with all the malefic influences of Rahu, Ketu, Mars and Saturn. Who should wear it? It improves memory and is very useful for children who are weak in studies also recommended for accountant, software professional etc. who are supposed to strain their mind to a very great extent. Greatly beneficial for business people, politicians and administrators."),
            Text("Green Tourmaline Rs. 1100.00 Per Ratti.\n\n\t"),//bold
            Text("Category : Cyclosilicate\n\tCrystal system : Trigonal\n\tCrystal habit : \n\t\tParallel and elongated. \n\t\tAcicular prisms, \n\t\tsometimes radiating. \n\t\tMassive. Scattered grains.\n\tColor : \n\t\tMost commonly black, but can range from brown, violet, green, pink, or in a dual-colored pink and green.\n\tMohs scale hardness : 7–7.5\n\tLuster : Vitreous, sometimes resinous\n\tStreak : White\n\tSpecific gravity : 3.06 (+.20 -.06)\n\tRefractive index : 1.635–1.675,, 1.610–1.650\n\tSolubility : insoluble in common solvents\n\tPleochroism : \n\t\tRed Tourmaline: Definite; dark red,light red Green Tourmaline: Strong; dark green, yellow-green Brown Tourmaline: Definite; dark brown, light brown Blue Tourmaline: Strong; dark blue, light blue"),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text("3.25 Ratti Rs. 3575.00 INR\n\t4.25 Ratti Rs. 4675.00 INR\n\t5.25 Ratti Rs. 5775.00 INR\n\t6.25 Ratti Rs. 6875.00 INR\n\t7.25 Ratti Rs. 7975.00 INR\n\t8.25 Ratti Rs. 9075.00 INR\n\t9.25 Ratti Rs. 10175.00 INR\n\t10.25 Ratti Rs. 11275.00 INR\n\t11.25 Ratti Rs. 12375.00 INR\n\t12.25 Ratti Rs. 26950.00 INR\n\t13.25 Ratti Rs. 29150.00 INR\n\t14.25 Ratti Rs. 31350.00 INR\n\t15.25 Ratti Rs. 33550.00 INR\n\t16.25 Ratti Rs. 35750.00 INR\n\t17.25 Ratti Rs. 37950.00 INR\n\t18.25 Ratti Rs. 40150.00 INR\n\t19.25 Ratti Rs. 42350.00 INR\n\t20.25 Ratti Rs. 44550.00 INR\n\t21.25 Ratti Rs. 46750.00 INR"),//blue,center-align
          ],
        );

      case 20:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FI-Olite.jpg?alt=media"),
            Text("Iolite (Kakaneeli)"),
            Image.network(imgurl),
            Text("Body"),
            Text("Body"),//bold
            Text("Body"),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text(""),//blue,center-align
          ],
        );

      case 21:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FJade.jpg?alt=media"),
            Text("Jade"),
            Image.network(imgurl),
            Text("Body"),
            Text("Body"),//bold
            Text("Body"),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text(""),//blue,center-align
          ],
        );

     

    

      case 24:
        return Column(
          children: <Widget>[
            Text("Kyanite"),
            Text("Body"),
            Text("Body"),//bold
            Text("Body"),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text(""),//blue,center-align
          ],
        );

     

      case 26:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FLepis-Lazuli.jpg?alt=media"),
            Text("Lajwrat | Lapiz Lazuli | Lapiz Lazuli"),
            Image.network(imgurl),
            Text("Body"),
            Text("Body"),//bold
            Text("Body"),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text(""),//blue,center-align
          ],
        );

      
      case 28:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FLemon-Topaz.jpg?alt=media"),
            Text("Lemon Topaz"),
            Image.network(imgurl),
            Text("Body"),
            Text("Body"),//bold
            Text("Body"),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text(""),//blue,center-align
          ],
        );

      case 29:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FMalachite.jpg?alt=media"),
            Text("Malachite"),
            Image.network(imgurl),
            Text("Body"),
            Text("Body"),//bold
            Text("Body"),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text(""),//blue,center-align
          ],
        );

    

      case 31:
        return Column(
          children: <Widget>[
            Row(
              children:[
              Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fwhiteopal.img.jpg?alt=media"),
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FOpal.jpg?alt=media"),
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FBlackfireopal.img.jpg?alt=media"),
              
              ],
            ),
            Text("Opal"),
            Image.network(imgurl),
            Text("Body"),
            Text("Body"),//bold
            Text("Body"),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text(""),//blue,center-align
          ],
        );

     

      case 33:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FPeriodot.jpg?alt=media"),
            Text("Peridot"),
            Image.network(imgurl),
            Text("Body"),
            Text("Body"),//bold
            Text("Body"),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text(""),//blue,center-align
          ],
        );

      case 34:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FPink-Tourmaline.jpg?alt=media"),
            Text("Pink Tourmaline"),
            Image.network(imgurl),
            Text("Body"),
            Text("Body"),//bold
            Text("Body"),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text(""),//blue,center-align
          ],
        );

      case 35:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FRed-Onyx-Cabochun.jpg?alt=media"),
            Text("Red Onyx (Cabochon)"),
            Image.network(imgurl),
            Text("Body"),
            Text("Body"),//bold
            Text("Body"),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text(""),//blue,center-align
          ],
        );

      case 36:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FRed-Onyx-cut.jpg?alt=media"),
            Text("Red Onyx(Cut)"),
            Image.network(imgurl),
            Text("Body"),
            Text("Body"),//bold
            Text("Body"),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text(""),//blue,center-align
          ],
        );

      case 37:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Frhodolite-garnet.jpg?alt=media"),
            Text("Rhodolite Garnet(Cut)"),
            Image.network(imgurl),
            Text("Body"),
            Text("Body"),//bold
            Text("Body"),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text(""),//blue,center-align
          ],
        );

      case 38:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FRose-Quartz.jpg?alt=media"),
            Text("Rose Quartz"),
            Image.network(imgurl),
            Text("Body"),
            Text("Body"),//bold
            Text("Body"),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text(""),//blue,center-align
          ],
        );

      case 39:
        return Column(
          children: <Widget>[
            Text("Dhunela | Smoky Topaz"),
            Image.network(imgurl),
            Text("Body"),
            Text("Body"),//bold
            Text("Body"),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text(""),//blue,center-align
          ],
        );

      case 40:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FStar-Ruby.jpg?alt=media"),
            Text("Star Ruby"),
            Image.network(imgurl),
            Text("Body"),
            Text("Body"),//bold
            Text("Body"),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text(""),//blue,center-align
          ],
        );

      

      case 42:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FMarium-gemstone.jpg?alt=media"),
            Text("Sang-e-Maryam"),
            Image.network(imgurl),
            Text("Body"),
            Text("Body"),//bold
            Text("Body"),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text(""),//blue,center-align
          ],
        );

     

      case 45:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FTiger's-Eye-Stone.jpg?alt=media"),
            Text("Tiger's Eye"),
            Image.network(imgurl),
            Text("Body"),
            Text("Body"),//bold
            Text("Body"),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text(""),//blue,center-align
          ],
        );

  
      

      case 48:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FWhite-Coral.jpg?alt=media"),
            Text("White Coral"),
            Image.network(imgurl),
            Text("Body"),
            Text("Body"),//bold
            Text("Body"),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text(""),//blue,center-align
          ],
        );

      case 49:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FWhite-Quartz-gemstone.jpg?alt=media"),
            Text("White Quartz"),
            Image.network(imgurl),
            Text("Body"),
            Text("Body"),//bold
            Text("Body"),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text(""),//blue,center-align
          ],
        );

      case 50:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FWhite-Rainbow.jpg?alt=media"),
            Text("White Rainbow"),
            Image.network(imgurl),
            Text("Body"),
            Text("Body"),//bold
            Text("Body"),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text(""),//blue,center-align
          ],
        );

      case 51:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FWhite-topaz.jpg?alt=media"),
            Text("White Topaz"),
            Image.network(imgurl),
            Text("Body"),
            Text("Body"),//bold
            Text("Body"),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text(""),//blue,center-align
          ],
        );

      case 52:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FZircon.jpg?alt=media"),
            Text("Zircon"),
            Image.network(imgurl),
            Text("Body"),
            Text("Body"),//bold
            Text("Body"),//bold
            Text("Weight : INR"),//bold,blue,center-align
            Text(""),//blue,center-align
          ],
        );


      default:
        return Container();
    }

    return Container();
  }
}
