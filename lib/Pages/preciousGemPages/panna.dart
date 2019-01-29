import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';

class PannaPage extends StatefulWidget {
  @override
  _PannaPageState createState() => _PannaPageState();
}

class _PannaPageState extends State<PannaPage> {
  int v1, v2;
    var _controller = ScrollController();


  void showPrice1(int v1, int d, BuildContext context) {
    Map<int, List<int>> values = {
      1: [
        31000,
        69750,
        100750,
        131750,
        162750,
        193750,
        224750,
        255750,
        286750,
        317750,
        348750
      ],
      2: [
        21000,
        47250,
        68250,
        89250,
        110250,
        131250,
        152250,
        173250,
        194250,
        215250,
        236250
      ],
      3: [
        15000,
        33750,
        48750,
        63750,
        78750,
        93750,
        108750,
        123750,
        138750,
        153750,
        168750
      ],
      4: [
        11000,
        24750,
        35750,
        46750,
        57750,
        68750,
        79750,
        90750,
        101750,
        112750,
        123750
      ],
      5: [
        8100,
        18225,
        26325,
        34425,
        42525,
        50625,
        58725,
        66825,
        74925,
        83025,
        91125
      ],
      6: [
        6100,
        13725,
        19825,
        25925,
        32025,
        38125,
        44225,
        50325,
        56425,
        62525,
        68625
      ],
      7: [
        4100,
        9225,
        13325,
        17425,
        21525,
        25625,
        29725,
        33825,
        37925,
        42025,
        46125
      ],
      8: [
        3100,
        6975,
        10075,
        13175,
        16275,
        19375,
        22475,
        25575,
        28675,
        31775,
        34875
      ],
      9: [
        2100,
        4725,
        6825,
        8925,
        11025,
        13125,
        15225,
        17325,
        19425,
        21525,
        23625
      ],
      10: [ 1100, 2475, 3575, 4675, 5775, 6875, 7975, 9075, 10175, 11275, 12375],
      11: [ 525, 1181, 1706, 2231, 2756, 3281, 3806, 4331, 4856, 5381, 5906],
      12: [
        6100,
        13725,
        19825,
        25925,
        32025,
        38125,
        44225,
        50325,
        56425,
        62525,
        68625
      ],
      13: [
        3100,
        6975,
        10075,
        13175,
        16275,
        19375,
        22475,
        25575,
        28675,
        31775,
        34875
      ],
      14: [
        2100,
        4725,
        6825,
        8925,
        11025,
        13125,
        15225,
        17325,
        19425,
        21525,
        23625
      ],
      15: [1100, 2475, 3575, 4675, 5775, 6875, 7975, 9075, 10175, 11275, 12375],
      16: [
        8100,
        18225,
        26325,
        34425,
        42525,
        50625,
        58725,
        66825,
        74925,
        83025,
        91125
      ]
    };

    // Map<int, List<int>> values2 {
    //   1: [13725, 19825, 25925, 32025, 38125, 44225, 50325, 56425, 62525, 68625 ],
    //   2: [6975, 10075,13175, 16275, 19375, 22475, 25575, 28675, 31775, 34875],
    //   3: [4725, 6825, 8925, 11025, 13125,15225 , 17325, 19425, 21525, 23625],
    //   4: [2475, 3575,4675, 5775, 6875, 7975, 9075, 10175, 11275, 12375],
    //   5: [8100, 18225, 26325, 34425, 42525, 50625, 58725, 66825, 74925, 83025, 91125 ],
    // };
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              // height: 100.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Builder(builder: (context) {
                    if (d == 1) {
                      return Text(
                        "EMERALD | PANNA STONE",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      );
                    } else
                      return Container();
                  }),
                  Text("Weight : INR"),
                  Text("Rs ${values[v2][0]} per ratti"),
                  Text(""),
                  Text("2.25 ratti Rs ${values[v2][1]}/-"),
                  Text("3.25 ratti Rs ${values[v2][2]}/-"),
                  Text("4.25 ratti Rs ${values[v2][3]}/-"),
                  Text("5.25 ratti Rs ${values[v2][4]}/-"),
                  Text("6.25 ratti Rs ${values[v2][5]}/-"),
                  Text("7.25 ratti Rs ${values[v2][6]}/-"),
                  Text("8.25 ratti Rs ${values[v2][7]}/-"),
                  Text("9.25 ratti Rs ${values[v2][8]}/-"),
                  Text("10.25 ratti Rs ${values[v2][9]}/-"),
                  Text("11.25 ratti Rs ${values[v2][10]}/-"),
                ],
              ),
            ),
          );
        });
  }

  dropindrop() {
    return Builder(
        builder: (context) => Card(
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  hint: Text("  Select One"),
                  items: [
                    DropdownMenuItem<int>(
                      child: Text("A Quality"),
                      value: 12,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("B Quality"),
                      value: 13,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("C Quality"),
                      value: 14,
                    ),
                    DropdownMenuItem<int>(
                      child: Text("D Quality"),
                      value: 15,
                    ),
                  ],
                  onChanged: (int value) {
                    setState(() {
                      v2 = value;
                    });
                    showPrice1(v2, 2, context);
                  },
                ),
              ),
            ));
  }

  Widget bottomData(int x) {
    if (x == 1) {
      return Column(
        children: <Widget>[
          Text(
            "Panna Stone :\n",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
              "\tAt Gem Selections we have a range of Panna i.e., Panna from Rs. 450/ Rt to Rs. 51000/ Rt.\n\nThe market is full of Fake, Dyed and Counterfeit Panna Stone. These are being sold as Zambian Panna and other names but in realty they are dyed stones.\nIf some one tries to sell a transparent Panna Stone, you should be doubly cautious, because Panna Stone is rarely transparent.\nTo be sure that you get a Natural Panna Stone without any Dye or Treatment you must visit\n"),
          Text(
            "Gem Selections, Shop No. 8, A-3 DDA Market, Janakpuri, New Delhi -110058 \n",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
              "see the inventory understand a Panna Stone then decide from where you want to buy the Panna Stone that will change your destiny.\n\nIn your own interest, never buy a Panna Stone until you have visited Gem Selections and understood what a Natural Panna Stone looks like.\nPanna stone is a gemstone and a variety of the mineral beryl (Be3Al2(SiO3)6) colored green by trace amounts of chromium and sometimes vanadium. Beryl has a hardness of 7.5–8 on the Mohs scale. Most Panna Stone are highly included, so their toughness (resistance to breakage) is classified as generally poor.\n\nPanna Stone is the gemstone for planet mercury. Wearer gets intelligence, name and fame when wears Panna Stone as gemstone.\n\nPrecious gems including Panna stone are being illegally mined by locals in Gudabandha in Purbi Singhbhum district of Jharkhand\n\nWhat ever you buy comes with a Govt. Lab Certificate,, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna.There are many varieties of colored gemstones. One of the most popular is the Panna Stone.Panna Stone are fascinating gemstones. They have the most beautiful, most intense and most radiant green that can possibly be imagined: Panna Stone green. Inclusions are tolerated.\n\nPanna Stone is the most precious stone in the beryl group. The wonderful green color of Panna Stone is unparalleled in the gem world.\n\nPanna Stone has priority over beryl as a mineral name. Panna Stone was known in antiquity and was prized as a gem.\n\nPanna Stone has many special qualities, but colored stone professionals generally agree that emeralds are, most of all, about color.\n\nA good Panna Stone is smooth and transparent and emits bright rays, and is without any dots or spots, this type of stone is considered most auspicious gemstone.\n\nIt is believed that the region has huge stock of the most precious and highest quality emerald in the country which cost Rs. 50,000 per ten grams. In markets, 5-7.5 gravity emerald is said to the purest, and that is what lies in huge quantities beneath the earth here.\n\nIllegal mining of Panna Stone a multi-crore industry in Jharkhand village\n\nIt is believed that the region has huge stock of the most precious and highest quality Panna Stone in the country which cost Rs. 50,000 per ten grams. In markets, 5-7.5 gravity Panna Stone is said to the purest, and that is what lies in huge quantities beneath the earth here.\n\n"),
          Text(
            "Panna stone Shape and Cut\n",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
              "Panna Stone Oval\n\tPanna Stone Rectangular Octagonal\n\tPanna Stone Rectangular Cushion\n\tPanna Stone Square Octagonal\n\n"),
          Text(
            "Origin",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
              "\n\tBrazil : Brazilian Panna Stone\n\tZambia : Zambian Panna Stone\n\tColombia : Colombian Panna Stone\n\tSwat : Swat Panna Stone\n\n"),
          Text(
            "Color",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text("Green\n\n"),
          Text(
            "Govt Lab Certified Panna Stone",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
              "The IGI Colored Stone Report clearly states whether the stone is natural or synthetic, provides other data describing its shape, cut, weight, measurements, color, transparency and major optical characteristics, and also includes a detailed photograph of the stone. The country of origin is stated on the report if the gemological analysis conclusively reveals it.\n\nGemstones should only change hands when accompanied by a certificate attesting to quality. Regardless of location or marketplace, an authentic IGI Laboratory Report is the common language of trust and confidence in the gemological world.\n\nThe Gem and Jewellery Export Promotion Council (GJEPC) was set up by the Ministry of Commerce, Government of India (GoI) in 1966. It was one of several Export Promotion Councils (EPCs) launched by the Indian Government, to boost the country’s export thrust, when India’s post-Independence economy began making forays in the international markets. Since 1998, the GJEPC has been granted autonomous status.\n\n"),
          Text(
            "Identification of Panna Stone",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
              "\n\n\tCategory :: Beryl variety\n\tMolar mass :: 537.50\n\tColor :: Green shades\n\tMohs scale hardness :: 7.5-8\n\tLuster :: Vitreous\n\tStreak :: White\n\tspecific gravity :: Average 2.76\n\tRefractive index :: 1.564–  1.595,1.568–1.602\n\tBirefringence :: 0.0040–0.0070\n\tChemical formula :: Be3Al2(SiO3)6\n\n"),
          Text(
            "History of Panna Stone",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
              "\n\n\tHistory of Panna Stone Panna Stone\'s are ancient gemstones. According to the oldest book in the world, the Papyrus Prisse,\n\nThe Panna Stone has been a gem of fascination in many cultures for over six thousand years.\n\nSince the time of ancient legends, the more recent history begins in South America in 1568 when the Spanish Conquistadors formally began mining Panna Stone\'s\n\nPanna Stone crystal from Muzo, Colombia\n\nBrazilian Panna Stone (grass-green variety of the mineral beryl) in a quartz-pegmatite matrix with typical hexagonal, prismatic crystals.\n\nSpanish-made Panna Stone and gold pendant exhibited at Victoria and Albert Museum.\n\nThe Gachala Panna Stone is one of the largest gem Panna Stone\'s in the world, at 858 carats (171.6 grams). This stone was found in 1967 at La Vega de San Juan mine in Gachalá, Colombia. It is housed at the National Museum of Natural History of the Smithsonian Institution in Washington,\n\nThe Chalk Panna Stone ring, containing a top-quality 37-carat Panna Stone, in the U.S. National Museum of Natural History\n\nPanna Stone crystal (about 1 cm) in calcite matrix, Muzo, Colombia\n\n"),
          Text(
            "Panna Stone Origin",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
              "\n\n\tChalk Emerald : Colombia\n\tDuke of Devonshire Panna Stone\n\tGachala Panna Stone\n\tMogul Mughal Panna Stone\n\tBahia Panna Stone Brazil\n\n"),
          Text(
            "Synthetic Panna Stone",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
              "\n\nThe Linde Division of Union Carbide produced completely synthetic emeralds by hydrothermal synthesis.\nHydrothermal synthetic emeralds have been attributed to IG Farben, Nacken\nSynthetic emeralds are often referred to as \"created\", as their chemical and gemological composition is the same as their natural counterparts.\nThe first commercially successful emerald synthesis process was that of Carroll Chatham, likely involving a lithium vanadate flux process\n\n"),
          Text(
            "Panna Stone localities",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
              "\n\nPanna stone\'s are found all over the world in countries such as Afghanistan, Australia, Austria, Brazil, Bulgaria, Cambodia, Canada, China, Egypt, Ethiopia, France, Germany, India, Italy, Kazakhstan, Madagascar, Mozambique, Namibia, Nigeria, Norway, Pakistan, Russia, Somalia, South Africa, Spain, Switzerland, Tanzania, United States, Zambia, and Zimbabwe. In the US, emeralds have been found in Connecticut, Montana, Nevada, North Carolina, and South Carolina. In 1997 emeralds were discovered in the Yukon"),
        ],
      );
    }
    if (x == 2) {
      return Column(
        children: <Widget>[
          Text(
            "Emerald Cabochon : At Gem Selections we have a range of Emerald Cabochon\n",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(" i.e., Panna Cabuchon from Rs. 2100/ Rt to Rs. 31000/ Rt.\n"),
          Text(
              "You can have a look at these collections and decide what you want as per your requirement and budget.\n"),
          Text(
              "What ever you buy comes with a Lab Certificate, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna.\n"),
          Text(
              "Emerald Cabochon is like all coloured gemstone. We can say that there is four type of gems find Color, Cut, Clarity and Crystal. Emerald (Be3Al2Si6O18) is the grass-green type of Beryl. The formation of emerald involves a natural process known as exometamorphism.\n"),
          Text(
              "Traditional gemstone for the astrological signs of Taurus, Cancer and sometimes Gemini. One of the quainter anecdotes on emeralds was by the 16th-century historian Brantôme, who referred to the many impressive emeralds the Spanish under Cortez had brought back to Europe from Latin America.\n"),
          Text(
              "Normally, in the grading of colored gemstones, color is by far the most important criterion. However, in the grading of emerald, crystal is considered a close second. Both are necessary conditions. A fine emerald must possess not only a pure verdant green hue as described below, but also a high degree of transparency to be considered a top gem.\n"),
          Text(
              "The Swat emeralds show light red to red through the Chelsea color filter and completely absorb short-wave ultra-violet radiation.\n"),
          Text(
              "This gives the rock its gemlike green color. Varying amount of iron also alters the color of the rock. It has a hardness of 7.5-8 and a refractive index of 1.57-1.59. However it is not a gem recommended for \'everyday\' use since it falls in the category of soft stone.\n"),
          Text(
              "A chemical analysis shows that chromium (which is the cause of the green of emerald) and iron are prominent constituents in Swat emeralds. The presence of relatively high iron content means that the emeralds from Swat do not show so red a fluresence as some other emeralds as iron acts as a fluresence quencher.\n"),
          Text(
              "The cut of the stone is also significant. Emerald can have round, pear, oval shapes the emerald cut, that is, octagonal shape is most preferred. Inclusions are almost an accepted fact in emeralds.\n"),
          Text(
              "Deposits of the stone are also found in other parts of the world such as in Zambia, Zimbabwe, Madagascar and Nigeria. However Columbia and Brazil are the leading producers of emerald today. The mines of Egypt, which supplied emeralds to Cleopatra, are not much into production today. Among the foremost consumers of emerald are USA and Japan who buy 75% of the world\'s cut emerald."),
          Text(
              "\nColor is divided into three components: hue, saturation and tone. the hue must be bright. Gray is the normal saturation modifier or mask found in emerald. A grayish green hue is a dull green."),
          Text(
              "\nBrazil has been supplying emerald to the world market since the 1980s. Typical Brazilian emeralds are lighter and yellowish. Emeralds from Zimbabwe are smaller is size and lighter in shade. However the term \'African emerald\' is a misnomer. It simply denotes green fluorite."),
          Text(
              "\nThis Gem of Lord Ganesha is the favoured Gem of the people seeking intellectual powers as well as for those seeking wealth .This calms down the nervous system and improves the capacity to take decisions. It improves the liquidity and money flow in business and blesses the wearer with liquid assets.\n\n"),
          Text(
              "The natural beryl used for the faceted seed on which the hydrothermal synthetic overgrowth is grown. The refractive index of the coating varies a little from sample. In Colombian stones, which constitute a high proportion of fine Emeralds used in Jewellery, the most constant features are flat cavities with upper and lower margins jagged like a coarse saw, containing liquid, a bubble of gas, and a little cube of rock salt.\n"),
          Text(
              "Emeralds from the Sandawana emerald mine in Zimbabwe have played quite an important role in the trade since their discovery in 1956. These are rich in chromium and thus a very deep and vivid green, which seen at its best in small stones.\n"),
          Text(
              "Dark Green Emeralds have recently emanated from Pakistan, and these contain rather indeterminate inclusions, along which flakes of mika and small crystals of phenakite and dolomite could be recognized.\n"),
          Text(
              "Siberian Emeralds or more commonly known as Russian Emerald is a development of thin, cavities parallel to the basal plane. Silvery luster by reflected light, but in some directions may appear black, due to total reflections. In Transvaal emeralds mica is usually a major inclusion, while in Indian emeralds are found hexagonal cavities\n"),
          Text(
              "Emeralds from the Ural mountains Siberian or Russian emeralds have quite a different occurrence, and this is reflected in their inclusion. Flakes of mica may be seen often broken, but the most distinctive features are blades of green actinolite cracks across. Siberian Emeralds is a development of thin, disc like cavities parallel to the basal plane. These show a silvery luster by reflected light, but in some directions may appear black, due total reflection.\n"),
          Text(
              "The inclusions are mainly mica and liquid-filled cavities. At their best, the colour of these Emeralds is said to resemble that of stones from Sandawana and Colombia.\n"),
          Text(
            "Select Quality to know Price of Emerald Cabochon\n",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          dropindrop(),
        ],
      );
    }
    if (x == 3) {
      return Column(
        children: <Widget>[
          Container(
              height: 150.0,
              child: Image.network(
                  "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FZambian-Panna.jpg?alt=media&token=ea0e8213-82f6-4ab5-bfbb-1dfef5f72fe6")),
          Text(
              "Panna Stone from African Country of Zambia is called Zambian Panna. Zambian Panna is of Dark colour Green colour with a bluish tinge coloure of Zambian panna is often compared to the colour of Neem Leaf. \n"),
          Text(
              "It is widely used in Jewellery and as an Astrological Gemstone.\n"),
          Text(
              "At Gem Selections one can get all qualities and siges of Zambian Panna. The Price ranges from Rs. 1100 per ratti to Rs. 41000 per ratti. The siges available are 2.25 Rt to 11.25 Rt. If you need Gemstones of bigger or Smaller siges then they can also be arranged."),
          Text(
            "\nSource of Zambian Panna\n",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
              "The source of Zambian Panna is The Republic of Zambia or Zambia as it is called. It is a landlocked country in Southern Africa. Its capital city is Lusaka. Zambian Panna is found in Kafubu River area deposits (Kagem Mines) about 45 km southwest of Kitwe city."),
          Text(
            "\nAstrological Uses of Zambian Panna\n",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
              "The Zambian Panna is a green gemstone with a tint of blue in it. It is used in Hindu Astrology for strengthening the planet Mercury or Budh as it is called in Hindi.\n"),
          Text(
              "Budh or Mercury is the Gemstone of Lord Ganesha. In the Southern part of India the Idol of Lord Ganesha was made from Panna Stone. Even on date ancient idols of Ganesha made of Panna Stone are available in Southern India. Zambian Panna is recommended for those born in the Zodiac sign of Aquarius, Taurus and Libra.\n"),
          Text(
              "The main purpose of wearing any gemstone, as per Hindu Astrology, is to improve the BHAGYA or LUCK of the wearer as it is a phenomenon of prime importance but difficult to understand. Zambian Panna is the Bhagya Rattan for those born with their ascendant as Aquarius, Taurus and Libra.\n"),
          Text("As per the Hindu Astrology additional "),
          Text(
            "\nbenefits one gets by wearing a Zambian Panna are:\n\t",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text("1. Control on nervous system,\t"),
          Text("2. Collection of fixed and liquid wealth,\t"),
          Text("3. Better decision making,\t"),
          Text(
              "4. Improvement of communication skills.\n\t You can see this gem on right hand little finger of many famous actors,"),
          Text("\t5. Family relations improve due to calm behavior,\t"),
          Text("6. Deterrence is created for enemies,\t"),
          Text("7. Mathematical abilities and memory is improved.\t"),
          Text(
              "8. Better muscular control leading to improvement in physical actions like outdoor games.\t"),
          Text("9. Helps one get political power,\t"),
          Text(
              "10. Very helpful in entering into a phase of deep meditation.\n"),
          Text(
            "How to wear a Zambian Panna\n",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
              "Get the Zambian Panna fixed in a ring or pendant or a bracelet made of silver or gold from a reliable establishment. When you bring it home dip it in a bowl filled with desi ghee.\n"),
          Text(
              "Take it out on a Thursday morning, wash it with Ganga Jal mixed with saffron and place it in your right hand palm. Now chant the Budh Mantra which is “Om! Braam Breem Broom Sah Budhai Namah” 108 times in a single sitting using an onyx mala of 108 beads.\n"),
          Text(
              "Then wear the Zambian Panna and feel the Lord Ganesha on your side.\n"),
          Text(
              "The ring of Zambian Panna is worn on the right hand little finger.\n"),
          Text(
            "Where to buy Zambian Panna?\n",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
              "You must buy a Zambian Panna from a trusted store with a history of integrity and trust. The purchase should be from a Specialized Gem Shop of repute and history buying from Goldsmiths or Astrologers should be avoided as a certificate from a Govt. Lab and bill must accompany a proper purchase of a Zambian Panna.\n"),
          Text(
            "Upkeep of Zambian Panna\n",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
              "A Zambian Panna, is a good Jewelry gemstone and if properly cared for, can last for generations giving out same sparkle and luster that it originally has.\n"),
          Text(
              "Following points must be followed so that your Zambian Panna does not loose its surface shine and polish:\n\t"),
          Text(
              "1. Chipping is always a great risk in Zambian Panna so be careful that you never drop it or hit it against a hard surface."),
          Text(
              "\t2. When you remove a Zambian Panna, wash it with mild soap and water from all sides and then apply little coconut oil or olive oil on it and wrap it in a thick paper or cloth."),
          Text(
              "\t3. You should store your Zambian Panna or jewelry affixed with Zambian Panna separately and never in contact with Diamonds, Sapphires etc as these gemstones, can scratch a Panna."),
          Text(
              "\t4. A Zambian Panna  should be kept away from direct heat and never exposed to harmful rays."),
          Text(
              "\t5. Washing Zambian Panna with hard detergents and cleaning it with hard metal brush is a strict no no."),
          Text(
              "\t6. The Zambian Panna has a very absorbing AURA so it should never be taken along to a place where there is extreme sorrow because its AURA will get disturbed."),
          Text(
            "\nMantra for Zambian Panna\n",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
              "Hindu Astrology recommends the use of various Mantras for empowering different planets and their Lords. To strengthen Panna the Beej Mantra used is ‘Om! Braam Breem Broom Sah Budhai Namah’ 108 times on a 108 bead Onyx Mala.\n"),
          Text(
              "The other mantra used is of Lord Ganesha, the ruling deity of the planet Budh. This Mantra is ‘Om! Gan Gan Patai Namah’ chanted 108 times in a single sitting daily on a green Onyx mala of 108 beads or with 108 blades of Dub Ghas."),
          Text(
            "\nPrice of Zambian Panna\n",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
              "Zambian Panna is generally is a valuable Panna. It is seen less in retail market due to various reasons. The price of this Panna starts from Rs.450 per ratti and goes upto Rs.41000 per ratti.\n"),
          Text(
              "Good quality Zambian Panna is a precious gemstone. It makes an excellent ring stone and is set in Jewelery along with Diamonds.\n"),
          Text(
            "Setting of Zambian Panna\n",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
              "Panna is a soft gemstone so setting it in a ring or any other piece of Jewellery is not a job of a novice. It needs extreme care and experience as even a little mistake can damage the precious Panna and leave it Inclusions in Zambian Panna\n"),
          Text(
            "Cutting of Zambian Panna\n",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
              "Though Zambian Panna is found in the African country named Zambia but its rough is brought to India and is cut and polished in the Khambhat region of Gujarat State of India.\n"),
          Text("The cutting of Zambian Panna involved following steps:\n\t"),
          Text(
            "1. Washing:",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
              "The Rough Emerald is washed so that the calcium hydroxide (Chuna), soil and other foreign elements are removed from it."),
          Text(
            "\t2. Bruiting:",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
              "The process of removing the other hard materials with the help of a chisel or a cutting tool attached to a motor."),
          Text(
            "\t3. Rounding:",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
              "The unevenness of the pieces of a Zambian Panna are removed and a half round shape is made this is called as GHAT in the local dialect. This process is performed by the help of lead plates fixed on a motor base and the abrasive used is"),
          Text(
            "\t4. Faceting:",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
              "The Ghats are then shaped with little cuts called faceting. Faceting brings the real glow and fire in a gemstone.")
        ],
      );
    }
    if (x == 4) {
      return Column(
        children: <Widget>[
          Container(
              height: 150.0,
              child: Image.network(
                  "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fcolombian-Panna.jpg?alt=media&token=b25c78ea-7472-4792-9c97-10ce2fb95607")),
          Text(
              "At Gem Selections, we have wide range of Colombian panna – from Rs. 2100/per ratti to Rs. 31000/per ratti.\n"),
          Text(
              "You can visit our store in Janakpuri, New Delhi and have a look at this collection and decide what you want as per your requirements and budget. \n"),
          Text(
              "The Gemstones that your buy from Gem Selections always come with a Govt. Lab Certificate, Vat Paid Bill and a Guarantee of purity and originality from Khanna Gems (P) Ltd and its Promoter Mr. Pankaj Khanna.\n"),
          Text(
              "Colombian Panna, like all colored Gemstones is valued on the basis of Color and Clarity. Normally, while grading a Colombian Panna, color is by far the most important criterion. However, clarity of a Panna Stone, is a close second. Both are necessary conditions. A fine Panna must possess not only a pure vibrant Green hue, but also a high degree of transparency to be considered a top Gem. Rare Colombian Panna: One of the largest Colombian Panna, crystals, which weighs 632 carats. The collection of the Bank of Bogota includes five valuable emerald crystals with weights of between 220 and 1796 carats, and splendid emeralds also form part of the Iranian National Treasury, adorning, for example, the diadem of the former Empress Farah. The Turkish sultans also loved emeralds. \n"),
          Text(
              "Colombian Panna, to be at the top of the list in terms of the countries in which fine Panna Stone are found. It has about 150 known deposits, though not all of these are currently being exploited. The best known names are Muzo and Chivor, where Panna was mined by the Incas. In economic terms, the most important mine is at Coscuez, where some 60 faces are being worked. According to estimates, approximately three quarters of Colombia\'s emerald production now comes from the Coscuez Mine. Colombian Panna differ from Panna Stone from other deposits in that they have an especially fine, shining Panna green unimpaired by any kind of bluish tint. \n"),
          Text(
              "The cut of the stone is also significant. Emerald can have round, pear, oval shapes the emerald cut, that is, octagonal shape is most preferred. Inclusions are almost an accepted fact in emeralds.\n"),
          Text(
              "Color is divided into three components: hue, saturation and tone. the hue must be bright. Gray is the normal saturation modifier or mask found in emerald. A grayish green hue is a dull green."),
        ],
      );
    }

    if (x == 5) {
      return Column(
        children: <Widget>[
          Container(
              height: 150.0,
              child: Image.network(
                  "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fafrican-emerald.jpg?alt=media")),
          Text("Brazil Emerald :\n"),
          Text(
              "At Gem Selections we have a range of Brazil Emeralds i.e., Brazil Emerald from Rs. 1100/ Rt to Rs. 41000/ Rt.\n"),
          Text(
              "You can have a look at these collections and decide what you want as per your requirement and budget.\n"),
          Text(
              "What ever you buy at Gem Selections comes with a Govt. Lab Certificate, bill and Guarantee of purity and originality from our company and its promoter Pankaj Khanna.\n"),
          Text(
              "Brazil Panna is of grass - green colour. Value of Brazil Panna depends on its Colour, Transparency and Luster.\n"),
          Text(
              "Normally, in the grading of colored gemstones, color is by far the most important criterion. However, in the grading of Emerald, transparency is considered a close second. Both are necessary conditions. A fine Panna must possess not only a pure vibrant green hue, but also a high degree of transparency to be considered a top Gem."),
          Text(
              "Emeralds have been held in high esteem since ancient times. For that reason, some of the most famous emeralds are to be seen in museums and collections.\n"),
          Text(
              "Green of the Emerald is a colour which conveys harmony and love of Nature.\n"),
          Text(
              "Property of Emerald, the Refractive Index and SG vary perceptibly according to the locality where it is mined, due to variations in chemical composition. These inclusions, also, are often distinctive for each locality, and Gemologists will do well to familiarize themselves with these things if they wish to distinguish between the Emeralds of one mine from another.\n"),
          Text(
              "Color is divided into three components: Hue, Saturation and Tone. The hue must be bright. Gray is the normal saturation modifier or mask found in Emerald. A grayish green hue is a dull green. Brazil has been supplying Emeralds to the world market since the 1980s. Typical Brazilian emeralds are Lighter and Yellowish. Emeralds from Zimbabwe are smaller is size and lighter in shade. However the term \'African emerald\' is a misnomer. It simply denotes Green Fluorite. The presence of chromium in emerald is the absorption spectrum it displays, which is distinctive enough to enable the stone to be distinguished from any other gem species.\n"),
          Text(
              "Emerald should, strictly speaking, perhaps not exist at all. But during intensive tectonic processes such as orogenesis, metamorphism, emergences and erosion of the land, these contrasting elements found each other and crystallised out to make one of our most beautiful gemstones."),
          Text(
              "The Swat emeralds show light red to red through the Chelsea color filter and completely absorb short-wave ultra-violet radiation.\n"),
          Text(
              "This gives the rock its gemlike green color. Varying amount of iron also alters the color of the rock. It has a hardness of 7.5-8 and a refractive index of 1.57-1.59. However it is not a gem recommended for \'everyday\' use since it falls in the category of soft stone.\n"),
          Text(
              "A chemical analysis shows that chromium (which is the cause of the green of emerald) and iron are prominent constituents in Swat emeralds. The presence of relatively high iron content means that the emeralds from Swat do not show so red a fluresence as some other emeralds as iron acts as a fluresence quencher.\n"),
          Text(
              "The cut of the stone is also significant. Emerald can have round, pear, oval shapes the emerald cut, that is, octagonal shape is most preferred. Inclusions are almost an accepted fact in emeralds.\n"),
          Text(
              "Deposits of the stone are also found in other parts of the world such as in Zambia, Zimbabwe, Madagascar and Nigeria. However Columbia and Brazil are the leading producers of emerald today. The mines of Egypt, which supplied emeralds to Cleopatra, are not much into production today. Among the foremost consumers of emerald are USA and Japan who buy 75% of the world\'s cut emerald.\n"),
          Text(
              "Color is divided into three components: hue, saturation and tone. the hue must be bright. Gray is the normal saturation modifier or mask found in emerald. A grayish green hue is a dull green.\n"),
          Text(
              "Brazil has been supplying emerald to the world market since the 1980s. Typical Brazilian emeralds are lighter and yellowish. Emeralds from Zimbabwe are smaller is size and lighter in shade. However the term \'African emerald\' is a misnomer. It simply denotes green fluorite.\n"),
          Text(
              'This Gem of Lord Ganesha is the favoured Gem of the people seeking intellectual powers as well as for those seeking wealth .This calms down the nervous system and improves the capacity to take decisions. It improves the liquidity and money flow in business and blesses the wearer with liquid assets.\n'),
          Text(
              'Emeralds are also cut in many other, mainly classical shapes, but if the raw material contains a large number of inclusions, it may often be cut into a gently rounded cabochon, or into one of the emerald beads which are so popular in India.\n'),
          Text(
              'So how can you protect yourself from these \'fakes\'? best way is to buy from a specialist in whom you have confidence. Emerald should only be purchased with a report from a reputable gemological institute. You can differentiate reliably between natural and synthetic emeralds.'),
          dropindrop(),
        ],
      );
    }

    if (x == 6) {
      return Column(
        children: <Widget>[
          Image.asset(placeholder),
          Text(
              "\nSwat Panna Stone is like all coloured gemstone. We can say that there is four type of gems find Color, Cut, Clarity and Crystal. Emerald (Be3Al2Si6O18) is the grass-green type of Beryl. The formation of emerald involves a natural process known as exometamorphism.\n"),
          Text(
              "traditional gemstone for the astrological signs of Taurus, Cancer and sometimes Gemini. One of the quainter anecdotes on emeralds was by the 16th-century historian Brantôme, who referred to the many impressive emeralds the Spanish under Cortez had brought back to Europe from Latin America.\n"),
          Text(
              "This gives the rock its gemlike green color. Varying amount of iron also alters the color of the rock. It has a hardness of 7.5-8 and a refractive index of 1.57-1.59. However it is not a gem recommended for \'everyday\' use since it falls in the category of soft stone.\n"),
          Text(
              "A chemical analysis shows that chromium (which is the cause of the green of emerald) and iron are prominent constituents in Swat emeralds. The presence of relatively high iron content means that the emeralds from Swat do not show so red a fluresence as some other emeralds as iron acts as a fluresence quencher.\n"),
          Text(
              "The cut of the stone is also significant. Emerald can have round, pear, oval shapes the emerald cut, that is, octagonal shape is most preferred. Inclusions are almost an accepted fact in emeralds.\n"),
          Text(
              "Deposits of the stone are also found in other parts of the world such as in Zambia, Zimbabwe, Madagascar and Nigeria. However Columbia and Brazil are the leading producers of emerald today. The mines of Egypt, which supplied emeralds to Cleopatra, are not much into production today. Among the foremost consumers of emerald are USA and Japan who buy 75% of the world\'s cut emerald.\n"),
          Text(
              "Color is divided into three components: hue, saturation and tone. the hue must be bright. Gray is the normal saturation modifier or mask found in emerald. A grayish green hue is a dull green.\n"),
          Text(
              "Brazil has been supplying emerald to the world market since the 1980s. Typical Brazilian emeralds are lighter and yellowish. Emeralds from Zimbabwe are smaller is size and lighter in shade. However the term \'African emerald\' is a misnomer. It simply denotes green fluorite."),
          Text(
              "\nThis Gem of Lord Ganesha is the favoured Gem of the people seeking intellectual powers as well as for those seeking wealth .This calms down the nervous system and improves the capacity to take decisions. It improves the liquidity and money flow in business and blesses the wearer with liquid assets."),
          dropindrop(),
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Emerald"),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        controller: _controller,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: FadeInImage(
              placeholder: AssetImage(placeholder),
              image: NetworkImage(
                  "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fafrican-emerald.jpg?alt=media"),
            ),
            height: 100.0,
          ),
          Text(
            "EMARALD | PANNA STONE",
            style: TextStyle(color: Colors.green, fontSize: 20.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            child: GestureDetector(
              child: FadeInImage(
                placeholder: AssetImage(placeholder),
                image: NetworkImage(
                    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/YoutubeImages%2Fpanna_stone.jpeg?alt=media&token=6e4febe5-8ef7-4bc0-89d6-b938127a7f2d"),
              ),
              onTap: () => LaunchYoutube(precious_you_link[1]),
            ),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 20.0,
                  offset: new Offset(5.0, 15.0),
                ),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 20.0),
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                "Types of Emeralds",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
              )),
          Card(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                hint: Text("  Select One"),
                items: [
                  DropdownMenuItem<int>(
                    child: Text("ABOUT PANNA | EMERALD"),
                    value: 1,
                  ),
                  DropdownMenuItem<int>(
                    child: Text("EMRALD CABOCHON"),
                    value: 2,
                  ),
                  DropdownMenuItem<int>(
                    child: Text("ZAMBIAN EMERALD"),
                    value: 3,
                  ),
                  DropdownMenuItem<int>(
                    child: Text("COLUMBIAN EMERALD"),
                    value: 4,
                  ),
                  DropdownMenuItem<int>(
                    child: Text("BRAZILIAN EMERALD"),
                    value: 5,
                  ),
                  DropdownMenuItem<int>(
                    child: Text("SWAT EMERALD"),
                    value: 6,
                  ),
                ],
                onChanged: (int x) {
                  setState(() {
                    v1 = x;
                  });
                   Future.delayed(const Duration(milliseconds: 100), () {
                    setState(() {
                      _controller.animateTo(
                          _controller.position.extentInside,
                          curve: Curves.easeInOut,
                          duration: Duration(seconds: 2));
                    });
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0),
          ),
          Text(
            "  Select Qulaity to know price",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
          ),
          Builder(
            builder: (context) => Card(
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      hint: Text("  Select One"),
                      items: [
                        DropdownMenuItem<int>(
                          child: Text("A Quality"),
                          value: 1,
                        ),
                        DropdownMenuItem<int>(
                          child: Text("B Quality"),
                          value: 2,
                        ),
                        DropdownMenuItem<int>(
                          child: Text("C Quality"),
                          value: 3,
                        ),
                        DropdownMenuItem<int>(
                          child: Text("D Quality"),
                          value: 4,
                        ),
                        DropdownMenuItem<int>(
                          child: Text("E Quality"),
                          value: 5,
                        ),
                        DropdownMenuItem<int>(
                          child: Text("F Quality"),
                          value: 6,
                        ),
                        DropdownMenuItem<int>(
                          child: Text("G Quality"),
                          value: 7,
                        ),
                        DropdownMenuItem<int>(
                          child: Text("H Quality"),
                          value: 8,
                        ),
                        DropdownMenuItem<int>(
                          child: Text("I Quality"),
                          value: 9,
                        ),
                        DropdownMenuItem<int>(
                          child: Text("J Quality"),
                          value: 10,
                        ),
                        DropdownMenuItem<int>(
                          child: Text("K Quality"),
                          value: 11,
                        ),
                      ],
                      onChanged: (int x) {
                        setState(() {
                          v2 = x;
                        });
                        showPrice1(v2, 1, context);
                      },
                    ),
                  ),
                ),
          ),
          Padding(padding: EdgeInsets.only(top: 15.0)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 7.0),
            child: Container(
                padding: EdgeInsets.only(bottom: 10.0), child: bottomData(v1)),
          )
        ],
      ),
    );
  }
}
