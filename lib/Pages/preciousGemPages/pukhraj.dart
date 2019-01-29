import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';


class PukhrajPage extends StatefulWidget {
  @override
  _PukhrajPageState createState() => _PukhrajPageState();
}

class _PukhrajPageState extends State<PukhrajPage> {
  int v1;
  var _controller = ScrollController();

  void showPrice1(int v1, BuildContext context) {
    Map<int, List<int>> values = {
      1: [31000,
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
      2: [1800, 40500, 58500, 76500, 94500, 112500, 13050, 148500, 166500, 184500, 202500],
      3: [1100, 2475, 3575, 4675, 5775, 6875, 7975, 9075, 10175, 11275, 12375],
      4: [8100,
        18225,
        26325,
        34425,
        42525,
        50625,
        58725,
        66825,
        74925,
        83025,
        91125],
      5: [4100,
        9225,
        13325,
        17425,
        21525,
        25625,
        29725,
        33825,
        37925,
        42025,
        46125],
      6: [2100,
        4725,
        6825,
        8925,
        11025,
        13125,
        15225,
        17325,
        19425,
        21525,
        23625],
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
                   Text(
                        "CEYLON PUKHRAJ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                  Text("Rs ${values[v1][0]} per ratti"),
                  Text(""),
                  Text("2.25 ratti Rs ${values[v1][1]}/-"),
                  Text("3.25 ratti Rs ${values[v1][2]}/-"),
                  Text("4.25 ratti Rs ${values[v1][3]}/-"),
                  Text("5.25 ratti Rs ${values[v1][4]}/-"),
                  Text("6.25 ratti Rs ${values[v1][5]}/-"),
                  Text("7.25 ratti Rs ${values[v1][6]}/-"),
                  Text("8.25 ratti Rs ${values[v1][7]}/-"),
                  Text("9.25 ratti Rs ${values[v1][8]}/-"),
                  Text("10.25 ratti Rs ${values[v1][9]}/-"),
                  Text("11.25 ratti Rs ${values[v1][10]}/-"),
                ],
              ),
            ),
          );
        });
  }

  void showPrice2(int v1, BuildContext context) {
    Map<int, List<int>> values = {
      1: [5100, 11425, 16575, 21675, 26775, 31875, 36975, 42075, 47175, 52275, 57375],
      2: [4100,
        9225,
        13325,
        17425,
        21525,
        25625,
        29725,
        33825,
        37925,
        42025,
        46125],
      3: [3100,
        6975,
        10075,
        13175,
        16275,
        19375,
        22475,
        25575,
        28675,
        31775,
        34875],
      4: [2100,
        4725,
        6825,
        8925,
        11025,
        13125,
        15225,
        17325,
        19425,
        21525,
        23625],
      5: [1100, 2475, 3575, 4675, 5775, 6875, 7975, 9075, 10175, 11275, 12375],
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
                  Text(
                        "BANKOK PUKHRAJ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                  Text("Rs ${values[v1][0]} per ratti"),
                  Text(""),
                  Text("2.25 ratti Rs ${values[v1][1]}/-"),
                  Text("3.25 ratti Rs ${values[v1][2]}/-"),
                  Text("4.25 ratti Rs ${values[v1][3]}/-"),
                  Text("5.25 ratti Rs ${values[v1][4]}/-"),
                  Text("6.25 ratti Rs ${values[v1][5]}/-"),
                  Text("7.25 ratti Rs ${values[v1][6]}/-"),
                  Text("8.25 ratti Rs ${values[v1][7]}/-"),
                  Text("9.25 ratti Rs ${values[v1][8]}/-"),
                  Text("10.25 ratti Rs ${values[v1][9]}/-"),
                  Text("11.25 ratti Rs ${values[v1][10]}/-"),
                ],
              ),
            ),
          );
        });
  }

  Widget bottomData(int x) {
    if (x == 1) {
      return Column(
        children: <Widget>[
          Text(
              "Neelam (neela Pukhraj) : At Gem Selections we have a wide range of Neelam Stone i.e., Neelam. The price ranges from Rs. 450/ Ratti to Rs. 51000/ Ratti.\n"),
              Text("Beware:\n", style: TextStyle(fontWeight: FontWeight.bold),),
              Text("Presently market is full of Cobalt filled Neelam Stones that are Blue, Transparent and very good looking. These are being sold with certificates from non existing Labs.\n\nNeelam Stone that is without feather like inclusions is actually filled with glass or cobalt. The molecular structure of these Neelam Stones is altered with these additions. These changes make these Gemstones neutral as far as Astrological effects are concerned.\n\nWhen you are buying a Gemstone for Astrological Effects, make sure, that is it not Dyed, Filled or otherwise altered or it will be just a jewel which will have nil Astrological Effect.\n\nYou get pure Neelam Stone without an iota of doubt at: "),
              Text("\n\t\tGem Selections,\n\t\tShop No.8,\n\t\tA-3 DDA Market,\n\t\t(Near St. Marks School)\n\t\tJanakpuri,\n\t\tNew Delhi - 110058\n", style: TextStyle(fontWeight: FontWeight.bold),),
              Text("You can have a look at this collection and decide what you want as per your requirement and budget.\nWhat ever you buy at Gem Selections comes with a Govt. Lab Certificate, Bill and Guarantee of purity and originality from our company.\nNeelam (Neela pukhraj) is blue in colored Gemstone. It is a cold Gemstone and represents Saturn. It should be worn in silver or gold on the second finger of right hand. Blue Neelam removes evil effects of Saturn. It is said to have magical power. Blue Sapphire (Neelam stone) is believed to take a person to the heights that he or she has never imagined.\n"),
              Text("Benefits of Wearing Neelam Stone", style: TextStyle(fontWeight: FontWeight.bold),),
              Text("\t\tWearing a blue sapphire protects against danger, travel issues, terror, thieves, accidents.\n\t\tIt ensures the general health and strength of the knees, legs and hair of its user.\n\t\tPeople in business of export and import, transport product, vehicles , production of minerals , Iron ore , spare components, petroleum , Iron and Steel or Similar Businesses associated with Planet Saturn ought to undoubtedly wear a Blue Sapphire or Neelam gem because it can offer them Substantial Business growth and new Opportunities.\n\nBlue sapphire is that the birthstone for the month of September. Blue Sapphire is additionally counseled for fifth, twenty third and forty fifth centenary.\n\nIf the world Saturn/ Sani happens to be weak or Delapilated ( neech ) in keeping with your horoscope, then the gem blue sapphire is your good gem for you.\n\nBlue Sapphire helps scale back the malevolent effects of Saturn (Shani) in one’s horoscope.\n"),
              Text("When should Neelam Stone be worn", style: TextStyle(fontWeight: FontWeight.bold),),
              Text("\tIf the planet Saturn/Sani happens to be your weak friend according to your horoscope, then the gemstone blue sapphire is your perfect gemstone. You can also wear blue sapphire if you encounter one or more of the following problems related to your mind and body.\n\nThe beautiful \'Blue Sapphire\', is regarded as the \'Stone of the Stones\' and is considered to give peace of mind, tranquility, happiness and spiritual enlightenment.\n"),
              Text("Neelam Stone Mantra", style: TextStyle(fontWeight: FontWeight.bold),),
              Text("\tOn any auspicious Saturday, drop in the ring of this stone in a copper bowl filled with water. Bring the ring out, and offer that water in the roots of any Peepal tree. Around two hours before sunset, wear ring in the middle finger of your left hand while devotedly chanting the associated Mantra of “Om Aim Hreem Shaneharaya Namah\". Conclude the process by paying devoted prayers to Lord Saturn. Donate black urad, salt, tea leaves, soap, mustard oil, and money on the roots of any Peepal tree, in as much quantity as you want.\n\nGoverning Planet Saturn\n\nSanskrit Names of Blue Sapphire Neelam, Blue sapphire, Nila-mani, Blue jewel, Indra-nilam, Royal blue gem, Sani-ratna, Saturn\'s gem.\n\nRuling Day Saturday\n\nGoverning Number 8\n\nGoverning Sign Capricorn and Aquarius\n"),
              Text("Shani Mantra \"Aum Shan Shanaishcharaay namah\"", style: TextStyle(fontWeight: FontWeight.bold),),
              Text("to be enchanted 108 times at the time of wearing a Blue Sapphire - Neelam.\n\nSigns of well-placed Saturn in the Chart Happiness, Good children and grandchildren, Wealth, name, fame, success and honor, wisdom, and longevity.\n\nSigns of an afflicted Saturn in the Chart Native will not be a moderate but an extremist. Over generous, extravagant, lavish.\n\nOver optimism, false hopes, carelessness, debts, disputes, failure in speculation, gambling, pressure from creditors, worry through children, childlessness. Vanity, default, infamy, gluttony and unusual growth.\n\nAreas of Occurrence of Blue Sapphire - Neelam Sri Lanka, Thailand, Cambodia (Pailin), Burma, Kashmir\n"),
              Text("Evil Effects of ShaniDosha", style: TextStyle(fontWeight: FontWeight.bold),),
              Text("\n\tThere are various evil effects due to ShaniDosha and they are:-\n\t\tProblems occur with the partners like misunderstanding, unhappy married life, divorce etc.\n\t\tProblems in conceiving child\n\t\tThe health of the children is also not proper\n\t\tObstructions in education and career\n\t\tDisharmony between the family members\n\t\tThe life of the partner in stake\n"),
              Text("How to do ShaniDoshaNivaranPooja", style: TextStyle(fontWeight: FontWeight.bold),),
              Text("\tDevotee doing Shanipooja, must first take the posture and then must offer water to the feet of Lord Shani. The water offered to Lord Shani must be drunken by the devotee. Then water is offered for the bath of god and black clothes are being offered to Lord Shani. Offerings are made to Lord Shani made up of camphor or incense. Diyas in sesame seeds are being lit in front of the Lord. Prayer or mantra is being enchanted in the devotion to Lord Shani. Doantion of black til or rice is being made to needy people. Fast is also being kept by many people and is broke after sunset by taking rice mixed with black urad dal. Black til can also be used to break fast.\n\nOm Thryambakam Yajamahe Sugandhim PushtiVardhanam Urvarukamiva Bandhanath Mrithyor Mooshiyamamrith.\n"),
              Text("Navagraha Mantra", style: TextStyle(fontWeight: FontWeight.bold),),
              Text("Chanting of \"Eka sloka Navagraha Stotram\"\n\n"),
              Text("Donation ( Daanam)", style: TextStyle(fontWeight: FontWeight.bold),),
              Text("\tDuring Shani dasha period try to do donation of the following at a temple or to poor people:\n\n\n\t\tBlack cloth, Gingely Oil,Blanket,Iron Articles,Black Cow,Buffallo,Black Gram (Urudh Dal)\n\t\tProvide “Anna Danam” (free food) on Saturdays to Orphanage or Beggars.\n"),
              Text("Shani Temple Darshan", style: TextStyle(fontWeight: FontWeight.bold),),
              Text("Visiting Navagraha temple and doing shani pooja on Saturday is one of the most commonly suggested remedy during Shani Dasha.If possible visit the following famous and powerful shani temples :\n\nShani Shingnapur ( in Maharashtra for North India) Sabarimala Ayyappa Temple ( in Kerala for South India )\n"),
              Text("Shiva Bhajan", style: TextStyle(fontWeight: FontWeight.bold),),
              Text("\nNothing is complete with out the prayer for Lord Shiva.Shiva when pleased through prayers can protect you from Graha Dosha.Read my post on Lord Shiva here.\n\nMake it a point to recite this short shani mantra for 108 times every day.If not having time, atleast do 8 times daily to tide through this testing period in life.\n\nNeelanjana Samabhasam Raviputhram Yamagrajam Chaya Marthanda Sambhootham Tham Namamy Shanaishyaram.\n"),
              Text("Hanuman Chalisa for Shani Nivaran", style: TextStyle(fontWeight: FontWeight.bold),),
              Text("\nHanuman is supposed to be \"Chiran jeevi\" or the one with infinite life on earth.While he was on his way to Lanka to find Seetha Devi , he has seen “Navagrahas” being captured and tied together by Ravana.Navagrahas knew that only Anjaneya has the power to release them from the clutches of evil king Ravana.They worshipped Hanuman and requested him to free them from lanka.Hanuman immediately realised the presence of Shani bhagavan amongst the Navagrahas and asked him \"If i release you , you will look at me and i will be under your spell for 7.5 years\".For this Shani replied that he will not do that and even spare those who worship Anjaneya from the ill effects of shani dasha.So recite \"Hanuman Chalisa\" on Tuesday,Thursday and Saturday.If not possible on all 3 days atleast on Tuesday.Visit Hanuman temple on every Saturday during your Shani Dasha period.\n\nIt is imperative that a blue sapphire or neelam be worn after consultation. Before asking you to wear a blue sapphire or neelam the person recommending it to you will also ask you to test it. Let us discuss how neelam can be tested before actually wearing it.\n\nA neelam stone can be worn in ear rings, a finger ring or even as a pendant in a chain. We have already discussed how to recognize a genuine neelam and the points to watch out for while buying a neelam.\n\nWearing a blue sapphire protects against danger, travel problems, terror, thieves, accidents.     \n\nIt can cause financial fortunes to change for the better, help with a person\'s career, and make the wearer rich. It can free one of mental anxiety.\n\nIt helps make one detached, and protects against envy. It can be worn for good luck and for protection against evil spirits.\n\nNeelam stone\'s are found in India, Burma, Ceylon, Thailand, Vietnam, Australia, Brazil and Africa. From the gemstone mines, the raw crystals are first taken to the cutting-centres where they are turned into sparkling gemstones by skilled hands.\n\nThe most valuable are genuine Kashmir stones. Burmese sapphires are valued almost as highly, and then come the sapphires from Ceylon. The possibility of the gemstone\'s having undergone some treatment or other is also a factor in determining the price,\n\nThe fact that this magnificent gemstone also comes in a large number of other colours was known for a long time almost only to insiders. In the trade, sapphires which are not blue are referred to as \'fancies\'.\n\nThe presence of small amounts of other elements, especially iron and chrome, are responsible for the colouring, turning a crystal that was basically white into a blue, red, yellow, pink or greenish sapphire. However, this does not mean that every corundum is also a sapphire.\n\nThus the blue of the sapphire has become a colour which fits in with everything that is constant and reliable. That is one of the reasons why women in many countries wish for a sapphire ring on their engagement. The sapphire symbolises loyalty, but at the same time it gives expression to people\'s love and longing.")
        ],
      );
    }
    if (x == 2) {
      return Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 10.0),
            height: 150.0,
            child: Image.network(
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fsrilankan-pukhraj.jpg?alt=media"),
          ),
          Text(
              "Yellow Sapphire\n", style: TextStyle(fontWeight: FontWeight.bold),),
              Text(" At Gem Selections we have a range of Yellow Sapphire i.e., Pukhraj from Rs. 2100/ Rt to Rs. 31000/ Rt.\n\nYou can have a look at these collections and decide what you want as per your requirement and budget.\n\nWhat ever you buy comes with a Lab Certificate, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna.\n\nIt is light Yellow Sapphirein color. It is cold gem stone and is for Jupiter the largest planet in the solar system. It should be worn in gold on the first finger of right hand on Thursday. Yellow sapphire / Pukhraj worn for knowledge, wisdom, virtue, fortune, justice, education, future, religion, philosophy, devotion, children, distant travel, spirituality, truthfulness, prosperity and charity. It is expensive stone and denotes righteousness, piety and truthfulness.\n"),
              Text("Yellow Sapphire Qualities\n", style: TextStyle(fontWeight: FontWeight.bold),),
              Text("\tA. heaviness or high specific gravity that can be felt when placed on the palm\n\tB. rich velvety luster that can be seen with the naked eye\n\tC. transparency, which makes it clean and pure\n\tE. uniformity of color, without any layers\n\tF. solidity, hardness\n\nYellow Sapphire popularity is not based on color alone. Its hardness of 9 places it next to Diamond (10), making it an excellent choice for jewelry worn daily. It is frequently featured in engagement rings. Ceylon (Sri Lanka) positively produces the finest all-round Sapphires in the world today. The very name commands a premium, and Ceylon Gems have constantly increased in price. We have always been on top of the Gem market in Ceylon and stay up with current prices and new discoveries.")
        ],
      );
    }
    if (x == 3) {
      return Column(
        children: <Widget>[
          Text(
              "     Bangkok Pukhraj is the gemstone ruled by Jupiter.\n\nBangkok Yellow Sapphire to Improved Blood Circulation – A substitute positive effect of the gemstone on prosperity is that it backings blood scrambling in the body. Bangkok yellow sapphire is believed to have its birth stone month as July among the Hindu.\n\nWe are engaged in trading of yellow sapphire which are well polished and provided with a sound finishing touch.")
        ],
      );
    }
    if (x == 4) {
      return Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 10.0),
            height: 150.0,
            child: Image.network(
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fpeela-pukhraj-2.jpg?alt=media"),
          ),
          Text(
              "  Treated Pukhraj is the gemstone ruled by Jupiter.\n\nA flawless Yellow Sapphire with a deep Yellow Colour will command a high price in the market and most of the Astrologers/ Pundits also recommend a Pukhraj/ Yellow Sapphire that is without inclusions and have a Deep Yellow Colour. Taking advantage of the ignorance of the people – most of the Jewellers, Astrologers and Pundits sell TREATED Yellow Sapphire/ Pukhraj and earn huge profits by misguiding the trusting customers.\n\nThe process of Treating any Gemstone involves heating it to a very high temperature and then infusing artificial colour in them. This process transforms a low grade Gemstone into a good looking piece which can fetch a good price in the market. The Astrological value of these Gemstones is Zero and ethical seller must inform his customer about the fact that the Gemstone is not in its true form but is treated to enhance its colour and transparency.\n\n "),
              Text("At Gem Selections, Janakpuri, New Delhi", style: TextStyle(fontWeight: FontWeight.bold),),
              Text("we have the entire range of Treated Yellow Sapphires i.e. Treated Pukhraj Stone along with the complete range of Natural Yellow Sapphires i.e., Natural Pukhraj Stone but we always inform the customer that a Gemstone has passed through a process for enhancement of its colour and transperancy.\n\nThe readers must make sure while buying a Yellow Sapphire that it is a Natural Yellow Sapphire i.e. Natural Pukhraj Stone and not a Treated Piece.\n"),
              Text("\"WE STRONGLY RECOMMEND THAT YOU MAY BUY A GEMSTONE FROM ANYWHERE BUT BEFORE FINALIZING THIS IMPORTANT DECISION HAVE A LOOK AT OUR COLLECTION AND THE DIFFERENCE BETWEEN A TREATED AND A NATURAL GEMSTONE.\"", style: TextStyle(fontWeight: FontWeight.bold),),
              Text("\nFor children recomended ratti 2 to 2.5, for minor 3 to 4 ratti and for adults 5 to 12 ratti. Ring should be made of only Gold or Silver. Ring should be worn only on Thursday 4 to 7 p.m. and Ring should be worn in Tarjani or Anamica finger.\n\n"),
              Text("We have following prices for different quality treated pukhraj available:", style: TextStyle(fontWeight: FontWeight.bold),),
              Text("\n\t\t 1. Rs. 500 per Ratti\n\t\t 2. Rs. 1100 per Ratti\n\t\t 3. Rs. 2100 per Ratti\n\t\t 4. Rs. 3100 per Ratti\n\t\t 5. Rs.15000 per Ratti\n\nAnd weight available from "),
              Text("\n2.25 ratti to 11.25 ratti", style: TextStyle(fontWeight: FontWeight.bold),),
              Text("\nCome and have a look at collection.\n"),
              Text("Get Our Address from Visit Us section from Home Page.", style: TextStyle(fontWeight: FontWeight.bold),)
        ],
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yellow Sapphire"),
        backgroundColor: Colors.yellow[600],
      ),
      body: ListView(
        controller: _controller,
        children: <Widget>[
         
          Container(
            height: 150.0,
            padding: EdgeInsets.all(30.0),
            child: FadeInImage(
              placeholder: AssetImage(placeholder),
              image: NetworkImage(
                  "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fpeela-pukhraj.jpg?alt=media"),
            ),
          ),
         Text(
            "PEELA PUKHRAJ | YELLOW SAPPHIRE",
            style: TextStyle(color: Colors.yellow[600], fontSize: 20.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
         
           Container(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            child: GestureDetector(
              child: FadeInImage(
                placeholder: AssetImage(placeholder),
                image: NetworkImage(
                    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/YoutubeImages%2Fyellow_sapphire.jpeg?alt=media&token=e30b0b29-e015-4104-8ab3-92018e740ae7"),
              ),
              onTap: () => LaunchYoutube(precious_you_link[2]),
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
            margin: EdgeInsets.symmetric(horizontal: 7.0),
            child: Text(
              " Types",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.yellow[600]),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0),
          ),
          Card(
                      child: DropdownButtonHideUnderline(
                                              child: DropdownButton(
              hint: Text("  Select One"),
              items: [
                DropdownMenuItem<int>(
                  child: Text("Pukhraj Info"),
                  value: 1,
                ),
                DropdownMenuItem<int>(
                  child: Text("Ceylon Info"),
                  value: 2,
                ),
                DropdownMenuItem<int>(
                  child: Text("Bankock Info"),
                  value: 3,
                ),
                DropdownMenuItem<int>(
                  child: Text("Treated Pukhraj"),
                  value: 4,
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

          Container(
            padding: EdgeInsets.only(top: 20.0),
          ),

          Text("  Select Qulaity to know price", style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.yellow[600]),),
          Builder(
            builder: (context) => Card( child:DropdownButtonHideUnderline(
            child: DropdownButton(
              hint: Text("  Ceylon Pukhraj"),
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
                  ],
                  onChanged: (int x) {
                    showPrice1(x, context);
                  },
                ),
            ),
            ),
          ),
          Builder(
            builder: (context) => Card(
            child: DropdownButtonHideUnderline(
            child: DropdownButton(
              hint: Text("  Bankok Pukhraj"),
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
                  ],
                  onChanged: (int x) {
                    showPrice2(x, context);
                  },
                ),
            ),
          ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
          ),
          Container(
             padding: EdgeInsets.symmetric(horizontal: 7.0),
            child: bottomData(v1)),
            Padding(
            padding: EdgeInsets.only(bottom: 10.0),
          ),
        ],
      ),
    );
  }
}
