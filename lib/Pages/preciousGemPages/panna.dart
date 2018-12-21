import 'package:flutter/material.dart';

class PannaPage extends StatefulWidget {
  @override
  _PannaPageState createState() => _PannaPageState();
}

class _PannaPageState extends State<PannaPage> {
  int v1, v2;

  void showPrice(int v1, int v2, BuildContext context) {
    Map<int, Map<int, List<int>>> values = {
      1: {
        1: [22, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
        2: [33, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
      },
      2: {
        1: [44, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
        2: [99, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
      }
    };

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              // height: 100.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("Weight : INR"),
                  Text("Rs ${values[v1][v2][0]}"),
                  Text(""),
                  Text("2.25 ratti Panna Stone Rs ${values[v1][v2][1]}/-"),
                  Text("3.25 ratti Panna Stone Rs ${values[v1][v2][2]}/-"),
                  Text("4.25 ratti Panna Stone Rs ${values[v1][v2][3]}/-"),
                  Text("5.25 ratti Panna Stone Rs ${values[v1][v2][4]}/-"),
                  Text("6.25 ratti Panna Stone Rs ${values[v1][v2][5]}/-"),
                  Text("7.25 ratti Panna Stone Rs ${values[v1][v2][6]}/-"),
                  Text("8.25 ratti Panna Stone Rs ${values[v1][v2][7]}/-"),
                  Text("9.25 ratti Panna Stone Rs ${values[v1][v2][8]}/-"),
                  Text("10.25 ratti Panna Stone Rs ${values[v1][v2][9]}/-"),
                  Text("11.25 ratti Panna Stone Rs ${values[v1][v2][10]}/-"),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Emerald"),
      ),
      body: ListView(
        children: <Widget>[
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fafrican-emerald.jpg?alt=media"),
          Text(

            "EMARALD | PANNA STONE",
            style: TextStyle(color: Colors.purple, fontSize: 20.0),
          ),
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media&token=2393c15d-8fca-4a9c-be1d-318aa8c5a71a"),
          Text("Types of Emeralds:"),
          DropdownButton(
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
            },
          ),
          Text("Select Qulaity to know price"),
          Builder(
            builder: (context) => DropdownButton(
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
                    showPrice(v1, v2, context);
                  },
                ),
          ),
          Text(
              "\<b><u>Panna Stone :</u></b>\n\tAt Gem Selections we have a range of Panna i.e., Panna from Rs. 450/ Rt to Rs. 51000/ Rt.\n\nThe market is full of Fake, Dyed and Counterfeit Panna Stone. These are being sold as Zambian Panna and other names but in realty they are dyed stones.\nIf some one tries to sell a transparent Panna Stone, you should be doubly cautious, because Panna Stone is rarely transparent.\nTo be sure that you get a Natural Panna Stone without any Dye or Treatment you must visit\n<b>Gem Selections, Shop No. 8, A-3 DDA Market, Janakpuri, New Delhi -110058 </b>see the inventory understand a Panna Stone then decide from where you want to buy the Panna Stone that will change your destiny.\n\nIn your own interest, never buy a Panna Stone until you have visited Gem Selections and understood what a Natural Panna Stone looks like.\nPanna stone is a gemstone and a variety of the mineral beryl (Be3Al2(SiO3)6) colored green by trace amounts of chromium and sometimes vanadium. Beryl has a hardness of 7.5–8 on the Mohs scale. Most Panna Stone are highly included, so their toughness (resistance to breakage) is classified as generally poor.\n\nPanna Stone is the gemstone for planet mercury. Wearer gets intelligence, name and fame when wears Panna Stone as gemstone.\n\nPrecious gems including Panna stone are being illegally mined by locals in Gudabandha in Purbi Singhbhum district of Jharkhand\n\nWhat ever you buy comes with a Govt. Lab Certificate,, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna.There are many varieties of colored gemstones. One of the most popular is the Panna Stone.Panna Stone are fascinating gemstones. They have the most beautiful, most intense and most radiant green that can possibly be imagined: Panna Stone green. Inclusions are tolerated.\n\nPanna Stone is the most precious stone in the beryl group. The wonderful green color of Panna Stone is unparalleled in the gem world.\n\nPanna Stone has priority over beryl as a mineral name. Panna Stone was known in antiquity and was prized as a gem.\n\nPanna Stone has many special qualities, but colored stone professionals generally agree that emeralds are, most of all, about color.\n\nA good Panna Stone is smooth and transparent and emits bright rays, and is without any dots or spots, this type of stone is considered most auspicious gemstone.\n\nIt is believed that the region has huge stock of the most precious and highest quality emerald in the country which cost Rs. 50,000 per ten grams. In markets, 5-7.5 gravity emerald is said to the purest, and that is what lies in huge quantities beneath the earth here.\n\nIllegal mining of Panna Stone a multi-crore industry in Jharkhand village\n\nIt is believed that the region has huge stock of the most precious and highest quality Panna Stone in the country which cost Rs. 50,000 per ten grams. In markets, 5-7.5 gravity Panna Stone is said to the purest, and that is what lies in huge quantities beneath the earth here.\n\n<b><u>Panna stone Shape and Cut</u></b>Panna Stone Oval\n\tPanna Stone Rectangular Octagonal\n\tPanna Stone Rectangular Cushion\n\tPanna Stone Square Octagonal\n\n<b><u>Origin</u></b>\n\tBrazil : Brazilian Panna Stone\n\tZambia : Zambian Panna Stone\n\tColombia : Colombian Panna Stone\n\tSwat : Swat Panna Stone\n\n<b><u>Color</u></b>Green\n\n<b><u>Govt Lab Certified Panna Stone</u></b>The IGI Colored Stone Report clearly states whether the stone is natural or synthetic, provides other data describing its shape, cut, weight, measurements, color, transparency and major optical characteristics, and also includes a detailed photograph of the stone. The country of origin is stated on the report if the gemological analysis conclusively reveals it.\n\nGemstones should only change hands when accompanied by a certificate attesting to quality. Regardless of location or marketplace, an authentic IGI Laboratory Report is the common language of trust and confidence in the gemological world.\n\nThe Gem and Jewellery Export Promotion Council (GJEPC) was set up by the Ministry of Commerce, Government of India (GoI) in 1966. It was one of several Export Promotion Councils (EPCs) launched by the Indian Government, to boost the country’s export thrust, when India’s post-Independence economy began making forays in the international markets. Since 1998, the GJEPC has been granted autonomous status.\n\n<b><u>Identification of Panna Stone</u></b>\n\n\tCategory :: Beryl variety\n\tMolar mass :: 537.50\n\tColor :: Green shades\n\tMohs scale hardness :: 7.5-8\n\tLuster :: Vitreous\n\tStreak :: White\n\tspecific gravity :: Average 2.76\n\tRefractive index :: 1.564–  1.595,1.568–1.602\n\tBirefringence :: 0.0040–0.0070\n\tChemical formula :: Be3Al2(SiO3)6\n\n<b><u>History of Panna Stone</u></b>\n\n\tHistory of Panna Stone Panna Stone\'s are ancient gemstones. According to the oldest book in the world, the Papyrus Prisse,\n\nThe Panna Stone has been a gem of fascination in many cultures for over six thousand years.\n\nSince the time of ancient legends, the more recent history begins in South America in 1568 when the Spanish Conquistadors formally began mining Panna Stone\'s\n\nPanna Stone crystal from Muzo, Colombia\n\nBrazilian Panna Stone (grass-green variety of the mineral beryl) in a quartz-pegmatite matrix with typical hexagonal, prismatic crystals.\n\nSpanish-made Panna Stone and gold pendant exhibited at Victoria and Albert Museum.\n\nThe Gachala Panna Stone is one of the largest gem Panna Stone\'s in the world, at 858 carats (171.6 grams). This stone was found in 1967 at La Vega de San Juan mine in Gachalá, Colombia. It is housed at the National Museum of Natural History of the Smithsonian Institution in Washington,\n\nThe Chalk Panna Stone ring, containing a top-quality 37-carat Panna Stone, in the U.S. National Museum of Natural History\n\nPanna Stone crystal (about 1 cm) in calcite matrix, Muzo, Colombia\n\n<b><u>Panna Stone Origin</u></b>\n\n\tChalk Emerald : Colombia\n\tDuke of Devonshire Panna Stone\n\tGachala Panna Stone\n\tMogul Mughal Panna Stone\n\tBahia Panna Stone Brazil\n\n<b><u>Synthetic Panna Stone</u></b>\n\nThe Linde Division of Union Carbide produced completely synthetic emeralds by hydrothermal synthesis.\nHydrothermal synthetic emeralds have been attributed to IG Farben, Nacken\nSynthetic emeralds are often referred to as \"created\", as their chemical and gemological composition is the same as their natural counterparts.\nThe first commercially successful emerald synthesis process was that of Carroll Chatham, likely involving a lithium vanadate flux process\n\n<b><u>Panna Stone localities</u></b>\n\nPanna stone\'s are found all over the world in countries such as Afghanistan, Australia, Austria, Brazil, Bulgaria, Cambodia, Canada, China, Egypt, Ethiopia, France, Germany, India, Italy, Kazakhstan, Madagascar, Mozambique, Namibia, Nigeria, Norway, Pakistan, Russia, Somalia, South Africa, Spain, Switzerland, Tanzania, United States, Zambia, and Zimbabwe. In the US, emeralds have been found in Connecticut, Montana, Nevada, North Carolina, and South Carolina. In 1997 emeralds were discovered in the Yukon.</string><string name=\"emerald_faq\"><b>Q. Which Finger to wear a Panna stone?</b>\n\tPanna Stone should be worn in the little finger of right hand. The ring should be neither light nor loose or you can say it should be comfortably light so that it does not fall away while washing hands or else ware.\n\n<b>Q. Panna stone should be wore in which metal?</b>\n\tPanna Stone should be worn in a silver ring for best effects. Remember Panna Stone is the Gemstone of Mercure the karka for nervous system. It keeps one cool and strong them the nervous system and wind. Silver is also a brain tonic and as it in worn against skin it is absorbed micron by micron in the body thereby magnifying the effects of Panna stone.\n\n<b>Q. Mantra for Panna stone?</b>\n\tAs per Hindu Astrology Panna Stone(Emerald Stone) is the Gem of Mercury i.e., The mantra for this Planet is Budh “ Om! Braam Breem Broom Sah Budhai Namah”. This should be chanted 108 times in a single sitting on a onyx mala of 108 beads.\n\tThe mantra should be performed in such a manner that at least you yourself are able to hear it.\n\tRemember this is a shabad mantra and does not have any wearing. The vibrations created by chanting this mantra leads to certain changes in the Aura around you and that brings about all the needed changes.\n\n<b>Q. Who Should Wear Panna Stone?</b>\n\t1. Lovers – who want to marry a particular person.\n\t2. For Strong thing the Nervous system.\n\t3. To increase the earning ability.\n\t4. This is a must for traders of all kinds.\n\t5. This improves mathematical ability so a must for students, Teachers of mathematics.\n\t6. Senior citizens facing problems of nervous system.\n\t7. Those fighting court cases.\n\t8. Create a huge wealth for them.\n\n<b>Q. Benefits of wearing a Panna Stone?</b>\n\tThe green colour of Panna Stone(Emerald Stone) has a soothing effect on the lower mind and being the gemstone of Lord Ganesha brings wealth. In addition to these benefits it is worn for.\n\n\n\t1. A better financial condition. \"Panna Stone\"\n\t2. It improves one’s control over behavior and emotions. \"Panna Stone\"\n\t3. Better understanding and control over one’s business. \"Panna Stone\"\n\t4. Brings back money bad debts. \"Panna Stone\".\n\t5. Improves numerical and mathematical ability. \"Panna Stone\"\n\t6. Gives the strength to fight tough lines. \"Panna Stone\"\n\n<b>Q. How to wear a Panna stone?</b>\n\t\n\tWhen you bring house a Panna Stone(Emerald Stone) set in ring/Pendant you should Immediately dip it in pure desi ghee in a glass or steel bowl then on a Wednesday morning before 7.30 AM take it out from Ghee and wash it with Ganga Jal used with sappron and wear it after chanting the mantra of Budh.\n\n<b>Q. Role of Panna Stone in Astrology?</b>\n\t\n\tPanna Stone(Emerald Stone) or market mani as it is called in Sanskrit is a Gem of mercury I e. Budh. In Hindu Astrology Budh is the signification of intellectual ability, wisdom, communication skills, mathematics, and science to.\n\n\tEmerald Gemstone In Hindu Astrology Panna Stone(Emerald Stone) is recommended:\n\t\t(1) to improves the above significations.\n\t\t(2) to improve the Bhagya Or Luck in case Budh (mercury) has the lordship of the ascendant, fifth house or ninth House or is placed in it.\n\t\t(3) In case Budh is weak due to Gharayudh or Avastha.\n\t\t(4) In case of nervous system disorder\n\n<b>Q. When to wear Panna stone?</b>\n\tAs per Hindu Astrology Panna Stone(Emerald Stone) is the Gem of Mercury i.e., The mantra for this Planet is Budh “ Om! Braam Breem Broom Sah Budhai Namah”. This should be chanted 108 times in a single sitting on a onyx mala of 108 beads.\n\n\tPanna stone will give effects within 45 days after wearing and till 3 years it will give full effects, after that it becomes inactive, You must change your gemstone after inactivation\n\n<b>Q. Panna Stone Price in carat?</b>\n\tThe unit of weight of Panna Stone is Carat. In metric scale this is equal to 200mg. Whenever one talks of Rate of Panna stone it is given in CARAT. Generally Panna Stone is available from Rs.450 per Carat to Rs.41000 per Carat.\n\tBut lower varieties of Panna Stone can be found at Rs.200 per carat.\n\tThe price of Panna Stone, like any other gemstone depends on its colour and clarity. More eye pleasing a Gemstone with shining water inside more price will it command.\n\tTo be sure of originality always buy Govt. Lab Certified Gemstones.<b>Q. Who Can wear Panna Gemstone?</b>\n\tMercury is giving good results according to your horoscope, you should wear Panna Gemstone.\n\tYou are a business man and want to get success in your business; you can wear an Emerald as Mercury represents the business activities.\n\tif someone offer you Panna gemstone in cheap price then be careful to buy this Panna gemstone if you are sure then this stone is ok at your end then you have to taste your Panna gemstone in Government Certified Lab.\n\tThis planet also governs the common sense of a person. Powerful Mercury blesses the person with success in life.\n\tPanna gemstone ensures confidence and enhances positive energy of Mercury.\n\tMercury is the planet of communication, business, education, intelligence and intuition.\n\tIt is also a well-known fact that if one ties a Panna gemstone to a Lady\'s waist during delivery, delivery will be normal and without pain.\n\n<b>Q. How to wear panna stone ring?</b>\n\tPanna Stone is the Gemstone of planet Mercury. Its ruling God is Lord Ganesha.\n\tBefore wearing an Panna Ring it should be immersed in Pure Desi Ghee on a Tuesday evening. It should be left there for at least 8 hours. After this on Wednesday morning it should be taken out from the Ghee and washed with Gangajal mixed with saffron.\n\tThen wear this Panna Stone within 2 hours of sunrise after chanting Om! Braam Breem Broom Sah Budhai Namah 108 times. Emerald should be worn in Right Hand Little finger or as a pendant. In certain cases it is also suggested to be worn as a waist band."),
        ],
      ),
    );
  }
}
